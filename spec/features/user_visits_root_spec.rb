require 'rails_helper'

describe "when use visits root" do
  it 'they fill in search criteria, submit and see 10 closest stations in electric and propane' do

    visit '/'

    within(".search-field") do
      fill_in "q", with: "80204"
    end

    click_on "Locate"

    expect(current_path).to eq('/search')
    expect(page).to have_content("My Search")
    expect(page).to have_content("80204")
    expect(page).to have_content("My Search")
    expect(page).to have_content("My Search")
    expect(page).to have_content("My Search")
    expect(page).to have_content("My Search")
  end
end
