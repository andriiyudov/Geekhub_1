class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :second_name
      t.string :age
      
      t.timestamps
    end
  end
end
