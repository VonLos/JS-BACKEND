class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :link
      t.belongs_to :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
