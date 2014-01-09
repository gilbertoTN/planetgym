class AddStatusToPartners < ActiveRecord::Migration

  def change
    add_column :partners, :status, :boolean, default: false
  end

	def down
		remove_column :partners, :status
	end

end
