require "spec_helper"

describe HoldingsController do
  describe "routing" do

    it "routes to #index" do
      get("/holdings").should route_to("holdings#index")
    end

    it "routes to #new" do
      get("/holdings/new").should route_to("holdings#new")
    end

    it "routes to #show" do
      get("/holdings/1").should route_to("holdings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/holdings/1/edit").should route_to("holdings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/holdings").should route_to("holdings#create")
    end

    it "routes to #update" do
      put("/holdings/1").should route_to("holdings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/holdings/1").should route_to("holdings#destroy", :id => "1")
    end

  end
end
