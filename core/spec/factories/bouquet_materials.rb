FactoryGirl.define do
  factory :bouquet_material, :class => 'Bouquet::Material' do
    name "MyString"
expiration_days 1
order_lead_time 1
order_quantity 1
  end

end
