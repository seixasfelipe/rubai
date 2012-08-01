require 'rubygems'
require 'rack'

run lambda {|env|
  if env["PATH_INFO"] == "/"
    path = "index.html"
  else
    path = "./#{env["PATH_INFO"]}"
  end

  unless File.file?(path)
    return [404, {"Content-Type" => "text/html"}, ["<html><body>NO!</body></html>"] ]
  end

  [200, {"Content-Type" => "text/html"}, [File.read(path)] ]
}
