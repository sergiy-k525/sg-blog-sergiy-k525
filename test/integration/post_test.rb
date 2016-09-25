require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    create_two_posts
    visit "/posts/post_page/1"

  end

  def test_visit_post_page_and_see_one_post_with_title_and_body
    assert_equal 1, page.all("div.post-page").count
  end

  def test_visit_first_post_page_and_see_title_only_this_post
    assert page.has_content?("FirstPost")
  end

  def test_visit_first_post_page_and_see_body_only_this_post
    assert page.has_content?("This is my first post")
  end

  def test_visit_first_post_page_and_no_see_title_other_post
    assert page.has_no_content?("SecondPost")
  end

  def test_visit_first_post_page_and_no_see_body_other_post
    assert page.has_no_content?("This is my second post")
  end

  def create_two_posts
    Post.create(title: "FirstPost", body:"This is my first post")
    Post.create(title: "SecondPost", body:"This is my second post")
  end
end
