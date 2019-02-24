require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({dbname: 'd8lam69lhb6cbj', host: 'ec2-107-21-224-76.compute-1.amazonaws.com', port: 5432, user:'yidvmwviymlwrg', password:'83eb2da6facf822dc5aa68e01bd71ecc332a3688ccc31126c16207ac2a64b52b'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
