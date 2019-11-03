require "rails_helper"

RSpec.describe ArcanasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/arcanas").to route_to("arcanas#index")
    end

    it "routes to #show" do
      expect(:get => "/arcanas/1").to route_to("arcanas#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/arcanas").to route_to("arcanas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/arcanas/1").to route_to("arcanas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/arcanas/1").to route_to("arcanas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/arcanas/1").to route_to("arcanas#destroy", :id => "1")
    end
  end
end
