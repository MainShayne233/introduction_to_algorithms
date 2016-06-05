require 'byebug'

class Table
  attr_accessor :row_count
  attr_accessor :column_count
  attr_accessor :cells
  attr_accessor :spacing

  def initialize
    self.cells = {}
    self.get_dimensions
    self.get_headings
    self.get_data
    self.get_spacing
  end

  def get_dimensions
    puts "Amount of rows?"
    self.row_count = gets.to_i
    puts "Amount of columns?"
    self.column_count = gets.to_i
  end

  def get_headings
    (0..self.column_count-1).each do |c|
      puts "Column Heading #{c}:"
      self.cells["#{c+1}:0"] = gets.gsub("\n", "")
    end

    (0..self.row_count-1).each do |r|
      puts "Row Heading #{r}:"
      self.cells["0:#{r+1}"] = gets.gsub("\n", "")
    end
  end

  def get_data
    (1..self.row_count).each do |r|
      (1..self.column_count).each do |c|
        puts "Value for cell #{c}:#{r}?"
        self.cells["#{c}:#{r}"] = gets.gsub("\n", "")
      end
    end
  end

  def print_table
    table = ""
    (0..self.row_count).each do |r|
      (0..self.column_count).each do |c|
        table << "#{self.cells["#{c}:#{r}"]}".ljust(self.spacing[c]+2)
      end
      table << "\n"
    end
    file = File.new("table_from_#{Time.now}.txt", "w+")
    file.write(table)
  end

  def get_spacing
    self.spacing = []
    (0..self.column_count).each do |c|
      self.spacing[c] = 0
      (0..self.row_count).each do |r|
        length = self.cells["#{c}:#{r}"] ? self.cells["#{c}:#{r}"].length : 0
        self.spacing[c] = length if length > self.spacing[c]
      end
    end
  end

end


Table.new.print_table
