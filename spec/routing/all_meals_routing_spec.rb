require "rails_helper"

RSpec.describe AllMealsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/all_meals").to route_to("all_meals#index")
    end


    it "routes to #show" do
      expect(:get => "/all_meals/1").to route_to("all_meals#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/all_meals").to route_to("all_meals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/all_meals/1").to route_to("all_meals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/all_meals/1").to route_to("all_meals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/all_meals/1").to route_to("all_meals#destroy", :id => "1")
    end

  end
end
