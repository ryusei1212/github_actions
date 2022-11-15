class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :contents, null: false, default: ''

      t.timestamps
    end
  end
end
