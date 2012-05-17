require 'test_helper'

class DogTest < ActiveSupport::TestCase
  test "Create valid" do
    a = Dog.new(  :name => 'abc',
                  :breed => 'def',
                  :height => 22,
                  :weight => 14,
                  :dob => (Date.today - 10.years),
                  :dod => Date.today, 
                  :Gender => genders(:one),
                  :Nutered => nutereds(:two),
                  :Breeder_id => breeders(:one))
    assert a.save
  end
  
  test "Name must be present" do
    a = Dog.new
    assert a.invalid?
    assert a.errors[:name].any?
  end
  
  test "Numerics must be valid" do
    a = Dog.new(:name=>'abc',
                  :height=>'def',
                  :weight=>'ghi')
                  
    assert a.invalid?
    assert a.errors[:height].any?
    assert a.errors[:weight].any?
  end
  
  test "Update" do
    a = dogs(:one)
    a.name = 'abc'
    a.breed = 'def'
    a.height = 33
    a.weight = 18
    a.dob = (Date.today - 10.years)
    a.dod = Date.today
    a.Gender = genders(:one)
    a.Nutered = nutereds(:two)
    
  end
  
  test "Destroy" do
    a = dogs(:one)
    assert a.destroy
  end

end
