class SchedulesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules_users do |t|
      t.references :schedule
      t.references :user
      t.timestamps
    end
  end
end
