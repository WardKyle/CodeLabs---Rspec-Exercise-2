require 'rails_helper'

RSpec.describe "Authors", type: :request do
  describe "GET /author" do
    let (:author) {create(:author)}
    it "returns all books" do
      get '/author'
      expect(response.body).to eq(Author.books.to_json)
    end
  end

  describe "DELETE /author" do
    let(:author) {destroy(:author)}

    it "it deletes all books" do
      delete '/author'
      expect(response.body).to_not include(author.books)
    end
  end
end
