require 'rails_helper'

RSpec.describe Pivot do

  describe "#a__m__user__admin__pivot_1?" do
    subject { Pivot::Master.new }

    it 'exists' do
      expect(subject.respond_to?(:a__m__user__admin__pivot_1?)).to eq true
    end

    context "with an admin user" do
      let(:user) { build :pivot_user, is_admin:true }

      describe "Rails.env == development" do
        it 'is true' do
          allow(Rails).to receive(:env).and_return(ActiveSupport::StringInquirer.new("development"))
          expect(user.admin?).to eq true
        end
      end

      describe "Rails.env == production" do
        it 'is true' do
          allow(Rails).to receive(:env).and_return(ActiveSupport::StringInquirer.new("production"))
          expect(user.admin?).to eq true
        end
      end
    end

    context "with a non-admin user " do
      let(:user) { build :pivot_user, is_admin:false }

      describe "Rails.env == development" do
        it 'is true' do
          allow(Rails).to receive(:env).and_return(ActiveSupport::StringInquirer.new("development"))
          expect(user.admin?).to eq true
        end
      end

      describe "Rails.env == production" do
        it 'is false' do
          allow(Rails).to receive(:env).and_return(ActiveSupport::StringInquirer.new("production"))
          expect(user.admin?).to eq false
        end
      end
    end

  end
end
