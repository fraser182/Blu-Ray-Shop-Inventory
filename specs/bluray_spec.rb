require("minitest/autorun")
require("minitest/rg")

require_relative("../models/bluray.rb")
require_relative("../db/sql_runner.rb")


class BluRayTest < MiniTest::Test

  def setup()
    @supplier_1 = Supplier.new(
      {
        'name' => 'Lasgo Chrysalis',
        'email' => 'sales@lasgo.com',
        'telephone' => '0208 459 8800',
        'website' => 'https://www.lasgo.com'
      }
    )

    @supplier_2 = Supplier.new(
      {
        'name' => 'Wholesale Clearance Uk',
        'email' => 'sales@wholesaleclearance.co.uk',
        'telephone' => '0330 113 1636',
        'website' => 'https://www.wholesaleclearance.co.uk/'
      }
    )

    @supplier_3 = Supplier.new(
      {
        'name' => 'Moovies Distribution',
        'email' => 'cs@moovies.co.uk',
        'telephone' => '0190 948 0480',
        'website' => 'https://moovies.uk'
      }
    )


    @bluray1 = BluRay.new(
      {
        'name' => 'Shawshank Redemption',
        'description' => 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
        'stock_quantity' => '50',
        'cost_price' => '2.50',
        'selling_price' => '4.50',
        'genre' => 'Drama',
        'imdb_rating' => '9.2',
        'supplier_id' => "#{@supplier_1.id}"
      }
    )

    @bluray2 = BluRay.new(
      {
        'name' => 'The Godfather',
        'description' => 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',
        'stock_quantity' => '25',
        'cost_price' => '1.91',
        'selling_price' => '3.99',
        'genre' => 'Crime',
        'imdb_rating' => '9.2',
        'supplier_id' => "#{@supplier_2.id}"
      }
    )

    @bluray3 = BluRay.new(
      {
        'name' => 'The Lord of the Rings: The Return of the King',
        'description' => 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
        'stock_quantity' => '10',
        'cost_price' => '1.50',
        'selling_price' => '5.50',
        'genre' => 'Fantasy',
        'imdb_rating' => '8.9',
        'supplier_id' => "#{@supplier_3.id}"
      }
    )

    @bluray4 = BluRay.new(
      {
        'name' => 'Life of Pi',
        'description' => 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.',
        'stock_quantity' => '0',
        'cost_price' => '1.50',
        'selling_price' => '3.50',
        'genre' => 'Fantasy',
        'imdb_rating' => '7.9',
        'supplier_id' => "#{@supplier_2.id}"
      }
    )

  end


  def test_stock_quantity_warning_high_stock()
    assert_equal("High", @bluray1.stock_quantity_warning_words)
  end

  def test_stock_quantity_warning_medium_stock()
    assert_equal("Medium", @bluray2.stock_quantity_warning_words)
  end


  def test_stock_quantity_warning_low_stock()
    assert_equal("Low", @bluray3.stock_quantity_warning_words)
  end

  def test_stock_quantity_warning_no_stock()
    assert_equal("None", @bluray4.stock_quantity_warning_words)
  end

  def test_profit()
    assert_equal(2, @bluray1.profit)
  end

end
