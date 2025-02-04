class CreateStatuses < ActiveRecord::Migration[8.0]
  def change
    create_table :statuses do |t|
      t.integer :project_status, default: 0
      t.timestamps
    end
  end
end