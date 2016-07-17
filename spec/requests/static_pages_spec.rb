require 'spec_helper'
require 'rails_helper'

RSpec.describe "Static pages", type: :request do

  #let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home page", type: :request do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page", type: :request do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page", type: :request do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page", type: :request do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end