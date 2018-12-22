require 'rails_helper'
describe Promise, type: :model do
  describe 'validations' do
    it {should validate_presence_of :maker_name}
    it {should validate_presence_of :content}
    it {should validate_presence_of :status}
  end
end
