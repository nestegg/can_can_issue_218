class CreateTigers < ActiveRecord::Migration
  def self.up
    create_table :tigers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :tigers
  end
end
