class AddDogToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :dog, foreign_key: true
  end
end
