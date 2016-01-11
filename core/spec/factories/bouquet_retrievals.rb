FactoryGirl.define do
  factory :bouquet_retrieval, :class => 'Bouquet::Retrieval' do
    state "MyString"
date "2016-01-11"
quantity 1
storage nil
delivery nil
  end

end
