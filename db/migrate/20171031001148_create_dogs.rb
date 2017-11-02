class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :pound_location
      t.string :description
      t.integer :age
      t.attachment :image

      t.timestamps
    end
  end
end
