# Part1: Hello World
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end

def palindrome?(string)
	tmp = string.downcase.gsub(/\W/, "")
	tmp == tmp.reverse
end

def count_words(string)
    cmp = {}
    string.downcase.scan(/\b[\w]+/).each do |n|
		if !cmp[n] then
			cmp[n] = 1
		else cmp[n] += 1
		end
    end
    cmp
end


hello = HelloWorldClass.new("Omar")
hello.sayHi

puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!")
puts palindrome?("Abracadabra") 

puts count_words("A man, a plan, a canal -- Panama")
puts count_words("Doo bee doo bee doo")
