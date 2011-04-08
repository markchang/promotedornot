class AddUidToPromotion < ActiveRecord::Migration
  def self.up
    add_column :promotions, :uid, :string
  end

  def self.down
    remove_column :promotions, :uid
  end
end
