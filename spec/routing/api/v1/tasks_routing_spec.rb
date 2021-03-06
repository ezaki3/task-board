require "rails_helper"

RSpec.describe Api::V1::TasksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/tasks").not_to be_routable
      expect(get: "/api/v1/groups/1/tasks").to route_to("api/v1/tasks#index", format: "json", group_id: "1")
    end

    it "routes to #new" do
      expect(get: "/api/v1/tasks/new").not_to be_routable
    end

    it "routes to #show" do
      expect(get: "/api/v1/tasks/1").to route_to("api/v1/tasks#show", id: "1", format: "json")
    end

    it "routes to #edit" do
      expect(get: "/api/v1/tasks/1/edit").not_to be_routable
      expect(get: "/api/v1/groups/1/tasks/1/edit").not_to be_routable
    end

    it "routes to #create" do
      expect(post: "/api/v1/tasks").not_to be_routable
      expect(post: "/api/v1/groups/1/tasks").to route_to("api/v1/tasks#create", format: "json", group_id: "1")
    end

    it "routes to #dry_create" do
      expect(post: "/api/v1/groups/1/tasks/dryrun").to route_to("api/v1/tasks#dry_create", format: "json", group_id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/tasks/1").to route_to("api/v1/tasks#update", id: "1", format: "json")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/tasks/1").to route_to("api/v1/tasks#update", id: "1", format: "json")
    end

    it "routes to #dry_update via PUT" do
      expect(put: "/api/v1/tasks/1/dryrun").to route_to("api/v1/tasks#dry_update", id: "1", format: "json")
    end

    it "routes to #dry_update via PATCH" do
      expect(patch: "/api/v1/tasks/1/dryrun").to route_to("api/v1/tasks#dry_update", id: "1", format: "json")
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/tasks/1").to route_to("api/v1/tasks#destroy", id: "1", format: "json")
    end
  end
end
