require 'rails_helper'

RSpec.describe Event, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:meetup_url) }

  describe 'meetup_url format' do
    subject { build(:event, meetup_url: meetup_url) }

    context 'with http, without www and with event id on url' do
      let(:meetup_url) { 'http://meetup.com/pt-BR/opensanca/events/231944281/' }

      it { is_expected.to be_valid }
    end

    context 'with https, without www and with the event id on url' do
      let(:meetup_url) { 'https://meetup.com/pt-BR/opensanca/events/231944281/' }

      it { is_expected.to be_valid }
    end

    context 'with http, with www and with the event id on url' do
      let(:meetup_url) { 'http://www.meetup.com/pt-BR/opensanca/events/231944281/' }

      it { is_expected.to be_valid }
    end

    context 'with http, with www and with the event id on url' do
      let(:meetup_url) { 'http://www.meetup.com/pt-BR/opensanca/events/231944281/' }

      it { is_expected.to be_valid }
    end

    context 'without event id on url' do
      let(:meetup_url) { 'http://www.meetup.com/pt-BR/opensanca/events' }

      it { is_expected.not_to be_valid }
    end

    context 'a non meetup url' do
      let(:meetup_url) { 'http://www.google.com.br/test' }

      it { is_expected.not_to be_valid }
    end
  end
end
