require 'rails_helper'

RSpec.describe "UserPages", type: :request do
  subject { page }

  describe 'signup page' do
    before { visit signup_path }
    it { is_expected.to have_content('Sign up') }
    it { is_expected.to have_title(full_title('Sign up')) }
  end

  describe 'signup page' do
    before { visit user_path(user) }

    it { have_content(user.name) }
    it { have_title(user.name) }
  end
end
