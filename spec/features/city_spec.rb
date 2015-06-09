require 'rails_helper'

describe 'searching for a city' do

  it 'a user can search for a city' do 
    visit '/'
    click_link 'Search your City'
    fill_in 'Name', with: 'London'
    click_button 'Submit'

    expect(page).to have_content 'London'
    end
end