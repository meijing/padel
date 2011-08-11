require "spec_helper"

describe ConfirmationsController do
  describe "routing" do

    it "routes to #index" do
      get("/confirmations").should route_to("confirmations#index")
    end

    it "routes to #new" do
      get("/confirmations/new").should route_to("confirmations#new")
    end

    it "routes to #show" do
      get("/confirmations/1").should route_to("confirmations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/confirmations/1/edit").should route_to("confirmations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/confirmations").should route_to("confirmations#create")
    end

    it "routes to #update" do
      put("/confirmations/1").should route_to("confirmations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/confirmations/1").should route_to("confirmations#destroy", :id => "1")
    end

  end
end
