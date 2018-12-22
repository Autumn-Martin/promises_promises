require 'rails_helper'

feature 'User views all promises' do
  context 'As a user on "/promises"' do
    it 'I view all promises' do

      promise_1 = Promise.create(content: "Solve mysteries",
                                 maker_name: "Dipper")
      promise_2 = Promise.create(content: "Find a unicorn",
                                 maker_name: "Mabel")
      promise_3 = Promise.create(content: "Pay back $5",
                                 maker_name: "Grunkle Stan")
      promise_4 = Promise.create(content: "Become a hero",
                                 maker_name: "Soos")
      promise_5 = Promise.create(content: "Be cool and save the day",
                                 maker_name: "Wendy")

      visit promises_path

      expect(current_path).to eq(promises_path)
      expect(page).to have_content(promise_1.maker_name)
      expect(page).to have_content(promise_2.maker_name)
      expect(page).to have_content(promise_3.maker_name)
      expect(page).to have_content(promise_4.maker_name)
      expect(page).to have_content(promise_5.maker_name)

      expect(page).to have_content(promise_1.content)
      expect(page).to have_content(promise_2.content)
      expect(page).to have_content(promise_3.content)
      expect(page).to have_content(promise_4.content)
      expect(page).to have_content(promise_5.content)
    end 
  end
end
