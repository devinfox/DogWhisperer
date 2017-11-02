class AddAdoptorIdToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :adoptor_id, :integer
  end
end
