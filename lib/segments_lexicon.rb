require 'sqlite3'
require "segments_lexicon/version"

module SegmentsLexicon
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
    results = @db.execute "select * from #{@table} WHERE word LIKE \"#{query_term.downcase}\" COLLATE NOCASE"
  end
end
