class RemoveUniqueAdminRequirement < ActiveRecord::Migration
  def change
    add_index :admins, :email,                unique: false
    add_index :admins, :reset_password_token, unique: false

  end
end
