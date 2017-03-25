require_relative "./interactive_record.rb"
#inherits from interactive_record class
#all methods defined n interactive_record are available to song

class Song < InteractiveRecord

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end
