require "spec_helper"

describe Students2sController do
  describe "routing" do

    it "routes to #index" do
      get("/students2s").should route_to("students2s#index")
    end

    it "routes to #new" do
      get("/students2s/new").should route_to("students2s#new")
    end

    it "routes to #show" do
      get("/students2s/1").should route_to("students2s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/students2s/1/edit").should route_to("students2s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/students2s").should route_to("students2s#create")
    end

    it "routes to #update" do
      put("/students2s/1").should route_to("students2s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/students2s/1").should route_to("students2s#destroy", :id => "1")
    end

  end
end
