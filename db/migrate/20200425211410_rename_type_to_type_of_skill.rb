class RenameTypeToTypeOfSkill < ActiveRecord::Migration[5.2]
  def change
    rename_column :skills, :type, :typeOfSkill
  end
end
