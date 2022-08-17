# Write your code here.
require "pry"
def badge_maker(name)
    "Hello, my name is #{name}."
end

def names
    ["Arel", "Carol"]
end

def batch_badge_creator(names)
    names.map {|m| "Hello, my name is #{m}."}
end

def assign_rooms(names)
    rooms = []
    names.each.with_index(1) do |name, idx|
        rooms << "Hello, #{name}! You\'ll be assigned to room #{idx}!"
    end
    rooms
end

def printer(names)
    batch_badge_creator(names).each do |name|
        puts name
    end
    assign_rooms(names).each do |room|
        puts room
    end
end

printer(names)