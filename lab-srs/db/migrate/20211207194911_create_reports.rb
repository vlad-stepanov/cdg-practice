class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :grade

      t.timestamps
    end
  end
end
