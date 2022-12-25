FactoryBot.define do
  factory :article do

    title{Faker::Title.title}
    description{Faker::Description.description}



      
  end
end
