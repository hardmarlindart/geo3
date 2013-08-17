class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
