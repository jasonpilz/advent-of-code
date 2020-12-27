# frozen_string_literal: true

require 'minitest/autorun'
require_relative './main'

class TestSubject < Minitest::Test
  def setup
    @cases = {
      [] => '',
    }
  end

  def test_acceptance
    @cases.each_with_index do |(input, expectation), idx|
      c = "case ##{idx+1}"

      assert_equal [c, expectation], [c, Subject.(input)]
    end
  end
end
