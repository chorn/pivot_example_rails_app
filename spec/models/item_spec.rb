require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "some bad tests" do
    subject { build :item }

    it 'has a factory' do
      expect(subject).to be_valid
      taco = create :item, :taco
      expect(taco).to be_valid
    end
  end
end
