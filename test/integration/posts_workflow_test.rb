require "test_helper"

class PostsWorkflowTest < ActiveSupport::TestCase
  def setup
    id = Post.create(title: post_data[:title], body: post_data[:body]).id
    visit "/posts/#{id}"
  end

  def test_create_new_post
    Post.delete_all
    visit "/"
    click_on "New Post"

    fill_in "post[title]", with: post_data[:title]
    fill_in "post[body]",  with: post_data[:body]

    assert_difference "Post.all.count", +1 do
      click_on "Make'em read!"
    end
    assert_equal post_data[:title], Post.last.title
    assert_equal post_path(Post.last.id), current_path
  end

  def test_read_post
    assert page.has_content? post_data[:title]
    assert page.has_content? post_data[:body]
    ["Edit Post", "Delete Post"].each do |button|
      assert page.has_button? button
    end
  end

  def test_edit_and_update_post
    click_on "Edit Post"
    assert page.has_selector? "form"

    fill_in "post[title]", with: "More successful post's title."
    click_on "Now its OK"

    assert_equal "More successful post's title.", Post.last.title
    assert_equal post_data[:body], Post.last.body
  end

  def test_delete_post
    assert_difference("Post.all.count", -1) { click_on "Delete Post" }
    assert_equal root_path, current_path
  end

  def post_data
    { title: "The Awesome Title", body: "This string is body." }
  end
end
