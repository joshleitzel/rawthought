# Raw Thought: The Weblog of Aaron Swartz in Markdown, PDF, ePub, and Mobi
This repo is a collection of the late Aaron Swartz’s [blog posts](http://aaronsw.com/weblog). The contents are available in two formats:

- First, each post is available individually in Markdown, HTML, and PDF. These files are found in the posts’ subdirectories under the `posts/` directory. For example, the post “Change of Course” from 7/16/05 has the following files: [Markdown](https://github.com/joshleitzel/rawthought/blob/master/posts/2005-07-16-newethics/newethics.md), [HTML](https://github.com/joshleitzel/rawthought/blob/master/posts/2005-07-16-newethics/newethics.html), [PDF](https://github.com/joshleitzel/rawthought/blob/master/posts/2005-07-16-newethics/newethics.pdf?raw=true)
- Second, each post has been concatenated and nicely formatted into one big jumbo file, allowing you to read them as a book if you wish. They are in order from oldest to newest. That file is available in Markdown, PDF, ePub, and Mobi; links are below.

## Download links
Download Aaron’s blog as one file: [Markdown](https://raw.github.com/joshleitzel/rawthought/master/rawthought.md) | [PDF](https://github.com/joshleitzel/rawthought/raw/master/rawthought.pdf) | [ePub](https://github.com/joshleitzel/rawthought/raw/master/rawthought.epub) | [Mobi](https://github.com/joshleitzel/rawthought/raw/master/rawthought.mobi)

Note: The Kindle (.mobi) version was created using Amazon’s [KindleGen](http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765211) tool using the ePub as a source. I checked it using [Kindle Previewer](http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765261) and it looks mostly okay, but apologies if it is worse than the other versions.

## A Note on Production & Errata
Please note that, in the interest of getting this out there, most of these files were generated automatically with the use of Ruby scripts. All effort has been made to correct glaringly obvious formatting errors, but of course some will persist. For example, some images may be broken or malformatted in the output formats.

As ever, many eyes are better than one. Sit down and read through five random posts. Compare them to the original blog entries on the website (original links are included with each post); if you find errors, please fix them (in the Markdown in the post’s subdirectory) and submit a pull request. Alternatively, you can email me at joshleitzel@gmail.com.

## Contributing & Development
I wrote a set of Ruby scripts to fetch the data, parse it, and convert it into the various formats. The scripts are included, but are a bit messy right now. I hope to get time to clean them up a bit to make it easier for others to use. I also used the excellent [Pandoc](http://johnmacfarlane.net/pandoc/) to convert between formats, so you will need to have that installed on your system if you wish to do the same.

Happy reading! This is my small [#pdftribute](http://pdftribute.net/) to Aaron.
