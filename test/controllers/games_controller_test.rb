require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/games.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Game.count, data.length
  end

  test "create" do
    assert_difference "Game.count", 1 do
      post "/games.json", params: {
                            title: "lake",
                            image: "lake",
                            description: "lake",
                            release_date: "lake",
                            platform: "lake",
                          }
      assert_response 200
    end
  end
end
