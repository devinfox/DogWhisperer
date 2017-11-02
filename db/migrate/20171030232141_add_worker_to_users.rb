class AddWorkerToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :worker, :boolean
  end
end
