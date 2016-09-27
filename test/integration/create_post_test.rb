require "test_helper"

class CreatePostTest < ActiveSupport::TestCase
  def setup
    visit "/"
  end

  def test_visit_home_page_and_show_button_create_post
    assert_equal 1, page.all("create_post_button").count
  end

  def test_visit_create_post_page_and_show_form_for_create_post
    visit "posts/new"
    assert_equal 1, page.all("create_post_form").count
  end
end
