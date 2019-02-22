require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({dbname: 'dfva1ahb0l5pah', host: 'ec2-107-21-99-237.compute-1.amazonaws.com', port: 5432, user:'plcboxwhroypcd', password:'047ee7fed9b8835c8ce39bbc7f9b1775cd0593ab0f23d7aef8b61d6b39c3403a'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
