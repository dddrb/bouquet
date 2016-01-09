FactoryGirl.define do
  factory :bouquet_sales_order, :class => 'Bouquet::SalesOrder' do
    state "MyString"
date "2016-01-09"
quantity 1
product nil
customer nil
  end

end
