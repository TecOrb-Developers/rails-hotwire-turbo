require 'rails_helper'

RSpec.describe User, type: :model do

 it "returns a email for a user" do

  user = build(:user, email: 'rajputayushrajput225@gmail.com')

  expect(user.email).to eq 'rajputayushrajput225@gmail.com'

 end


 it "returns a password for a user" do

  user = build(:user, password: 'ayush123')

  expect(user.password).to eq 'ayush123'



 end
  
end
