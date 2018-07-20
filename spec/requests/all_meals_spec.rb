require 'rails_helper'

RSpec.describe "AllMeals", type: :request do
  describe "GET /all_meals" do
    it "works! (now write some real specs)" do
      get all_meals_path
      expect(response).to have_http_status(200)
    end
  end
end
