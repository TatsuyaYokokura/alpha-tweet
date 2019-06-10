class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string, length: 8
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :homepage, :string
    add_column :users, :image, :string
  end
end
