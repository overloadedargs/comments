class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :comments, :comment, limit: 255
      t.timestamps
    end
  end
end
