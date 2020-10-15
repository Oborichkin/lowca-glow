class CreateGeeks < ActiveRecord::Migration[6.0]
  def change
    create_table :geeks do |t|
      t.string :name
      t.string :stacl
      t.text :cv

      t.timestamps
    end
  end
end
