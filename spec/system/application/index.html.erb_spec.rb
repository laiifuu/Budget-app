require 'rails_helper'

RSpec.describe 'application/index', type: :system do
  before do
    driven_by(:rack_test)
  end
  
  before(:each) do
    visit root_path
  end

  it "loads the app name" do
    expect(page).to have_content('SaveIT')
  end

  it "loads the app name" do
    expect(page).to have_content('SaveIT')
  end

  it "loads the app name" do
    expect(page).to have_content('SIGN UP')
  end
end
