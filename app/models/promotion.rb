class Promotion < ActiveRecord::Base
  attr_accessible :position, :employer, :name, :status
  validates_presence_of :status, :position, :employer
  has_friendly_id :name, :use_slug => true
  
  scope :recent, :order => "promotions.updated_at DESC"
end
