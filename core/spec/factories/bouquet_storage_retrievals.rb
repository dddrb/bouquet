FactoryGirl.define do
  factory :bouquet_storage_retrieval, :class => 'Bouquet::StorageRetrieval' do
    state "MyString"
date "2016-01-11"
quantity 1
storage nil
delivery nil
  end

end
