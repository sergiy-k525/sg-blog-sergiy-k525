require "test_helper"

class UserPagesTest < ActionDispatch::IntegrationTest
  def setup
    visit "/"
  end

  def test_click_on_signoup_button_and_see_register_form
    click_on "Sign up now!"
    assert page.has_selector? "form"
  end

  def test_click_on_signoup_button_and_see_register_form
    click_on "Sign in"
    assert page.has_selector? "form"
  end

  def test_register_new_user

    click_on "Sign up now!"

    fill_in "user[name]", with: user_data[:name]
    fill_in "user[email]",  with: user_data[:email]
    fill_in "user[password]", with: user_data[:password]
    fill_in "user[password_confirmation]",  with: user_data[:password_confirmation]

    assert_difference "User.all.count", +1 do
      click_on "Create my account"
    end

    assert_equal users_path, current_path
  end

  def test_see_user
    assert page.has_content? user_data[:name]
    assert page.has_content? user_data[:email]
  end

  def user_data
    { name: "Sergiy", email: "qwerty@example.com", password: "111111", password_confirmation: "111111" }
  end
end
