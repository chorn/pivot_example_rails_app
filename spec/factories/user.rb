FactoryGirl.define do
  factory :user do
    sequence :name do |n|
      "User #{n}"
    end

    is_admin false
  end
end
