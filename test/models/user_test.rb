require 'test_helper'

class UserTest < ActiveSupport::TestCase
  #testing model user for not saving an invalid user
  test 'should not save invalid user' do
  user = User.new
  user.save
  refute user.valid?
  end
  #testing model user for saving a valid user
  test 'should save some valid user' do
  user = User.new
  user.email = 'bob@example.com'
  user.password = '123456'
  user.save
  assert user.valid?
  
  end
  
  
  
end
