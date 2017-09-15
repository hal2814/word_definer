require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_excepeptions, false)

describe('list path', {:type => :feature}) do
  it "will display user input into list" do
    visit('/')
    fill_in('theWord', :with => "Endemic")
    fill_in('theDefinition', :with => "Native to a specific region or environment and not occurring naturally anywhere else.")


    click_button('Add word')
    expect(page).to have_content("Endemic")
  end
  it "display name of clicked item" do
    visit('/')
    click_link("Endemic")
    expect(page).to have_content("Endemic")
    expect(page).to have_content("Native to a specific region or environment and not occurring naturally anywhere else.")
  end
  # it "delete item" do
  #   visit('/word/1')
  #   click_button('Delete!')
  #   visit('/')
  #   expect(page).to have_no_content("Endemic")
  # end
  # it "will modify object" do
  #   visit('/')
  #   fill_in('word', :with => 'Nate')
  #   fill_in('definition', :with => 'McGregor')
  #
  #   click_button('Go!')
  #   visit('/word/1')
  #   click_link('Update your contact')
  #   visit('/update/1')
  #   fill_in('word', :with => "Endemic")
  #   fill_in('definition', :with => "Native to a specific region or environment and not occurring naturally anywhere else.")
  #
  #   click_button('Update')
  #   visit('/')
  #   expect(page).to have_content("Endemic")
  #   expect(page).to have_content("Native to a specific region or environment and not occurring naturally anywhere else.")
  # end
end
