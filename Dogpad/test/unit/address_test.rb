require 'test_helper'

class AddressTest < ActiveSupport::TestCase

  test "Create valid" do
    a = Address.new(:company => 'abc',
                    :first_name => 'def',
                    :last_name => 'ghi',
                    :street => 'jkl',
                    :zip => 'mno',
                    :city => 'pqr',
                    :country => 'stu',
                    :phone => 'vwx',
                    :mobile => 'yza',
                    :mail => 'bcd',
                    :web => 'efg',
                    :AddressCat => address_cats(:one))
    assert a.save
  end
  
  test "Addresscat must be present" do
    a = Address.new
    assert a.invalid?
    assert a.errors[:AddressCat_id].any?
  end

  test "Update" do
    a = addresses(:one)
    a.company = 'abc'
    a.first_name = 'def'
    a.last_name = 'ghi'
    a.street = 'jkl'
    a.zip = 'mno'
    a.city = 'pqr'
    a.country = 'stu'
    a.phone = 'vwx'
    a.mobile = 'yza'
    a.mail = 'bcd'
    a.web = 'efg'
    a.AddressCat = address_cats(:one)
    assert a.save
  end
    
  test "Delete" do
    a=addresses(:one)
    assert a.destroy
  end
    
end
  