class AddressCat < ActiveRecord::Base
  has_many :Addresses
  
  attr_accessible :name
  
  validates :name, :presence=>true
end
