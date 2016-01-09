FactoryGirl.define do
  factory :bouquet_storage, :class => 'Bouquet::Storage' do
    state "MyString"
date "2016-01-09"
quantity 1
stock nil
delivery nil
  end

end
