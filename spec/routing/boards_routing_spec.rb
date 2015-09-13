require "rails_helper"

RSpec.describe BoardsController, type: :routing do
  describe "routing" do
    it "routes to top" do
      expect(get: "/").to route_to("boards#index")
    end

    it "routes to #index" do
      expect(get: "/boards").to route_to("boards#index")
    end

    it "routes to #show" do
      expect(get: "/boards/1").to route_to("boards#show", id: "1")
    end
  end
end
