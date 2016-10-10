require "test_helper"

class HomePageTest < ActiveSupport::TestCase
  def setup
    create_ten_posts
    visit "/"
  end

  def test_visit_home_page_and_see_blog_title
    assert page.has_content?("Soft group blog")
  end

  def test_visit_home_page_and_see_ten_post_titles
    assert_equal 5, page.all(".list-group-item").count
  end

  def test_link_to_post_page
    find(".list-group-item-heading", text: Post.last.title).click
    assert page.has_content? Post.first.body
  end

  def test_link_to_new_post_page
    click_on "New Post"
    assert page.has_selector? "form"
  end

  def create_ten_posts
    10.times { |n| Post.create(title: "a_#{n}", body: "AAAA") }
  end
end
