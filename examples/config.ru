require 'rubygems'
require 'rack'

run lambda {|env|

  if env["PATH_INFO"] == "/"
    path = "index.html"
  else
    path = "./#{env["PATH_INFO"]}"
  end

  p "Path is #{path}"

  unless File.file?(path)
    return [404, {"Content-Type" => "text/html"}, ["<html><body>NO!</body></html>"] ]
  end

  fileExt = File.extname(path)
  p "Extension is #{fileExt}"

  contentTypes = {
  	:css => "text/css",
  	:html => "text/html",
  	:js => "text/javascript",
  	:png => "image/png",
  	:jpg => "image/jpeg",
  	:gif => "image/gif"
  }

  contentType = contentTypes[fileExt[1..-1].to_sym]
  p "Content-Type is #{contentType}"

  [200, {"Content-Type" => contentType}, [File.read(path)] ]
}
