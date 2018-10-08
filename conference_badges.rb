def badge_maker(name) 
  "Hello, my name is #{name}."
end


def batch_badge_creator(speakers) 
  badge_message = []
  speakers.each do |item|
    badge_message << badge_maker(item)
  end
  badge_message
end

def assign_rooms(speakers)
  room_assignments = []
  rooms = 1..7
  speakers.each_with_index{|item,index| room_assignments << "Hello, #{item}! You'll be assigned to room #{index + 1}!"}
  room_assignments
end

def printer(item)
  batch_badge_creator(item).each do |items|
    puts assign_rooms(item)
  end
end 