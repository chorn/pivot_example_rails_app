require 'rails_helper'

RSpec.describe Pivot do

  describe "#a__m__user__admin__pivot_1?" do
    subject { Pivot::Master.new }

    it 'exists' do
      expect(subject.respond_to?(:a__m__user__admin__pivot_1?)).to eq true
    end
  end

end
