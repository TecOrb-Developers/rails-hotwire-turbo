require "rails_helper"

RSpec.describe "Sign in", type: :request do
  describe "GET /users/sign_in" do
    context "User Login" do
      before do
        @user = create :user, :articles
        visit new_user_session_path
      end

      it "Should be success with correct login details" do
        fill_in "user[email]", with: @user.email
        fill_in "user[password]", with: @user.password
        click_button "Log in"

        expect(page).to have_text "Signed in successfully"
        expect(page).to have_link "Sign Out"
        expect(page).to have_current_path welcome_path
      end

      it "Should be failed with wrong login details" do
        fill_in "user[email]", with: @user.email
        fill_in "user[password]", with: "wrong password"
        click_button "Log in"

        expect(page).to have_text "Invalid Email or password"
        expect(page).to have_current_path new_user_session_path
      end
    end
  end
end