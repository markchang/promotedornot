class Promotion < ActiveRecord::Base
  attr_accessible :position, :employer, :name
  
  named_scope :recent, :order => "promotions.created_at DESC"
end
