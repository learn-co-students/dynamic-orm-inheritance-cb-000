require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/songs.db")}
DB[:conn].execute("DROP TABLE IF EXISTS songs")

sql = File.read('sql/create_songs_table.sql')

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
