require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  # This is not a method!! It sets the attributes from table column names
  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end
