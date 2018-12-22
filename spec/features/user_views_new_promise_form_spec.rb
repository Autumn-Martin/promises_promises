require 'rails_helper'

feature 'User views new promise form' do
  context 'As a user on "/promises"' do
    context 'When I click on "Add Promises"' do
      scenario 'I view a form for new promises' do
        visit promises_path
        click_on "Add Promise"

        expect(current_path).to eq(new_promise_path)
        expect(page).to have_content("Promise maker name:")
        expect(page).to have_content("The promise:")
      end
    end
  end
end
