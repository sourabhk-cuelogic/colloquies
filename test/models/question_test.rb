require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
   test "presence of title" do
    question = FactoryGirl.build(:question)
    assert_equal true, question.valid?, "Saved the question with title"
  end

  test "presence of description" do
    question = FactoryGirl.build(:question)
    assert_equal true, question.valid?, "Saved the question with description"
  end

  test "absence of  title" do
    question = Question.new({title: ""})
   assert_equal false, question.valid?, "question was saved without providing title"
  end

  test "absence of  description" do
    question = Question.new({title: "what is minitest", description: ""})
   assert_equal false, question.valid?, "question was saved without description"
  end

end


