require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :is_admin => false,
      :taco_rank => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_is_admin[name=?]", "user[is_admin]"

      assert_select "input#user_taco_rank[name=?]", "user[taco_rank]"
    end
  end
end
