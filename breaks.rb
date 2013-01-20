files = `find . -name '*_latex.md'`.split("\n")

files.each do |file|
  File.open(file, 'r') do |file2|
    contents = file2.readlines.join
    contents += "\\newpage\n\\pagebreak"

    File.open(file, 'w') { |file3| file3.write(contents) }
  end
end
