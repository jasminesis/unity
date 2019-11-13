class CreateFreetimes < ActiveRecord::Migration[5.2]
  def change
    create_table :freetimes do |t|
      t.datetime :time
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
