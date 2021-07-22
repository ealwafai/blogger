require 'rails_helper'

RSpec.describe 'Articles Index Page' do
  describe 'user visits /articles' do
    it 'lists all articles' do
      article_1 = Article.create!(title: "Title 1", body: "Body 1")
      article_2 = Article.create!(title: "Title 2", body: "Body 2")

      visit '/articles'

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_2.title)
      expect(page).to have_content(article_1.body)
      expect(page).to have_content(article_2.body)
    end
  end
end
