class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :field
      t.text :stories
      t.string :phone

      t.timestamps
    end
  end
end
