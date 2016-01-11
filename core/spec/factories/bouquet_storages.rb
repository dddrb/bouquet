FactoryGirl.define do
  factory :bouquet_storage, :class => 'Bouquet::Storage' do
    state "MyString"
date "2016-01-11"
quantity 1
storable nil
  end

end
