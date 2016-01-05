require 'rails_helper'

RSpec.describe User, type: :model do

  describe "#admin?" do
    let(:user) { build(:pivot_user) }

    describe "pivot_1 is used" do
      it "has a true path" do
        expect(PIVOT_MASTER).to receive(:a__m__user__admin__pivot_1?)
        user.admin?
      end
		end
  end

end
