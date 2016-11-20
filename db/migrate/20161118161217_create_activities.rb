class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.references :user, foreign_key: true
      t.integer :action_table_id
      t.string :action_type
      t.string :action_table_name

      t.timestamps
    end
  end
end
