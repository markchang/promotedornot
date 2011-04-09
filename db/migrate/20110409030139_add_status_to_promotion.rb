class AddStatusToPromotion < ActiveRecord::Migration
  def self.up
    add_column :promotions, :status, :string
  end

  def self.down
    remove_column :promotions, :status
  end
end
