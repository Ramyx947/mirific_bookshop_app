require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  # Functional testing for the Store Controller
  # run using rails test:controllers

  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select 'nav.side_nav a', minimum: 5 #number => test for quantity
    assert_select 'main ul.catalog li', 3 
    assert_select 'h2', 'Programming Ruby 2.5'# string => test for expected result
    assert_select '.price', /\£[,\d]+\.\d\d/ #regular expression
  end

end
