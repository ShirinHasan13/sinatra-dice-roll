require "sinatra"
get("/") do
"Hello world"
end
get("/zebra")do
"We must add a route for each path we support"
end
require "sinatra/reloader"
get("/giraffe")do
"Hopefully this shows up without having to restart the server"
end
