# vim: set syntax=ruby

require 'nokogiri'
require 'open-uri'
require 'image_downloader'

fullarchive_html = Nokogiri::HTML(open('http://www.aaronsw.com/weblog/fullarchive').read)

count = 0

fullarchive_html.css('.content p > a').each do |link|
  #count = count + 1
  if count > 100 
    break
  end

  name = link['href']

  unless name == 'godismydm'
    break
  end

  full_href = "http://www.aaronsw.com/weblog/#{name}"

  begin
    document = Nokogiri::HTML(open(full_href).read)

    html = document.css('.content')

    posted = html.css('.posted').first.content
    date = Date.parse(posted)
    time = Time.new(date.year, date.month, date.day)

    post_dir = "posts/#{time.strftime('%Y-%m-%d')}-#{name}"
    markdown_path = "#{post_dir}/#{name}.md"
    latex_markdown_path = "#{post_dir}/#{name}_latex.md"
    html_path = "#{post_dir}/#{name}.html"
    pdf_path = "#{post_dir}/#{name}.pdf"

    # Create a directory for this name
    `mkdir -p #{post_dir}`

    posted_node = Nokogiri::XML::Node.new('div', document)
    posted_node.content = posted

    source_node = Nokogiri::XML::Node.new('a', document)
    source_node.content = 'Original link'
    source_node['href'] = full_href

    # Replace any local links with remote links
    links = html.css('a')
    links.each do |link|
      href = link['href']
      unless href[0..3] == 'http' or href[0..2] == 'www' or href[0] == '@' or href[0] == '#' or href[0..5] == 'mailto'
        puts "Replacing link #{href}..."
        if href[0] == '/'
          link['href'] = "http://aaronsw.com#{href}"
        else
          link['href'] = "http://aaronsw.com/weblog/#{href}"
        end
        puts "... with #{link['href']} in #{name}"
      end
    end

    # Download any images in this post
    text_to_append = ''
    image_counter = 0
    images = html.css('img').each do |image|
      image_counter = image_counter + 1
      image_url = image['src']

      puts "Fetching image #{image_url}..."

      #ext = image_url.split('.').last
      
      image_name = "image#{image_counter}_#{name}"
      image_name_with_ext = "#{image_name}.jpg"

      unless image_url[0..3] == 'http'
        image_url = "http://aaronsw.com/weblog/#{image_url}"
      end

      open(image_url) do |f| 
        File.open("#{post_dir}/#{image_name_with_ext}", 'wb') do |file|
          file.puts f.read
        end
      end

      # update the link in the markdown
      image['src'] = image_name

      text_to_append += "\n[#{image_name}]: #{image_name_with_ext}"

      puts "Image #{image_name} processed for #{name}"
    end

    html.css('.posted').each do |node|
      node.remove
    end
    html.css('h1').after(Nokogiri::XML::Node.new('hr', document))
    html.css('h1').after(source_node)
    html.css('h1').after(posted_node)
    
    html.css('#comments_body').each do |node|
      node.remove
    end

    # remove 'follow me on twitter' node
    html.css('p').last.remove

    File.open(html_path, 'w') { |file| file.write(html) }

    # add latex-style stuff for centering

    title = html.css('h1').first.content

    original_link_md = "[Original link](#{full_href})"

    text_to_add = <<-TEXT

\\begin{centering}

 {\\Large \\textbf{#{title}}}

 {\\large #{posted}}

 {\\footnotesize \\href{#{full_href}}{Original link}}

\\end{centering}

TEXT

    `pandoc -f html -o #{markdown_path} -t markdown #{html_path}`

    File.open(markdown_path, 'r') do |file|
      contents = file.readlines

      new_contents = contents.join
      new_contents += text_to_append
      
      File.open(markdown_path, 'w') { |file2| file2.write(new_contents) }
    end

    File.open(markdown_path, 'r') do |file|
      contents = file.readlines

      new_contents = text_to_add
      new_contents += contents[6..contents.count].join
      
      File.open(latex_markdown_path, 'w') { |file2| file2.write(new_contents) }
    end

   rescue Exception => e
     puts "Error w/ #{name} - #{link.content}"
     puts e
     puts e.backtrace
   end
end

exit 0
