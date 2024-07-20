person = "Tim"

puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "and a value of '#{person}'"

person1 = "Tim"

puts "The object has an id of #{person1.object_id}"
person2 = person1.dup.freeze
#person2[0] = 'V'
person1[0] = 'J'

puts "person1 is #{person1}"
puts "person2 is #{person2}"
