require 'rails_helper'

describe 'promise show page' do
  it 'should display info for one promise' do
    promise_1 = Promise.create(content: "Make gingersnap cookies",
                               maker_name: "Jake")
    promise_2 = Promise.create(content: "Build an igloo",
                               maker_name: "Finn")
    visit promises_path

    within("#promise-#{promise_1.id}") do
      click_on promise_1.content
    end

    expect(current_path).to eq(promise_path(promise_1))
    expect(page).to have_content(promise_1.content)
    expect(page).to have_content(promise_1.content)
    expect(page).to_not have_content(promise_2.maker_name)
    expect(page).to_not have_content(promise_2.maker_name)
  end
end
