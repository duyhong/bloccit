require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:ad) {Advertisement.create!(title: "New Ad Title", body: "New Ad Body", price: 100)}

  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(ad).to have_attributes(title: "New Ad Title", body: "New Ad Body", price: 100)
    end
  end
end
