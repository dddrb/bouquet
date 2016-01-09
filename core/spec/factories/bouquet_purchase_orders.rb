FactoryGirl.define do
  factory :bouquet_purchase_order, :class => 'Bouquet::PurchaseOrder' do
    state "MyString"
date "2016-01-09"
quantity 1
material nil
supplier nil
  end

end
