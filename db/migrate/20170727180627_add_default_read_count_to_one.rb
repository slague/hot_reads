class AddDefaultReadCountToOne < ActiveRecord::Migration[5.0]
  def change
    change_column :hot_reads, :read_count, :integer, default: 1
  end
end
