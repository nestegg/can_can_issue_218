class CreateLions < ActiveRecord::Migration
  def self.up
    create_table :lions do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :lions
  end
end
