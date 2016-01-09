FactoryGirl.define do
  factory :bouquet_arrival, :class => 'Bouquet::Arrival' do
    state "MyString"
date "2016-01-09"
quantity 1
purchase_order nil
  end

end
