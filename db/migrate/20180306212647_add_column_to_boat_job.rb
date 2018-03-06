class AddColumnToBoatJob < ActiveRecord::Migration[5.2]
  def change
    add_reference :boat_jobs, :job, foreign_key: true
    remove_column :boat_jobs, :user_id
  end
end
