require 'rails_helper'

RSpec.feature 'Create Event', type: :feature do
  scenario 'User creates a event' do
    visit '/events/new'

    fill_in 'Title', with: 'My new Event'
    click_button 'Create Event'

    expect(page).to have_text('Event was successfully created.')
  end
end
