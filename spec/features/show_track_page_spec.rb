require 'rails_helper'

describe "the view track page process", :vcr => true do
  it "shows track info" do
    visit ('/')
    fill_in 'artist-search', :with => 'Moondog'
    click_button 'Search for an Artist'
    click_link 'New Amsterdam'
    expect(page).to have_content 'New Amsterdam by Moondog'
  end
end
