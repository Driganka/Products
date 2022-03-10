class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :pid
      t.string :pcode
      t.timestamps
    end
  end
end
