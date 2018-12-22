class Promise < ApplicationRecord
  validates_presence_of :content, :maker_name, :status
end
