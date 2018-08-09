class CreateItems < ActiveRecord::Migration[5.2]
  def change
  	enable_extension 'uuid-ossp'
  	
    create_table :items, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.string :item_name
      t.text :details
      t.string :brand
      t.integer :count
      t.string :supplier

      t.timestamps
    end
  end
end
