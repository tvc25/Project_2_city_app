require 'rails_helper'

describe 'showing events in chosen city' do

  it 'a user can create an event' do 
    visit '/events'
    click_link 'Add an Event'
    fill_in 'Name', with: 'Concert'
    fill_in 'Location', with: 'Concert'
    click_button 'Submit'

    expect(page).to have_content 'Concert'
    end
end