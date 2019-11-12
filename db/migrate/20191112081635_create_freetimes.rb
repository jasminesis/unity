class CreateFreetimes < ActiveRecord::Migration[5.2]
  def change
    create_table :freetimes do |t|
      t.datetime :free_time
      t.timestamps
    end
  end
end
