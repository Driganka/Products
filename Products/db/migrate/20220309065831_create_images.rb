class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :iid
      t.string :pcode
      t.string :iimage

      t.timestamps
    end
  end
end
