FactoryGirl.define do
  factory :pivot_user, :class => User do
    sequence :name do |n|
      "Pivot User #{n}"
    end
  end
end
