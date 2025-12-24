class CreateIdeas < ActiveRecord::Migration[8.1]
  def change
    create_table :ideas do |t|
      t.text :description
      t.string :author
      t.timestamps
    end
  end
end
