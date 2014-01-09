class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :address
      t.string :colony
      t.date :entry
      t.string :sex
      t.date :birthday
      t.string :phone
      t.string :background
      t.string :observations
      t.string :email
      t.string :link
      t.string :image
      t.string :provider
      t.string :uid
      t.boolean :active
      t.boolean :publish

      t.timestamps
    end
  end

  def down
    drop_table :partners
  end

end
