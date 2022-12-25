require 'rails_helper'

RSpec.describe Article, type: :model do

  current_user = User.first_or_create!(email: "rajputayush225@gmail.com", password: "ayush123")

  it "has a title" do

    article = Article.new(
      title: '',
      description: 'A true name')


      expect(article).to_not be_valid

      article.title = 'A common test'

      expect(article).to be_valid 

  end


  it "has a description" do


    article = Article.new(
      title: ' A generation',
      description: '')


      expect(article).to_not be_valid

      article.description = 'new day'

      expect(article).to be_valid 



  end
  

  end
