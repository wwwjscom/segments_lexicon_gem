require 'sqlite3'

class SegmentsLexicon

  # Opens a connection to the db
  #
  # param sqlite_db_path [String] Path to the sqlite3 db file
  def initialize(sqlite_db_path, table_name)
    @db = SQLite3::Database.new(sqlite_db_path)
    @db.results_as_hash = true
    @table = table_name
    self
  end

  def search(query_term)
    results = @db.execute "select * from #{@table} WHERE LCASE(word) LIKE LCASE(\"#{query_term}\")"
  end

end
