def substrings(string, dictionary)
    #break string to array of capital letters
    string_array = string.split
    string_array.map!{|word| word.upcase}
    #go through the dicionary
    dictionary.reduce(Hash.new(0)) do |count, word|
        #check each dictionary substring against each word of the main string
        string_array.each do |string| 
            if string[word.upcase] != nil
                count[word] += 1
            end
        end
        count
    end
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner partner, sit down! How's it going?", dictionary)

