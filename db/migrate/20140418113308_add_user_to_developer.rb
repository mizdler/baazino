class AddUserToDeveloper < ActiveRecord::Migration
  def change
    add_reference :developers, :user, index: true
  end
end
