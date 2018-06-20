def badge_maker(name)
 "Hello, my name is #{name}."
end

def batch_badge_creator(guest_list)
  all_messages = []
  guest_list.each do |guest|
    badge_message = "Hello, my name is #{guest}."
    all_messages.push(badge_message)
  end
  all_messages
end

def assign_rooms(guest_list)
  all_assignments = []
  guest_list.each_with_index do |guest, index|
    room_number = index + 1
    guest_assignment = "Hello, #{guest}! You'll be assigned to room #{room_number}!"
    all_assignments.push(guest_assignment)
  end
  all_assignments
end

def printer(guest_list)
  batch_badge_creator(guest_list).each do |guest|
    puts guest
  end

  assign_rooms(guest_list).each do |room_assigment|
    puts room_assigment
  end
end
