class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :first_name, null: false, default: ''
      t.string :last_name, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :mobile_phone, null: false, default: ''
      t.text :meta
      t.belongs_to :season

      t.timestamps null: false
    end
  end
end
