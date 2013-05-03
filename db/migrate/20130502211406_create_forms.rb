class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :source
      t.string :name
      t.integer :process_id
    end
  end
end
