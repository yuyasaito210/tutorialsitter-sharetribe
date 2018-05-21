class AddPhoneNumber1ToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :phone_number1, :string
  end
end
