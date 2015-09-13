require "rails_helper"

RSpec.describe Api::V1::BoardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/boards").to route_to("api/v1/boards#index", format: "json")
    end

    it "routes to #new" do
      expect(get: "/api/v1/boards/new").not_to be_routable
    end

    it "routes to #show" do
      expect(get: "/api/v1/boards/1").to route_to("api/v1/boards#show", id: "1", format: "json")
    end

    it "routes to #edit" do
      expect(get: "/api/v1/boards/1/edit").not_to be_routable
    end

    it "routes to #create" do
      expect(post: "/api/v1/boards").to route_to("api/v1/boards#create", format: "json")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/boards/1").to route_to("api/v1/boards#update", id: "1", format: "json")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/boards/1").to route_to("api/v1/boards#update", id: "1", format: "json")
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/boards/1").to route_to("api/v1/boards#destroy", id: "1", format: "json")
    end
  end
end
