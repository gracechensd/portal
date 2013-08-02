class AddPartsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :b_index, :string
    add_column :projects, :schedule, :integer
    add_column :projects, :ret_per, :integer
    add_column :projects, :status, :integer
  end
end
