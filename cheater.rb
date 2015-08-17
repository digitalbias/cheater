#!/usr/bin/env ruby

def get_word_list(characters)
  File.readlines("words.txt").each {|word| word.chomp! }.select{ |word| can_i_use_this_word?(characters, word.strip) }
end


def can_i_use_this_word?(characters, word)
  char_array = characters.split(//)
  word_array = word.split(//)
  word_array == word_array.select {|c| char_array.delete(c)}
end

