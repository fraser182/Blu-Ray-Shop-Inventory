require_relative('../db/sql_runner.rb')
require_relative('./supplier.rb')

class BluRay

  attr_reader :id
  attr_accessor :name, :description, :stock_quantity, :cost_price, :selling_price, :genre, :imdb_rating, :supplier_id

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @stock_quantity = options['stock_quantity'].to_i
    @cost_price = options['cost_price'].to_f
    @selling_price = options['selling_price'].to_f
    @genre = options['genre']
    @imdb_rating = options['imdb_rating'].to_f
    @supplier_id = options['supplier_id'].to_i

  end

  # CRUD methods

  def save()
    sql = "INSERT INTO blurays (name, description, stock_quantity, cost_price, selling_price, genre, imdb_rating, supplier_id) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING id"
    values = [@name, @description, @stock_quantity, @cost_price, @selling_price, @genre, @imdb_rating, @supplier_id]
    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end

  def update() #UPDATE bluray1.selling_price('10') bluray1.update()
    sql = "UPDATE blurays SET (name, description, stock_quantity, cost_price, selling_price, genre, imdb_rating, supplier_id) = ($1, $2, $3, $4, $5, $6, $7, $8) WHERE id = $9"
    values = [@name, @description, @stock_quantity, @cost_price, @selling_price, @genre, @imdb_rating, @supplier_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete() #DELETE bluray1.delete (removes 1 bluray)
    sql = "DELETE FROM blurays where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all() # BluRay.delete_all
    sql = "DELETE FROM blurays"
    SqlRunner.run(sql)
  end

  def self.all() #READ BluRay.all p all BluRays
    sql = "SELECT * FROM blurays"
    results = SqlRunner.run(sql)
    blurays = results.map{|bluray_hash| BluRay.new(bluray_hash)}
    return blurays
  end

  def self.find(id) # READ BluRay.find(1) p BluRay 1 all details
    sql = "SELECT * FROM blurays WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    bluray_hash = result[0]
    bluray = BluRay.new(bluray_hash)
    return bluray
  end

  def self.find_by_name(name) # READ BluRay.find_by_name("Avatar")
    sql = "SELECT * FROM blurays WHERE name = $1"
    values = [name]
    result = SqlRunner.run(sql, values)
    bluray_hash = result[0]
    bluray = BluRay.new(bluray_hash)
    return bluray
  end


  # Other functions

  def stock_quantity_warning_colour()
    # if stock_quantity is less than or equal to 50
    if @stock_quantity >= 50
      # return High Stock
      result = "DarkSeaGreen" # names from CSS name file online
      # else if stock_quantity is greater than or equal to 25 and less than 50
    elsif @stock_quantity >= 25 && @stock_quantity < 50
      # return Medium Stock
      result = "LightGoldenRodYellow"
      # else if stock_quantity is greater than 0 and less than 25
    elsif @stock_quantity > 0 && @stock_quantity < 25
      # return Low Stock
      result = "LightSalmon"
      # else return No Stock
    else result = "FireBrick"
    end
    return result
  end


  def stock_quantity_warning_words()
    # if stock_quantity is less than or equal to 50
    if @stock_quantity >= 50
      # return High Stock
      return "High"
      # else if stock_quantity is greater than or equal to 25 and less than 50
    elsif @stock_quantity >= 25 && @stock_quantity < 50
      # return Medium Stock
      result = "Medium"
      # else if stock_quantity is greater than 0 and less than 25
    elsif @stock_quantity > 0 && @stock_quantity < 25
      # return Low Stock
      result = "Low"
      # else return No Stock
    else result = "Out Of Stock"
    end
    return result
  end


  # Ordering for filter


  # Order all blurays by stock_quantity
  def self.order_by_stock_level()
    sql = "SELECT * FROM blurays ORDER BY stock_quantity;"
    results = SqlRunner.run(sql)
    return results.map { |bluray| BluRay.new(bluray) }
  end

  # Get all blurays with no stock (showing no stock)

  def self.list_out_of_stock
    sql = "SELECT * FROM blurays WHERE stock_quantity = 0 ORDER BY name ASC;"
    results = SqlRunner.run(sql)
    return results.map { |bluray| BluRay.new(bluray) }
  end

  # List all blurays with low stock
  def self.list_low_stock
    sql = "SELECT * FROM blurays WHERE stock_quantity BETWEEN 1 AND 24;"
    results = SqlRunner.run(sql)
    return results.map { |bluray| BluRay.new(bluray) }
  end

  # List all blurays with medium stock
  def self.list_medium_stock
    sql = "SELECT * FROM blurays WHERE stock_quantity BETWEEN 25 AND 49;"
    results = SqlRunner.run(sql)
    return results.map { |bluray| BluRay.new(bluray) }
  end

  # List all blurays with high stock

  def self.list_high_stock
    sql = "SELECT * FROM blurays WHERE stock_quantity >= 50;"
    results = SqlRunner.run(sql)
    return results.map { |bluray| BluRay.new(bluray) }
  end

  # List all blurays in stock (single view)

  def self.list_in_stock
    sql = "SELECT * FROM blurays WHERE stock_quantity >0;"
    results = SqlRunner.run(sql)
    return results.map{|bluray| BluRay.new(bluray)}
  end

  # show markup of each item, and show in inventory
  def profit ()
    # set profit margin
    profit = (@selling_price - @cost_price)
    return profit.round(2)
    
  end

  # List blurays by genre
  def self.order_by_genre() #BluRay.order_by_genre
    sql = "SELECT * FROM blurays ORDER BY genre;"
    result = SqlRunner.run(sql)
    return result.map { |bluray| BluRay.new(bluray) }
  end


  # Get bluray by specific genre
  def self.by_specific_genre(genre)
    sql = "SELECT * FROM blurays WHERE genre = $1;"
    values = [genre]
    result = SqlRunner.run(sql, values)
    return result.map { |bluray| BluRay.new(bluray) }
  end

# Links bluray to supplier so we can display supplier details in the bluray (:show) properties
  def supplier()
    sql = "SELECT * FROM suppliers WHERE id = $1"
    values = [@supplier_id]
    result = SqlRunner.run(sql, values)[0]
    return Supplier.new(result)
  end
end
