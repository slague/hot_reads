class CreateHoTReads < ActiveRecord::Migration[5.0]
  def change
    create_table :hot_reads do |t|
      t.string :url
      t.integer :read_count

      t.timestamps null: false
    end
  end
end
