class AddColumnsInUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :companyname, :string
    add_column :users, :position, :string
    add_column :users, :email, :string
    add_column :users, :phoneno, :string
    add_column :users, :alternatephoneno, :string
    add_column :users, :username, :string
    add_column :users, :password, :string

    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
