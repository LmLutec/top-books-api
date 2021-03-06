class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :release_date
      t.string :genre
      t.string :description

      t.timestamps
    end
  end
end
