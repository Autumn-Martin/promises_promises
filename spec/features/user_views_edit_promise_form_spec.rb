require 'rails_helper'

describe 'edit promise page' do
  it 'should display a form to edit a promise' do
    promise = Promise.create(content: "Just keep being Pikachu",
                               maker_name: "Pikachu")

    visit promises_path

    expect(page).to have_link("Update Promise")

    within("#promise-#{promise.id}") do
      click_on "Update Promise"
    end
    expect(current_path).to eq(edit_promise_path(promise))
    expect(page).to have_content("Promise maker name:")
    expect(page).to have_content("The promise:")
  end
end
