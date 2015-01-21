


  #Given an array containing some strings, return an array containing the length of those strings.
  def length_finder(input_array)
    lengthOfWords = []
    input_array.each do |i|
      lengthOfWords << i.length
    end
    return lengthOfWords
  end

  #Given a sentence containing multiple words, find the frequency of a given word in that sentence.
  def find_frequency(sentence, word)
    sentence = sentence.downcase
    sentenceArray = sentence.split
    sentenceArray.count(word)
  end

  #Create a method named 'sort_string' which accepts a String and rearranges all the words in
  #ascending order, by length.
  def sort_string(string)
    string = string.split
    string = string.sort_by{|x| x.length}
    string = string.join(" ")
  end

  #Create a method 'random_select' which, when given an array of elements (array) and a number
  #(n), returns n randomly selected elements from that array.
  def random_select(array, n)
    randomArray = []
    n.times do
      randomNumber = array.rand(array.length)
      randomArray << array[randomNumber]
    end
    return randomArray
  end

  #Let us say you are trying to recruit team-members for your new startup! Given a candidate,
  #you need an expression that will tell you whether they fit into certain types. This is how
  #a candidate object would look:

##
  #candidate.years_of_experience = 4
  #candidate.github_points = 293
  #candidate.languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
  #candidate.applied_recently? false
  #candidate.age = 26

  #is_an_experienced_programmer = (candidate.languages_worked_with.include? 'Ruby') &&
  #(candidate.years_of_experience > 1 || candidate.github_points >= 500) &&
  #!(candidate.applied_recently? || candidate.age < 15)

  #Given a sentence, return true if the sentence is a palindrome. (Ignore whitespaces)
  def palindrome?(sentence)
    letters = sentence.downcase.scan(/\w/)
    letters = letters.reverse
  end

  puts palindrome?("Race Car")
