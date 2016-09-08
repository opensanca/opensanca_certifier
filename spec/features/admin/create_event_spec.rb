require 'rails_helper'

RSpec.feature 'Create Event', type: :feature do
  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user, run_callbacks: false)
  end

  scenario 'User creates a event' do
    visit '/admin/events/new'

    fill_in 'Title',      with: 'My new Event'
    fill_in 'Meetup url', with: 'http://www.meetup.com/pt-BR/opensanca/events/231944281/'
    click_button 'Create Event'

    expect(page).to have_text('Event was successfully created.')
  end

  scenario 'With invalid parameters' do
    visit '/admin/events/new'

    fill_in 'Title',      with: ''
    fill_in 'Meetup url', with: ''
    click_button 'Create Event'

    expect(page).not_to have_text('Event was successfully created.')
  end
end
