files = `find . -name '*_latex.md'`

files = files.split("\n")

files.each do |file|
  split = file.split '/'
  dir = split[0..split.count - 2].join('/')
  name = split.last.split('_latex.md')[0]

  Dir.chdir(dir) do
    `pandoc #{name}_latex.md -o #{name}.pdf --latex-engine=xelatex`
  end
end

