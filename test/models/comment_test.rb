require "test_helper"

class CommentTest < ActiveSupport::TestCase

  def comment
    @comment ||= Comment.new
  end

  def test_valid
    assert comment.valid?
  end

  def test_link_to_post_page_and_see_form_comment
    Post.create(title: "FirstPost", body:"This is my first post")
    visit '/posts/1'
    assert page.has_selector? "form"
  end

  def test_comment_body_should_be_present
    Comment.create(body: "aaa")
    assert_equal 0, Comment.all.count
  end

end
