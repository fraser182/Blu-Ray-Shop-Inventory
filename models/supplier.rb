require_relative('../db/sql_runner.rb')

class Supplier

  attr_reader :id
  attr_accessor :name, :email, :telephone, :website

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @email = options['email']
    @telephone = options['telephone']
    @website = options['website']
  end

# CRUD methods

  def save()
    sql = "INSERT INTO suppliers (name, email, telephone, website) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@name, @email, @telephone, @website]
    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end

  def update()
    sql = "UPDATE suppliers SET (name, email, telephone, website) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@name, @email, @telephone, @website, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM suppliers where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM suppliers"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM suppliers"
    results = SqlRunner.run(sql)
    pcompanies = results.map{|pcompany_hash| Supplier.new(pcompany_hash)}
    return pcompanies
  end

  def self.find(id)  # READ Supplier.find(1) p Supplier 1 all details
    sql = "SELECT * FROM suppliers WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    pcompany_hash = result[0]
    pcompany = Supplier.new(pcompany_hash)
    return pcompany
  end

  def self.find_by_name(name) # READ supplier.find_by_name("Castle Rock Entertainment")
    sql = "SELECT * FROM suppliers WHERE name = $1"
    values = [name]
    result = SqlRunner.run(sql, values)
    pcompany_hash = result[0]
    pcompany = Supplier.new(pcompany_hash)
    return pcompany
  end

  # find all films by Production Company, ordered by name
  def self.find_all() # READ supplier.find_all
      sql = "SELECT * FROM suppliers ORDER BY name"
      result = SqlRunner.run(sql)
      pcompanies = result.map{|pcompany_hash| Supplier.new(pcompany_hash)}
      return pcompanies
    end

    def bluray()
      sql = "SELECT * FROM blurays WHERE id = $1"
      values = [@bluray_id]
      result = SqlRunner.run(sql, values)[0]
      return BluRay.new(result)
    end


end
