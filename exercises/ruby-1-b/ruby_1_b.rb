class FakeHuman
  def respond(str)
    Statement.new(str).response
  end
end

class Statement
  MAPPINGS = {
    /^I am /  => "Why are you ",
    /^I /     => "Why do you ",
    /^It is / => "Why is it ",
    / my /    => " your "
  }
  PIVOT_WORDS = %w{are was has is}

  attr_accessor :sentence
  def initialize(sentence)
    @sentence = sentence
  end

  def response
    return "Why do you want to know?" if question?

    PIVOT_WORDS.each do |word|
      next unless sentence.include?(" #{word} ")
      self.sentence = "Why #{word} #{sentence.gsub(" #{word} "," ").split.tap{|words|words.first.downcase!}.join(" ")}"
    end

    MAPPINGS.each do |from, to|
      next unless sentence =~ from
      self.sentence = sentence.gsub(from, to) 
    end

    sentence + "?"
  end

  private

  def question?
    sentence.end_with?("?")
  end
end

