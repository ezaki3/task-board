require "rails_helper"

RSpec.describe Api::V1::UsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/users").to route_to("api/v1/users#index", format: "json")
    end

    it "routes to #new" do
      expect(get: "/api/v1/users/new").not_to be_routable
    end

    it "routes to #show" do
      expect(get: "/api/v1/users/1").to route_to("api/v1/users#show", id: "1", format: "json")
    end

    it "routes to #edit" do
      expect(get: "/api/v1/users/1/edit").not_to be_routable
    end

    it "routes to #create" do
      expect(post: "/api/v1/users").not_to be_routable
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/users/1").not_to be_routable
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/users/1").not_to be_routable
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/users/1").not_to be_routable
    end

    it "routes to #current" do
      expect(get: "/api/v1/users/current").to route_to("api/v1/users#current", format: "json")
    end
  end
end
