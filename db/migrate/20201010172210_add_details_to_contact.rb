class AddDetailsToContact < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :firstName, :string
    add_column :contacts, :lastName, :string
    add_column :contacts, :subject, :string
    add_column :contacts, :email, :string
    add_column :contacts, :message, :string
  end
end
