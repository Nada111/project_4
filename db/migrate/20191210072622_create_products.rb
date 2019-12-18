class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :productname
      t.decimal :DanubPrice
      t.decimal :PandaPrice
      t.decimal :ManualPrice
      t.string :image

      t.timestamps
    end
  end
end
