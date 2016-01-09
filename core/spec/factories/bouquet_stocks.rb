FactoryGirl.define do
  factory :bouquet_stock, :class => 'Bouquet::Stock' do
    state "MyString"
date "2016-01-09"
quantity 1
arrival nil
location nil
  end

end
