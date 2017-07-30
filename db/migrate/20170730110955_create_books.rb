class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.references  :publisher, index: true
      
      t.string  :name, null: false
      
      t.timestamps
    end
  end
end
