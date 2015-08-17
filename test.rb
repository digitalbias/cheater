#!/usr/bin/env ruby

require_relative 'cheater'

describe 'cheater' do
  context 'words that use all the tiles' do
    it "return 'cat' and 'act' when give 'tca'" do
      param_string = 'tca'
      word_list = get_word_list(param_string)
      
      expect(word_list).to include('cat', 'act')
    end
    it "return only 2 elements when give 'tca'" do
      param_string = 'tca'
      word_list = get_word_list(param_string)      
      expect(word_list.size).to eq(4)
    end
    it "return 'dog' and 'god' when give 'odg'" do
      param_string = 'odg'
      word_list = get_word_list(param_string)
      
      expect(word_list).to include('god', 'dog')
    end
  end
  context 'checking to see if we can use specific words with certain characters' do
    it "returns false for cat when passed 'dog'" do
      characters = 'dog'
      expect(can_i_use_this_word?('dog', 'cat')).to be(false)
    end
    it "returns true for cat when passed 'tca'" do
      characters = 'dog'
      expect(can_i_use_this_word?('tca', 'cat')).to be(true)
    end
    it "returns false for cat when passed 'ca'" do
      characters = 'dog'
      expect(can_i_use_this_word?('ca', 'cat')).to be(false)
    end
  end
end

