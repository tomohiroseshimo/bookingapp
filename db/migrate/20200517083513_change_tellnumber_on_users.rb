class ChangeTellnumberOnUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :tellnumber, :integer, limit: 5
  end
end