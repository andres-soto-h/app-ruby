class ChangeEmailFromStudents < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :email, :text
 end
end
