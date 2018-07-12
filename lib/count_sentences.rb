require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    self.split(/[\.\?\!]/)
    sentences = 0
    self.each do |sentence|
      if sentence.length > 1
        sentences += 1
      end
    end
    return sentences
  end
end