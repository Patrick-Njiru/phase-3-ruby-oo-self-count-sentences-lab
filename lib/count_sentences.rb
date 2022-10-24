# require 'pry'

class String
  attr_accessor :string

  def initialize(string)
    @string = string
  end

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
    self.split.filter {|sub_string| sub_string.end_with?(".", "?", "!") ? sub_string : nil }.length
  end
end