class AddInteresToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :interest, :integer
  end
end
