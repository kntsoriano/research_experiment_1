require 'minitest/autorun'
require_relative 'ruby_1_b'

# Common test data version: 1.2.0 4fc1acb
class FakeHumanTest < Minitest::Test
  questions = [
    "How do you feel?",
    "What do you want?",
    "What is your favourite food?",
  ].each do |question, idx|
    define_method "test_question_#{idx}" do
      response = FakeHuman.new.respond(question)

      assert response.end_with?("?"), "You must reply with a question ending in question-mark"
      refute_equal response, question, "You cannot just say the same thing back to the judge"
    end
  end

  questions = {
    "I like cars" => "Why do you like cars?",
    "I want water" => "Why do you want water?",
    "I have cool hair" => "Why do you have cool hair?",

    "I am hungry" => "Why are you hungry?",
    "I am thirsty" => "Why are you thirsty?",
    "I am beautiful" => "Why are you beautiful?",

    "My laptop is out of battery" => "Why is your laptop out of battery?",
    "My phone has got no signal" => "Why has your phone got no signal?",
  }.each.with_index do |(question, answer), idx|
    define_method "test_personal_statements_#{idx}" do
      assert_equal answer, FakeHuman.new.respond(question)
    end
  end

  questions = {
    "It is warm today" => "Why is it warm today?",
    "The books are blue" => "Why are the books blue?",
    "The food was cold" => "Why was the food cold?",
    "The Earth is a beautiful planet" => "Why is the Earth a beautiful planet?",
    "The laptop is out of battery" => "Why is the laptop out of battery?",
    "The phone has got no signal" => "Why has the phone got no signal?"
  }.each.with_index do |(question, answer), idx|
    define_method "test_general_statements_#{idx}" do
      assert_equal answer, FakeHuman.new.respond(question)
    end
  end

end

