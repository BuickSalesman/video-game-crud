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

  test "show" do
    get "/games/#{Game.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "image", "description", "release_date", "platform", "created_at", "updated_at"], data.keys
  end

  test "update" do
    game = Game.first
    patch "/games/#{game.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

  test "destroy" do
    assert_difference "Game.count", -1 do
      delete "/games/#{Game.first.id}.json"
      assert_response 200
    end
  end
end
