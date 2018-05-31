class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.timestamp :start_at
      t.timestamp :end_at
      t.string :room
      t.belongs_to :instance

      t.timestamps
    end
  end
end
