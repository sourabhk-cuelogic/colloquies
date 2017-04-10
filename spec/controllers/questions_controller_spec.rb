require 'rails_helper'

describe QuestionsController do
  before :each do
    @question = FactoryGirl.create(:question)
  end

  describe "GET #index" do
    it "index of questions" do
      get :index
      assigns(:questions).should eq([@question])
    end
    
    it "renders the :index view" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "assigns the requested @question" do
      get :show, id: @question
      assigns(:question).should eq(@question)
    end
    
    it "renders the #show view" do
      get :show, id: @question
      expect(response).to render_template(:show)
    end
  end


  describe "POST create" do
    before :each do
      @valid_question = FactoryGirl.attributes_for(:question)
      @invalid_question = FactoryGirl.attributes_for(:question, title: nil)
    end
    context "with valid attributes" do
      it "creates a new question" do
        expect{
          post :create, question: @valid_question
        }.to change(Question,:count).by(1)
      end
      
      it "redirects to the new question" do
        post :create, question: @valid_question
        expect(response).to redirect_to Question.last
      end
    end
    
    context "with invalid attributes" do
      it "does not save the new question" do
        expect{
          post :create, question: @invalid_question
        }.to_not change(Question,:count)
      end
      
      it "re-renders the new method" do
        post :create, question: @invalid_question
        expect(response).to render_template(:new)
      end
    end
  end 
end