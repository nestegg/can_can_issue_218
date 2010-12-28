class CreateBears < ActiveRecord::Migration
  def self.up
    create_table :bears do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :bears
  end
end
