class FakeHuman
  def respond(str)
    if str.end_with?("?")
      "Why do you want to know?"
    elsif str.start_with?("I am")
      "Why are you #{str.gsub("I am ", "")}?"
    elsif str.start_with?("I ")
      "Why do you #{str.gsub("I ", "")}?"


    elsif str.start_with?("My ")
      if str.include?(" has ")
        "Why has your #{str.gsub("My ","").gsub(" has "," ").downcase}?"
      elsif str.include?(" is ")
        "Why is your #{str.gsub("My ","").gsub(" is "," ").downcase}?"
      end

    elsif str.start_with?("It is")
      "Why is it #{str.gsub("It is ", "")}?"
    elsif str.include?(" are ")
      "Why are #{str.gsub(" are "," ").downcase}?"
    elsif str.include?(" was ")
      "Why was #{str.gsub(" was "," ").downcase}?"
    elsif str.include?(" has ")
      "Why has #{str.gsub(" has "," ").downcase}?"
    elsif str.include?(" is ")
      "Why is #{str.gsub(" is "," ").split.tap{|words|words.first.downcase!}.join(" ")}?"
    end
  end
end

