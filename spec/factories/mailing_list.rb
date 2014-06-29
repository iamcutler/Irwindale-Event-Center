FactoryGirl.define do
  sequence :unique_email do |n|
    "email#{n}@irwindaleeventcenter.com"
  end

  factory :MailingList do
    email_address { generate(:unique_email) }
  end
end