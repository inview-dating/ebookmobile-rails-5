require "rails_helper"

RSpec.describe AuthorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/authors").to route_to("authors#index")
    end

    it "routes to #new" do
      pending "Fuller implementation"
      expect(:get => "/authors/new").to route_to("authors#new")
    end

    it "routes to #show" do
      pending "Fuller implementation"
      expect(:get => "/authors/1").to route_to("authors#show", :id => "1")
    end

    it "routes to #edit" do
      pending "Fuller implementation"
      expect(:get => "/authors/1/edit").to route_to("authors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/authors").to route_to("authors#create")
    end

    it "routes to #update via PUT" do
      pending "Fuller implementation"
      expect(:put => "/authors/1").to route_to("authors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      pending "Fuller implementation"
      expect(:patch => "/authors/1").to route_to("authors#update", :id => "1")
    end

    it "routes to #destroy" do
      pending "Fuller implementation"
      expect(:delete => "/authors/1").to route_to("authors#destroy", :id => "1")
    end

  end
end
