class Dog < ActiveRecord::Base
  belongs_to :Gender
  belongs_to :Nutered
  belongs_to :Breeder
  
  attr_accessible :breed, :dob, :dod, :height, :weight, :name, :Breeder_id,
                  :Gender_id, :Nutered_id, :Gender, :Nutered
  
  validates :name, :presence=>true
  validates_numericality_of :height, :integer_only=>true, :allow_blank=>true
  validates_numericality_of :weight, :allow_blank=>true
end
