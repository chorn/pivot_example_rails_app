require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :is_admin => false,
      :taco_rank => 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_is_admin[name=?]", "user[is_admin]"

      assert_select "input#user_taco_rank[name=?]", "user[taco_rank]"
    end
  end
end
