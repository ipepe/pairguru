require "rails_helper"

describe "Movies requests", type: :request do
  let!(:genres) { create_list(:genre, 5, :with_movies) }

  describe "movies list" do
    it "displays right page title" do
      visit "/movies"
      expect(page).to have_selector("h1", text: "Movies")
    end
    it "displays table rows" do
      visit "/movies"
      expect(page).to have_selector("table tr", count: 25)
    end
  end
end
