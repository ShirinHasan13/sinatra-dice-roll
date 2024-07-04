require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


get("/") do
erb(:elephant)
end

get("/zebra")do
"We must add a route for each path we support"
end

get("/giraffe")do
"Hopefully this shows up without having to restart the server"
end


require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


get("/") do
erb(:elephant)
end

get("/zebra")do
"We must add a route for each path we support"
end

get("/giraffe")do
"Hopefully this shows up without having to restart the server"
end


get("/dice/2/6") do
  @die=rand(1..6)
	
  @outcome = "You rolled a #{@die}."
	
erb(:two_six)

end
get("/dice/2/10")do
@die=rand(1..10)
@outcome = "You rolled a #{@die}."

erb(:two_ten)

end
get("/dice/1/20")do
@die=rand(1..20)

@outcome="You rolled a #{@die}." 
erb(:one_twenty)
end

get("/dice/5/4")do
@die=rand(1..4)
@outcome="You rolled a #{@die}."
erb(:five_four)
end

get("/dice/2/6")do
@rolls = []
2.times do
  die = rand(1..6)
  @rolls.push(die) 
end
erb(:two_six)
end


get("/dice/2/10")do
@die=rand(1..10)
@outcome = "You rolled a #{@die}."

erb(:two_ten)

end
get("/dice/1/20")do
@die=rand(1..20)

@outcome="You rolled a #{@die}." 
erb(:one_twenty)
end

get("/dice/5/4")do
@die=rand(1..4)
@outcome="You rolled a #{@die}."
erb(:five_four)
end

get("/dice/100/6")do
@rolls = []
100.times do
  die = rand(1..6)
  @rolls.push(die)
end
erb(:one_hundered_six)
end
