puts "Hello, Ruby Programmer"
puts "It is now #{Time.now}"

# def say_hello_goodbye(name)
#   result = 'I dont know why you say goodby,' + name + ', I say hello'
#   result # return keyword is optional syntax 
# end

#this is more idiomatic and it equivalent to the code above...
#check this for idiomatic ruby https://github.com/testdouble/standard
def say_hello_goodbye(name)
  "I dont know why you say goodby, #{name}, I say hello" # Double "" are more processing intensive than single ''
end

array = [1, 'cat', 3.14] #array literal
puts "The first element is #{array[0]}"

# !!! nil is an object in ruby
array[2] = nil # null is declared as nil in ruby 'also in go, which is funny xD'

puts "The array is now #{array.inspect}"

instrument_section = {
  :cello => "string",
  :clarinet => "woodwind",
  :drum => "percussion",
  :oboe => "woodwind",
  trumpet: "brass",
  violin: "string"
}

def walk (direction)
  if direction == :north
    puts 'Walking to the north'
  elsif direction == :south
    puts 'Walking to the south'
  else puts 'Nowhere to walk'
  end 
end



puts say_hello_goodbye('Markus')

walk_north = :north
walk_north = :east

walk(walk_north)
walk(:south)
walk(:east)

today = Time.now

def go_to_work (day) 
  if day.saturday?
    puts 'Do chores around the house'
  elsif day.sunday?
    puts 'Relax'
  else
    puts 'Go to work'
  end
end

go_to_work today
puts instrument_section

radiation = 3001
radiation = nil
radiation = '3001' # javascripts goes nuts here heheheh
radiation = 3001
puts 'Danger, Will Robinson' if radiation > 3000
puts radiation

# instrument_section.each { puts 'some instrument'}

# instrument_section.each do 
#   puts 'in do block' 
# end

def call_block
  puts 'Start of method'
  yield
  yield
  puts 'End of method'
end

call_block { puts 'In the Block! '}
# call_block causes error when yield
# call_block puts 'In the Block!' same as above

def who_says_what
  yield('Dave', 'hello')
  yield('Andy', 'goodbye')
end

who_says_what { |person, phrase| puts "#{person} says #{phrase}"}
who_says_what { puts "says"}

animals = ['ant', 'bee', 'cat', 'dog']

animals.each { |animal| puts animal }

# while line = gets
#   print line
# end