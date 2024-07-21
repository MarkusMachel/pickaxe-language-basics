data = {
    mcu: [
        {
            name: "Iron Man", year: 2010, actors: ["Robert Downey Jr.", "Gwyneth Paltrow"] 
        }
    ],
    starwars: [
        {
            name: "A New Hope", year: 1977, actors: ["Mark Hamil", "Carrie Fisher"]
        }
    ]
}

puts data[:mcu][0][:actors][1]
puts data.dig(:mcu, 0, :actors, 1)

def words_from_string(string)
    string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
    counts = Hash.new(0)
    word_list.each do |word|
        counts[word] += 1
    end
    counts
end

all_words = words_from_string("I like Ruby, it is (usually) optimized for programmer happines, unlike javascript that is optimized for programmer distress")

puts count_frequency(all_words)
puts all_words.tally

sorted = count_frequency(all_words).sort_by { |word, count| word }

sorted.each do |word, count|
    puts "#{word}: #{count}"
end



