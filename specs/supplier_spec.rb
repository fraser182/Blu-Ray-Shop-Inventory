require("minitest/autorun")
require("minitest/rg")

require_relative("../models/supplier.rb")
require_relative("../models/bluray.rb")
require_relative("../db/sql_runner.rb")
require_relative("../db/seeds.rb")

class SupplierTest < MiniTest::Test

  # def setup()
  #   @production_company1 = supplier.new(
  #     {
  #       'name' => 'Castle Rock Entertainment',
  #       'founded' => '1987'
  #     }
  #   )
  #
  #   @production_company2 = supplier.new(
  #     {
  #       'name' => 'Paramount Pictures',
  #       'founded' => '1912'
  #     }
  #   )
  #
  #   @companies = [@production_company1, @production_company2]
  #
  # end
  # #
  # # def test_find_all_pcompanies()
  # #   assert_equal(2, @companies.count)
  # # end
  #
  # #  Works on seeded data
  # def test_find_all_blurays_from_production_company
  #   assert_equal(8, supplier.find_all().count())
  # end
  #



end
