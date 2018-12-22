require 'rails_helper'

feature 'User updates promises' do
  context 'As a user on "/promises"' do
    context 'When I click on "Update Promise"' do
      it 'should display a form to edit a promise' do
        promise = Promise.create(content: "Stop picking on Pikachu",
                                   maker_name: "Meowth")

        visit edit_promise_path(promise)

        select "done", from: :promise_status
        click_on "Update Promise"

        expect(current_path).to eq(promises_path)

        within("#promise-#{promise.id}") do
          expect(page).to have_content("done")
        end
        promise.reload
        expect(promise.status).to eq("done")
      end
    end 
  end
end
