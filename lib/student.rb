require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

    self.column_names.each do |col_name|
        attr_accessor col_name.to_sym
    end 

    # def save 
    #     sql = <<-SQL
    #     INSERT INTO students(name, grade)
    #     VALUES (?, ?)
    #     SQL

    #     DB[:conn].execute(sql, self.name, self.grade)
    #     @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    #     row = DB[:conn].execute("SELECT id, name, grade FROM students WHERE id = ?", self.id)[0]
    #     @name = row[1]
    #     @grade = row[2]
        
        
    # end 

end
