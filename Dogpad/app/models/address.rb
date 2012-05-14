class Address < ActiveRecord::Base
  belongs_to :AddressCat
  attr_accessible :city, :company, :country, :first_name, :last_name, 
                  :mail, :mobile, :phone, :street, :web, :zip, :AddressCat_id, :AddressCat
                  
  validates :AddressCat_id, :presence=>true, :numericality=>true
end
