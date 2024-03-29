require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  # let(:valid_session) { {} }
  #
  # describe "GET #index" do
  #   let(:user) { build :user }
  #
  #   it "assigns all users as @users" do
  #     get :index, {}, valid_session
  #     expect(assigns(:users)).to eq([user])
  #   end
  # end
  #
  # describe "GET #show" do
  #   let(:user) { build :user }
  #
  #   it "assigns the requested user as @user" do
  #     get :show, {:id => user.to_param}, valid_session
  #     expect(assigns(:user)).to eq(user)
  #   end
  # end
  #
  # describe "GET #new" do
  #   it "assigns a new user as @user" do
  #     get :new, {}, valid_session
  #     expect(assigns(:user)).to be_a_new(User)
  #   end
  # end
  #
  # describe "GET #edit" do
  #   let(:user) { build :user }
  #
  #   it "assigns the requested user as @user" do
  #     get :edit, {:id => user.to_param}, valid_session
  #     expect(assigns(:user)).to eq(user)
  #   end
  # end
  #
  # describe "POST #create" do
  #   context "with valid params" do
  #     it "creates a new User" do
  #       expect {
  #         post :create, {:user => valid_attributes}, valid_session
  #       }.to change(User, :count).by(1)
  #     end
  #
  #     it "assigns a newly created user as @user" do
  #       post :create, {:user => valid_attributes}, valid_session
  #       expect(assigns(:user)).to be_a(User)
  #       expect(assigns(:user)).to be_persisted
  #     end
  #
  #     it "redirects to the created user" do
  #       post :create, {:user => valid_attributes}, valid_session
  #       expect(response).to redirect_to(User.last)
  #     end
  #   end
  #
  #   context "with invalid params" do
  #     it "assigns a newly created but unsaved user as @user" do
  #       post :create, {:user => invalid_attributes}, valid_session
  #       expect(assigns(:user)).to be_a_new(User)
  #     end
  #
  #     it "re-renders the 'new' template" do
  #       post :create, {:user => invalid_attributes}, valid_session
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end
  #
  # describe "DELETE #destroy" do
  #   let(:user) { create :user }
  #
  #   it "destroys the requested user" do
  #     expect {
  #       delete :destroy, {:id => user.to_param}, valid_session
  #     }.to change(User, :count).by(-1)
  #   end
  #
  #   it "redirects to the users list" do
  #     user = User.create! valid_attributes
  #     delete :destroy, {:id => user.to_param}, valid_session
  #     expect(response).to redirect_to(users_url)
  #   end
  # end

end
