require 'rails_helper'

describe 'promise creation' do
  describe 'when a user fills out a form & clicks submit' do
    it 'allows a user to create a promise' do
      visit new_promise_path

      fill_in :promise_maker_name, with: 'Finn'
      fill_in :promise_content, with: 'Build a spaceship'

      click_on 'Create Promise'

      new_promise = Promise.last

      expect(new_promise.maker_name).to eq('Finn')
      expect(current_path).to eq(promises_path)
      expect(page).to have_content('Finn')
      expect(page).to have_content('Build a spaceship')
    end
  end
  describe 'when a user fills out form incorrectly & clicks submit' do
    it 'displays the new promise form and an error message' do
      visit new_promise_path

      click_on 'Create Promise'

      expect(page).to have_content('Something went wrong. Please make sure you are completing all fields')
      expect(page).to have_content('Promise maker name:')
      expect(page).to have_content('The promise:')
    end
  end
end
