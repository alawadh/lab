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



puts count_words("A man, a plan, a canal -- Panama")
puts count_words("Doo bee doo bee doo")

