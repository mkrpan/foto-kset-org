class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :title, null: false, default: ''
      t.datetime :start_date, null: false
      t.datetime :end_time, null: false
      t.integer :type, null: false, default: 0

      t.timestamps null: false
    end
  end
end
