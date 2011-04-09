class Promotion < ActiveRecord::Base
  attr_accessible :position, :employer, :name, :status
  validates_presence_of :status, :position, :employer
  
  scope :recent, :order => "promotions.updated_at DESC"
end
