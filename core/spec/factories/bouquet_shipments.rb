FactoryGirl.define do
  factory :bouquet_shipment, :class => 'Bouquet::Shipment' do
    state "MyString"
date "2016-01-09"
quantity 1
sales_order nil
  end

end
