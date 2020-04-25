class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :experience
      t.string :typeOfSkill
      t.belongs_to :candidate

      t.timestamps
    end
  end
end
