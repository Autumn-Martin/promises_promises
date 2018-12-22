class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :content
      t.string :status, default: "in progress"
      t.string :maker_name
    end
  end
end
