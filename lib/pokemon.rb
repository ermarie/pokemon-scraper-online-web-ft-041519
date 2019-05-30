class Pokemon

  #@@all = Scraper.scrape

  attr_accessor :name, :type, :id, :db

def initialize(id, name=nil, type=nil, db=nil)
<<<<<<< HEAD
  @id = id
=======
>>>>>>> 4bdfcf5a9e968e24add222c55f44c40dc940e537
  #pokemon = Pokemon.find(id)
end

  # def self.all
  #   @@all
  # end

  def self.save(name, type, db)
    # if self.id
    #   self.update
    # else
      sql = <<-SQL
        INSERT INTO pokemon (name, type)
        VALUES (?, ?)
      SQL
      db.execute(sql, name, type)
      @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
    #end
  end

  def self.find(id, db)
    sql = <<-SQL
      SELECT * FROM pokemon
      WHERE pokemon.id = ?
    SQL
<<<<<<< HEAD

    new_pk = self.new(id)
    db.execute(sql, id).map do |row|
      new_pk.name =  row[1]
      new_pk.type = row[2]
    end
    new_pk
=======
    db.execute(sql, db)
>>>>>>> 4bdfcf5a9e968e24add222c55f44c40dc940e537
  end

end
