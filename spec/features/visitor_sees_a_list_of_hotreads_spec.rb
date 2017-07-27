require 'rails_helper'

describe 'Visitor sees all links' do
  before do
    @google = HotRead.create(url: "https://google.com", read_count: 2)
    @turing = HotRead.create(url: "https://turing.io", read_count: 1)
  end

  scenario 'when visiting root path' do
    visit root_path

    expect(page).to have_content ("https://google.com")
    expect(page).to have_content ("https://turing.io")
  end
end
