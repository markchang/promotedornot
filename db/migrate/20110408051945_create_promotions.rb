class CreatePromotions < ActiveRecord::Migration
  def self.up
    create_table :promotions do |t|
      t.string :position
      t.string :employer
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :promotions
  end
end
