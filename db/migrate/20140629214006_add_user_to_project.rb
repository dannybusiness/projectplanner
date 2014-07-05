class AddUserToProject < ActiveRecord::Migration
  def change
    add_column :projects, :user, :integer
  end
end
