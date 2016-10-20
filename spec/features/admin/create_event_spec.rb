require 'rails_helper'

RSpec.feature 'Create Event', type: :feature do
  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user, run_callbacks: false)
  end

  scenario 'User creates a event' do
    visit '/admin/events/new'

    fill_in 'Título',        with: 'My new Event'
    fill_in 'URL do Meetup', with: 'http://www.meetup.com/pt-BR/opensanca/events/231944281/'
    click_button 'Criar Evento'

    expect(page).to have_text('Evento criado com sucesso.')
  end

  scenario 'With invalid parameters' do
    visit '/admin/events/new'

    fill_in 'Título',        with: ''
    fill_in 'URL do Meetup', with: ''
    click_button 'Criar Evento'

    expect(page).not_to have_text('Evento criado com sucesso.')
  end
end
