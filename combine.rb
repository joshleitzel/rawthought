`mkdir -p combined`

posts = `ls posts`.split("\n")
filenames = `find posts -name '*.md'`.split("\n")

regular_md = []
latex_md = ['combined/title_page.md']

filenames.each do |filename|
  if filename =~ /latex/
    latex_md << filename
  else
    regular_md << filename
  end
end

regular_md = regular_md.join(' ')
latex_md = latex_md.join(' ')

posts.each do |post|
  # copy images to combined dir
  images = `find posts/#{post} -name 'image*'`.split("\n")
  images.each do |image|
    `cp #{image} combined/.`
  end
end

non_html_md_content = ''
html_md_content = ''

regular_md.split(' ').each do |file|
  File.open(file, 'r') do |file2|
    contents = file2.readlines.join
    contents = contents + "\n\n"
    
    non_html_md_content += contents
    html_md_content += contents.gsub(/===\n/, "===\n<center>").gsub(/\)\n\n\*/, ")\n\n<\/center>*")
  end
end

File.open('combined/combined_html.md', 'w') do |file2|
  file2.write(html_md_content)
end
File.open('combined/combined.md', 'w') do |file2|
  file2.write(non_html_md_content)
end

#{}`cat #{regular_md} > combined/combined.md`
`cat #{latex_md} > combined/combined_latex.md`
Dir.chdir('combined') do
  `pandoc combined_latex.md -o combined.pdf --latex-engine=xelatex`
  `pandoc --epub-metadata=metadata.xml --epub-stylesheet=epub.css title.txt combined_html.md -o combined.epub`
end

`mv combined/combined.epub rawthought.epub`
`mv combined/combined.md rawthought.md`
`mv combined/combined.pdf rawthought.pdf`
