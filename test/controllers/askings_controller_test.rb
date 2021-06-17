require 'test_helper'

class AskingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asking = askings(:one)
  end

  test "should get index" do
    get askings_url
    assert_response :success
  end

  test "should get new" do
    get new_asking_url
    assert_response :success
  end

  test "should create asking" do
    assert_difference('Asking.count') do
      post askings_url, params: { asking: { answers: @asking.answers, correct_answers: @asking.correct_answers, description: @asking.description, multiple_correct_answers: @asking.multiple_correct_answers, question: @asking.question } }
    end

    assert_redirected_to asking_url(Asking.last)
  end

  test "should show asking" do
    get asking_url(@asking)
    assert_response :success
  end

  test "should get edit" do
    get edit_asking_url(@asking)
    assert_response :success
  end

  test "should update asking" do
    patch asking_url(@asking), params: { asking: { answers: @asking.answers, correct_answers: @asking.correct_answers, description: @asking.description, multiple_correct_answers: @asking.multiple_correct_answers, question: @asking.question } }
    assert_redirected_to asking_url(@asking)
  end

  test "should destroy asking" do
    assert_difference('Asking.count', -1) do
      delete asking_url(@asking)
    end

    assert_redirected_to askings_url
  end
end
