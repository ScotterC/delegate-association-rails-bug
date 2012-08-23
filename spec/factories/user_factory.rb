FactoryGirl.define do
  factory (:user) do |f|
    f.email { Faker::Internet.email }
    f.password "spree123"
    f.password_confirmation "spree123"
    f.association(:info, :factory => :user_info)
  end
end