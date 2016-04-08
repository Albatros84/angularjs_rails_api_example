class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :cui
      t.string :label
      t.text :synonyms

      t.timestamps
    end

    add_index :conditions, :cui, unique: true
    add_index :conditions, :label, unique: true
    add_index :conditions, :synonyms
  end
end
