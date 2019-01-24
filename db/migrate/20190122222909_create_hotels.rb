class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string 			:name,				limit: 255
      t.string 			:location,		limit: 255
      t.decimal 		:price, 			precision: 8, scale: 2

      t.references  :user, 				foreign_key: true

      t.timestamps
    end
  end
end
