class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :projects, :plannings_start_date, :planning_start_date
  end
end
