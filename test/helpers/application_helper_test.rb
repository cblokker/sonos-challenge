require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  include ApplicationHelper

  test 'can return correct flash class' do
    assert_equal 'success', alert_box_class('success')
    assert_equal 'alert', alert_box_class('error')
    assert_equal 'info', alert_box_class('notice')
  end
end
