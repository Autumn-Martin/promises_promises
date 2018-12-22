require 'rails_helper'

describe 'new promise page' do
  it 'should display a form for new promises' do
    visit promises_path
    click_on "Add Promise"

    expect(current_path).to eq(new_promise_path)
    expect(page).to have_content("Promise Maker Name:")
    expect(page).to have_content("The Promise:")
  end
end
