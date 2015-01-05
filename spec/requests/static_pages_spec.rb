require 'rails_helper'

describe 'StaticPages', type: :feture do
  subject { page }

  describe 'Home page' do
    before { visit root_path }

    it { have_content('Sample App') }

    it { have_title(full_title) }

    it { have_not_title('| Home') }
  end

  describe 'Help page' do
    before { visit help_path }

    it { have_content('Help') }

    it { have_title(full_title('Help')) }
  end

  describe 'About page' do
    before { visit about_path }

    it { have_content('About Us') }

    it { have_title(full_title('About Us')) }
  end

  describe 'Contact page' do
    before { visit contact_path }

    it { have_content('Contact') }

    it { have_title(full_title('Contact')) }
  end
end
