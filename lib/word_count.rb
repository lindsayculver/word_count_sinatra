class String
  define_method(:word_count) do |match_word|
    self.downcase!()
    match_word.downcase!()

    if self.include?(match_word)
      self.split().count(match_word)
    end
  end
end
