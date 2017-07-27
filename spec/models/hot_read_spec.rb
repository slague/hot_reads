require 'rails_helper'

RSpec.describe HotRead, type: :model  do
  describe "validations" do
    context "a hot read is valid with all attributes" do
      it { should validate_presence_of(:url) }
    end

    context "default read count is 1" do
      it "is initialized with a count of one" do
      h_r = HotRead.create(url: "https://google.com")
      expect(h_r.read_count).to eq(1)
    end

  end

  context "invalid" do
    it "link is invalid without a url" do
      h_r = HotRead.new()
      expect(h_r).to_not be_valid
    end
  end
end

  describe "attributes" do

    it "responds to url, created_at, updated_at, read_count" do
      h_r = HotRead.create(url: "https://google.com")
      expect(h_r).to respond_to(:url, :created_at, :updated_at, :read_count)
    end
  end
end
