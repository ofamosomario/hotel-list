class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string 			:name, limit: 255
      t.belongs_to 	:hotel, foreign_key: true

      t.timestamps
    end
  end
end
