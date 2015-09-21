require "rails_helper"

RSpec.describe Api::V1::GroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/groups").not_to be_routable
      expect(get: "/api/v1/boards/1/groups").to route_to("api/v1/groups#index", format: "json", board_id: "1")
    end

    it "routes to #new" do
      expect(get: "/api/v1/groups/new").not_to be_routable
    end

    it "routes to #show" do
      expect(get: "/api/v1/groups/1").to route_to("api/v1/groups#show", id: "1", format: "json")
    end

    it "routes to #edit" do
      expect(get: "/api/v1/groups/1/edit").not_to be_routable
      expect(get: "/api/v1/boards/1/groups/1/edit").not_to be_routable
    end

    it "routes to #create" do
      expect(post: "/api/v1/groups").not_to be_routable
      expect(post: "/api/v1/boards/1/groups").to route_to("api/v1/groups#create", format: "json", board_id: "1")
    end

    it "routes to #dry_create" do
      expect(post: "/api/v1/boards/1/groups/dryrun").to route_to("api/v1/groups#dry_create", format: "json", board_id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/groups/1").to route_to("api/v1/groups#update", id: "1", format: "json")
    end

    it "routes to #dry_update via PUT" do
      expect(put: "/api/v1/groups/1/dryrun").to route_to("api/v1/groups#dry_update", id: "1", format: "json")
    end

    it "routes to #dry_update via PATCH" do
      expect(patch: "/api/v1/groups/1/dryrun").to route_to("api/v1/groups#dry_update", id: "1", format: "json")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/v1/groups/1").to route_to("api/v1/groups#destroy", id: "1", format: "json")
    end
  end
end
