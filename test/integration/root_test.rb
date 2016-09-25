require "test_helper"

class RootTest < ActiveSupport::TestCase
  def setup
    create_ten_posts
    visit "/"
  end

  def test_visit_home_page_and_see_blog_title
    assert page.has_content?("SG Blog")
  end

  def test_visit_home_page_and_see_ten_post_titles
    assert_equal 10, page.all("li.post-title").count
  end

  def create_ten_posts
    10.times { |n| Post.create(title: "a_#{n}", body: "bbbbb") }
  end
end
