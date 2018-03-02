class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :containers_needed
      t.string :origin
      t.string :destination
      t.string :description
      t.integer :cost
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
