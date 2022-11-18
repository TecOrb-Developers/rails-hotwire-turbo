require 'rails_helper'


RSpec.describe "Articles", type: :request do


 let(:valid_attribute) do {

     title: "",   }


 end

 let(:invalid_attribute) do {

    title: "6eeft"      }


 end

  describe "GET /index" do
    
    it "render a successful response" do

      article = Article.all

      get articles_url

      expect(response).to be_truthy

    end
  end

   describe "GET/show" do

    it "render a successful response" do

       get articles_url
       
      expect(response).to be_truthy

    end


   end


   describe "GET/new" do

    it "render a successful response" do

      @article = Article.new

      get new_article_url

      expect(response).to be_truthy

    end


   end


   describe "GET/post" do

    context "with valid attribute" do

      it "creates a new article" do

        expect do


          post articles_url, params: {article: valid_attribute}
            end.to change(Article, :count).by(0)
          

      end


      it "redirects to created article" do

        post articles_url, params: {article: valid_attribute}

        expect(response).to be_truthy

      end


    end

      context "with invalid valid_attribute" do

        it "does not create a new article" do

          expect do

            post articles_url, params: {article: invalid_attribute}
          end.to change(Article, :count).by(0)


          end


          it "render a successful response" do

            post articles_url, params: {article: invalid_attribute}

            expect(response).to be_truthy

          end


        end

      end


   end


