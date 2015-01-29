class CreateApis < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :fitbit_id
      
      t.timestamps
    end
  end
end
