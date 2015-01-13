require 'rails_helper'

RSpec.describe "UserPages", type: :request do
  subject { page }

  describe 'signup page' do
    before { visit signup_path }
    it { have_content('Sign up') }
    it { have_title(full_title('Sign up')) }
  end
end
