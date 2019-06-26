require 'test_helper'

class MessagethreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messagethread = messagethreads(:one)
  end

  test "should get index" do
    get messagethreads_url, as: :json
    assert_response :success
  end

  test "should create messagethread" do
    assert_difference('Messagethread.count') do
      post messagethreads_url, params: { messagethread: { description: @messagethread.description, phone: @messagethread.phone, topic: @messagethread.topic } }, as: :json
    end

    assert_response 201
  end

  test "should show messagethread" do
    get messagethread_url(@messagethread), as: :json
    assert_response :success
  end

  test "should update messagethread" do
    patch messagethread_url(@messagethread), params: { messagethread: { description: @messagethread.description, phone: @messagethread.phone, topic: @messagethread.topic } }, as: :json
    assert_response 200
  end

  test "should destroy messagethread" do
    assert_difference('Messagethread.count', -1) do
      delete messagethread_url(@messagethread), as: :json
    end

    assert_response 204
  end
end
