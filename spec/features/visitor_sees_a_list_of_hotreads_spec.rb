require 'rails_helper'

describe 'Visitor sees all links' do
  before do
    @google = HotRead.create(url: "https://google.com", read_count: 10)
    @face = HotRead.create(url: "https://facebook.com", read_count: 9)
    @insta = HotRead.create(url: "https://instagram.com", read_count: 8)
    @stack = HotRead.create(url: "https://stackoverflow.com", read_count: 7)
    @reddit = HotRead.create(url: "https://reddit.com", read_count: 6)
    @npr = HotRead.create(url: "https://npr.org", read_count: 5)
    @yahoo = HotRead.create(url: "https://yahoo.com", read_count: 4)
    @wik = HotRead.create(url: "https://wikepedia.org", read_count: 3)
    @git = HotRead.create(url: "https://github.com", read_count: 2)
    @turing = HotRead.create(url: "https://turing.io", read_count: 2)
    @twitter = HotRead.create(url: "https://twitter.com", read_count: 1)
    @myspace = HotRead.create(url: "https://myspace.com", read_count: 12, updated_at: (Date.today - 3))
  end

  scenario 'when visiting root path' do
    visit root_path

    expect(page).to have_content ("https://google.com")
    expect(page).to have_content ("https://turing.io")
  end

  scenario 'only top ten hot read links are shown' do
    visit root_path
    expect(page).to_not have_content ("https://twitter.com")
  end

  scenario 'only links read within the last 24 hours are shown' do
    visit root_path
    expect(page).to_not have_content ("https://myspace.com")
  end
end
