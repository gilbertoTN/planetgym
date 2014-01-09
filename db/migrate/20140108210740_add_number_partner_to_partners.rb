class AddNumberPartnerToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :number_partner, :integer
  end
end
