class AddPhoneNumberToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :phone_number, :string
  end
end
