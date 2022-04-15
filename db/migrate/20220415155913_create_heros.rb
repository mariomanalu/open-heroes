class CreateHeros < ActiveRecord::Migration[7.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :field
      t.text :description
      t.string :phone

      t.timestamps
    end
  end
end
