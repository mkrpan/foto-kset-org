class RenameEndDateForSeasons < ActiveRecord::Migration
  def change
    rename_column :seasons, :end_time, :end_date
  end
end
