require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validation tests' do
    it 'is not valid without author' do
      book = Book.create(title:'new title')
      expect(book).to_not be_valid
    end

    it 'is valid' do
      author = Author.create(name:'new author')
      book = Book.create(title:'title1', author:author)
      expect(book).to be_valid
    end
  end
end
