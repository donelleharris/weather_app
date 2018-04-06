class CreatePreviousCities < ActiveRecord::Migration[5.1]
  def change
    create_table :previous_cities do |t|
      t.string :city

      t.timestamps
    end
  end
end
