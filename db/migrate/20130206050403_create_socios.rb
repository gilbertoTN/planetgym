class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
      t.string :name
      t.string :address
      t.string :colony
      t.date :entry
      t.string :sex
      t.date :birthday
      t.string :phone
      t.boolean :background
      t.string :observations

      t.timestamps
    end
  end
end
