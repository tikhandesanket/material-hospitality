class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_type, :string
    add_column :users, :mobile_num, :integer
    add_column :users, :address, :text
    add_column :users, :language, :string
    add_column :users, :mobile_num2, :integer
  end
end
