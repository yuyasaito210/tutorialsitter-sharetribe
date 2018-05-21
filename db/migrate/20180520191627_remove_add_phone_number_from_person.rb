class RemoveAddPhoneNumberFromPerson < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :phone_number
  end
end
