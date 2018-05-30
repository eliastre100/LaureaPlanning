class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.string :name
      t.integer :credits
      t.integer :semester
      t.belongs_to :establishment

      t.timestamps
    end
  end
end
