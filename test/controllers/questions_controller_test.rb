require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get questions_url
    assert_response :success
  end

  test "should get new" do
    get new_question_url
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post questions_url, params: { question: { answer_a: @question.answer_a, answer_a_cotion: @question.answer_a_cotion, answer_b: @question.answer_b, answer_c: @question.answer_c, answer_d: @question.answer_d, answer_e: @question.answer_e, answer_f: @question.answer_f, correctanswer: @question.correctanswer, description: @question.description, description: @question.description, explanation: @question.explanation, question: @question.question } }
    end

    assert_redirected_to question_url(Question.last)
  end

  test "should show question" do
    get question_url(@question)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_url(@question)
    assert_response :success
  end

  test "should update question" do
    patch question_url(@question), params: { question: { answer_a: @question.answer_a, answer_a_cotion: @question.answer_a_cotion, answer_b: @question.answer_b, answer_c: @question.answer_c, answer_d: @question.answer_d, answer_e: @question.answer_e, answer_f: @question.answer_f, correctanswer: @question.correctanswer, description: @question.description, description: @question.description, explanation: @question.explanation, question: @question.question } }
    assert_redirected_to question_url(@question)
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete question_url(@question)
    end

    assert_redirected_to questions_url
  end
end
