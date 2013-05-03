class CreateProcesses < ActiveRecord::Migration
  def change
    create_table :processes do |t|
      t.string :name
      t.date :start_date
    end
  end
end
