class RemoveProjectIdFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :project_id, :integer
  end
end
