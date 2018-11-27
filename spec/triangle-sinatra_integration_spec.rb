require('triangle-sinatra')
require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entry and returns what type of triangle it is') do
    visit('/input')
    fill_in('sideA', :with => '1')
    fill_in('sideB', :with => '1')
    fill_in('sideC', :with => '2')
    click_button('Submit')
    expect(page).to have_content('not a triangle')
  end

  it('processes the user entry and returns what type of triangle it is') do
    visit('/input')
    fill_in('sideA', :with => '1')
    fill_in('sideB', :with => '1')
    fill_in('sideC', :with => '1')
    click_button('Submit')
    expect(page).to have_content('equilateral triangle')
  end

  it('processes the user entry and returns what type of triangle it is') do
      visit('/input')
      fill_in('sideA', :with => '2')
      fill_in('sideB', :with => '2')
      fill_in('sideC', :with => '3')
      click_button('Submit')
      expect(page).to have_content('isosceles triangle')
  end

  it('processes the user entry and returns what type of triangle it is') do
      visit('/input')
      fill_in('sideA', :with => '3')
      fill_in('sideB', :with => '4')
      fill_in('sideC', :with => '5')
      click_button('Submit')
      expect(page).to have_content('scalene triangle')
  end

end
