require 'test_helper'

class AddressCatTest < ActiveSupport::TestCase
  test "Create" do
    a=AddressCat.new(:name=>'abc')
    assert a.save
  end
  
  test "Name must be present" do
    a=AddressCat.new
    assert a.invalid?
    assert a.errors[:name].any?
  end
  
  test "Update" do
    a=address_cats(:one)
    a.name='def'
    assert a.save
  end
  
  test "Destroy" do
    a=address_cats(:one)
    assert a.destroy
  end
end
