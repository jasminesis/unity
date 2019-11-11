class AddOnlineStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :online_status, :string
    add_column :users, :show_status, :string
  end
end
