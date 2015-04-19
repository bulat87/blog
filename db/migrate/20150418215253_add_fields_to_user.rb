class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :patronymic, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
  end
end
