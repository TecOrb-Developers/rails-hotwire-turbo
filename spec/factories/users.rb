FactoryBot.define do
  factory :user do

     email { Faker::Internet.unique.email }
    password { Faker::Internet.password }


       trait :role do

        role {"role"}

       end
    


    trait :articles do
        role {"articles"}
        
    end
    
  end
end
