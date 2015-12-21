require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  describe "pricing" do
    let(:taco) { create :item, :taco, price: 5.00 }

    context "taco tuesday" do
      let(:taco_user) { create :user, taco_rank: 100 }
      let(:taco_session) { { user: taco_user.id } }
      let(:user) { create :user, taco_rank: 1 }
      let(:user_session) { { user: user.id } }
      let(:monday) { Time.local(2015, 12, 28) }
      let(:tuesday) { Time.local(2015, 12, 29) }

      it 'sets a special price on tuesday' do
        Timecop.travel(tuesday)

        get :show, { id: taco.id }, taco_session
        taco_price = assigns(:price)

        expect(taco_price).to eq taco.price * 0.5
      end

      it 'does not set a special price on monday' do
        Timecop.travel(monday)

        get :show, { id: taco.id }, user_session
        taco_price = assigns(:price)

        expect(taco_price).to eq taco.price
      end
    end
  end
end
