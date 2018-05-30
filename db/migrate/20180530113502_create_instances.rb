class CreateInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :instances do |t|
      t.string :code
      t.timestamp :start_at
      t.timestamp :end_at
      t.belongs_to :study

      t.timestamps
    end
  end
end
