require 'rails_helper'

RSpec.describe User, type: :model do
  describe "some really important tests that made a lot of sense at the time" do
    let(:user) { create :user }

    it 'has a factory' do
      expect(user).to be_valid
    end
  end

  describe "some tests that no one remembers writing" do
    let(:user) { create :user }

    it 'has some antique business logic' do
      user.name = 'Cthulhu'
      user.taco_rank = 9000
      expect(user.admin?).to_not be_nil
    end
  end
end
