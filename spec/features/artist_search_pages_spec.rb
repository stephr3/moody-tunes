require 'rails_helper'

describe "the search for artist tracks process",:vcr => true do
  it "displays artist top tracks" do
    visit root_path
    fill_in 'artist-search', :with => 'tom petty'
    click_button 'Search for an Artist'
    expect(page).to have_content 'Top Tracks'
  end

  it "gives error when search term is not in database" do
    visit root_path
    fill_in 'artist-search', :with => '11111'
    click_button 'Search for an Artist'
    expect(page).to have_content 'Your search returned no artists.'
  end
end
