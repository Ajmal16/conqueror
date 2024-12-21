class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :status
      t.string :priority
      t.date :date
      t.reference :project, null: false, foreign_key: true
      t.reference :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
