FactoryGirl.define do
  factory :bouquet_delivery, :class => 'Bouquet::Delivery' do
    state "MyString"
date "2016-01-09"
quantity 1
shipment nil
location nil
  end

end
