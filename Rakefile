# Shamelessly copied from https://github.com/hokaccha/webtech-walker/blob/6de30a22a5ea0dda80c70ba4d2f3ba8b0c403cd6/Rakefile

desc 'setup'
task :setup do
  sh 'rm -rf  _deploy'
  sh 'git clone -b gh-pages git@rawthought:harupong/rawthought.git _deploy'
end

desc 'deploy to production'
task :deploy do
  sh 'jekyll build'
  sh 'rm -rf _deploy/*'
  sh 'cp -R _site/* _deploy'
  cd '_deploy' do
    sh 'git add -A'
    sh 'git commit -v'
    sh 'git push origin gh-pages'
  end
end

desc 'create new post'
task :post do
  require 'date'
  content = <<EOF
---
layout: posts
title: 
tags: 
---
EOF
  print 'title: '
  title = STDIN.gets.strip

  filepath = "src/_posts/#{Date.today.to_s}-#{title}.md"

  raise "#{filepath} is exists" if File.exist?(filepath)

  File.write(filepath, content)
  puts "create #{filepath}"
end

desc 'run dev server'
task 'server' do
  sh 'bundle exec jekyll --auto --server --limit_posts 3'
end
