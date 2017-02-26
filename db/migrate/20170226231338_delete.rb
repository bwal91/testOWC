class Delete < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :password_diegst
  end
end
