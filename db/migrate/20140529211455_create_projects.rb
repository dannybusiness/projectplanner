class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :plannings_start_date
      t.date :planning_end_date
      t.date :implementation_start_date
      t.date :implementation_end_date

      t.timestamps
    end
  end
end
