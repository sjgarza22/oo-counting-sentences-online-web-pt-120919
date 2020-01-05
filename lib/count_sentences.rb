require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    delimiters = [".\s", "!\s", "?\s"]
    self.split(Regexp.union(delimiters)).length
  end
end

