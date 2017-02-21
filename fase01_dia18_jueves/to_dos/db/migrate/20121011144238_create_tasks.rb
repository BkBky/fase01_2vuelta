class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      # Completa con las columnas que necesites

      t.string :name
      t.boolean :status, default: false
    end
  end
end
