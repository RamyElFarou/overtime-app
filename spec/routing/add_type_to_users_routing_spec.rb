require "rails_helper"

RSpec.describe AddTypeToUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/add_type_to_users").to route_to("add_type_to_users#index")
    end

    it "routes to #new" do
      expect(:get => "/add_type_to_users/new").to route_to("add_type_to_users#new")
    end

    it "routes to #show" do
      expect(:get => "/add_type_to_users/1").to route_to("add_type_to_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/add_type_to_users/1/edit").to route_to("add_type_to_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/add_type_to_users").to route_to("add_type_to_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/add_type_to_users/1").to route_to("add_type_to_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/add_type_to_users/1").to route_to("add_type_to_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/add_type_to_users/1").to route_to("add_type_to_users#destroy", :id => "1")
    end

  end
end
