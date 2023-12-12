class CreateTuesday12decemers < ActiveRecord::Migration[7.1]
  def change
    create_table :tuesday12decemers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :phone
      t.text :description
      t.boolean :personaldata

      t.timestamps
    end
  end
end
