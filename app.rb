require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll") do
  @num = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i
  @link = "process_roll?num=#{@num}&sides=#{@sides}"

  @rolls = []
  @num.times do
  
    @rolls.push(rand(1..@sides))
  end
  erb(:process_url)
end
