require 'rspec'
require 'word_count'

describe ('String#word_count') do
  it('takes a word, matches it, and returns how frequently that word appears') do
    expect(('thankful').word_count('thankful')).to(eq(1))
  end
end
