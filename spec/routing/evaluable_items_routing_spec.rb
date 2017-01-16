require "spec_helper"

describe EvaluableItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/evaluable_items").should route_to("evaluable_items#index")
    end

    it "routes to #new" do
      get("/evaluable_items/new").should route_to("evaluable_items#new")
    end

    it "routes to #show" do
      get("/evaluable_items/1").should route_to("evaluable_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/evaluable_items/1/edit").should route_to("evaluable_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/evaluable_items").should route_to("evaluable_items#create")
    end

    it "routes to #update" do
      put("/evaluable_items/1").should route_to("evaluable_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/evaluable_items/1").should route_to("evaluable_items#destroy", :id => "1")
    end

  end
end