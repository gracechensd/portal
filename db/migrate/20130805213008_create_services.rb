class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :services, [:name, :created_at]
  end
end
