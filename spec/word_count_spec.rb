require 'rspec'
require 'word_count'

describe ('String#word_count') do
  it('takes a word, matches it, and returns how frequently that word appears') do
    expect(('thankful').word_count('thankful')).to(eq(1))
  end

  it('takes a string/phrase, takes a search word, then returns how often the search word appears') do
    expect(("I am thankful for my thankful family and thankful friends").word_count("thankful")).to(eq(3))
  end

  it('takes a string/phrase containing uppercase and lowercase letters and returns the the number count of search word appearances in tha string/phrase') do
    expect(("I Am tHanKfUl FOR my ThanKfUl fAmIly aNd tHANkFul FriENdS").word_count("thankful")).to(eq(3))
  end
end
