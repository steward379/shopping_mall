FactoryGirl.define do
  factory :product do
    title { Fake::Name.name }
    description "MyText"
    price "9.99"
  end
end

#p1 = FactoryGirl.create(:product)