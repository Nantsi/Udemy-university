class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :short
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
