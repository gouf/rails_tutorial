require 'rails_helper'

RSpec.describe 'AuthenticationPages', type: :request do
  subject { page }

  describe 'signin page' do
    before { visit signin_path }

    it { is_expected.to have_content('Sign in') }
    it { is_expected.to have_title('Sign in') }

    describe 'with invalid information' do
      before { click_button 'Sign in' }

      it { is_expected.to have_title('Sign in') }
      it { is_expected.to have_selector('div.alert.alert-error', text: 'Invalid') }

      describe 'after visiting another page' do
        before { click_link 'Home' }
        it { is_expected.to_not have_selector('div.alert.alert-error') }
      end
    end

    describe 'with valid information' do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in 'Email',    with: user.email.upcase
        fill_in 'Password', with: user.password
        click_button 'Sign in'
      end
    end
  end
end
