require 'rails_helper'

describe "the search for artist tracks process",:vcr => true do
  it "displays artist top tracks" do
    visit root_path
    fill_in 'artist-search', :with => 'tom petty'
    click_button 'Search for an Artist'
    expect(page).to have_content 'Top Tracks'
  end
end
