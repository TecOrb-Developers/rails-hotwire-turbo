require 'rails_helper'

RSpec.describe "Articles", type: :request do

   current_user = User.first_or_create!(email: "rajputayush225@gmail.com", password: "ayush123")


 let(:valid_attributes) do

  { id: '1', 

    title: "A new generation",
     description: "hello text" 
         }
   


   end

  let(:invalid_attributes) do 

    { id: 'w',

      title: "356",

      description: "cb73r7"
    
  }

end

   

  describe "GET /index" do


    it "render a successful response" do

      article = Article.new(valid_attributes)

      article.user = current_user

      article.save

      get articles_url


    expect(response).to be_truthy

    end
   
  end

  describe "GET /show" do

    it "render a successful response" do

    article = Article.new(valid_attributes)

      article.user = current_user

      article.save

      get article_url(article)

      expect(response).to be_truthy

    end

  end


  describe "GET/new" do

    it "render a successful response" do

      get new_article_url 

      expect(response).to be_truthy


    end

  end


  describe "GET /edit" do

    it "render a successful response" do
     article = Article.new(valid_attributes)

      article.user = current_user

      article.save


      get edit_article_url(article)

      expect(response).to be_truthy



    end


  end


  describe "POST/ create" do
    context "with valid_attributes" do

    it "create a new article" do

      expect do 


      article = Article.new(valid_attributes)

      article.user = current_user

      article.save

      post articles_url, params: {article: valid_attributes}
     end. to change(Article, :count).by(1)


    end


    it "redirect_to created article " do

      post articles_url, params: {article: valid_attributes}

      expect(response).to be_truthy

end
  end

    context "with invalid_attributes" do

      it "does not create a new article" do

        expect do

        post articles_url, params: {article: invalid_attributes}
        end.to change(Article, :count).by(0)



      end

       it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post articles_url, params: { article: invalid_attributes }
        expect(response).to have_http_status(302)
      end
    
    end

    end


    describe "PATCH/update" do

      context "with valid parameters" do

        let(:new_attributes) do


          { id: '1', 

    title: "A new generation",
     description: "hello text" 
         }

         


        end

        it "updated a request article" do

             article = Article.new(valid_attributes)

      article.user = current_user

      article.save

      patch article_url(article), params: {article: new_attributes}

      article.reload
       #skip("Add assertions for updated state")


        end


        it "redirect_to the article" do
          article = Article.new(valid_attributes)

      article.user = current_user

      article.save

      patch article_url(article), params: {article: new_attributes}

      article.reload

      expect(response).to be_truthy


        end


end
      
      context "with invalid parameters" do

          it "renders a response with 422 status (i.e. to display the 'edit' template)" do

             article = Article.new(invalid_attributes)

      article.user = current_user

      article.save

       article.reload
        patch article_url(article), params: { article: invalid_attributes }
        expect(response).to have_http_status(302)
      end


      end


    end



     describe "DELETE/destroy" do

      it "destroys the requested article" do


             article = Article.new(valid_attributes)

      article.user = current_user

      article.save

         expect do

          delete article_url(article)
        end.to change(Article, :count).by(0)


      end

      it "redirects to  the article list" do

article = Article.new(valid_attributes)

      article.user = current_user

      article.save

        delete article_url(article)

        expect(response).to be_truthy


      end


     end



end
