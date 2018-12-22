require 'rails_helper'

feature 'User creates a promise' do
  context 'as a user on "/promises/new"' do
    context 'when I fill out a form & clicks submit' do
      scenario 'I create a promise' do
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
    context 'when I fill out form incorrectly & click submit' do
      scenario 'I view the new promise form and an error message' do
        visit new_promise_path

        click_on 'Create Promise'

        expect(page).to have_content('Something went wrong. Please make sure you are completing all fields')
        expect(page).to have_content('Promise maker name:')
        expect(page).to have_content('The promise:')
      end
    end
  end
end
