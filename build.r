#all the rmd files to be built
files <- dir(pattern = 'rmd$', ignore.case = TRUE)

#render for the web
sapply(files, function(f) rmarkdown::render(f, output_dir = 'public'))
#render for GitHub
sapply(files, function(f)
  rmarkdown::render(f, 
                    output_format = rmarkdown::github_document(html_preview = FALSE),
                    output_dir = 'view_on_github'))

#make an index on 
webpages <- dir('public', pattern = 'html$')
webpages <- webpages[webpages != 'index.html']

metadata <- t(as.data.frame(sapply(files, 
                                   function(f) rmarkdown::yaml_front_matter(f))))

docs <- as.data.frame(cbind(webpages, metadata))

index_html <- paste0('<!DOCTYPE html>
<html>
<head>
<title>Contents</title>
<style>
.content {
  max-width: 500px;
  margin: auto;
}
</style>
</head>
<body>
<div class="content">
<h1>Contents</h1>
<ul>',
paste0('<li><h2><a href="', 
       docs[,'webpages'], '">', 
       docs$title,'</a> ', 
       docs$author, ', ',
       docs$date,'</h2></li>',
       collapse = ''),
'</ul>
</div>
</body>
</html>'
)

writeChar(index_html, 'public/index.html')

