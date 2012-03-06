#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#---
class ActsAsCsv
  def self.acts_as_csv
    
    define_method 'read' do
      file = File.new(self.class.to_s.downcase + '.txt')
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @result << row.chomp.split(', ')
      end
    end
    
    define_method "headers" do
      @headers
    end
    
    define_method "csv_contents" do
      @result
    end

    define_method "each" do |&block|
      rows = @result.map { |row|
        CsvRow.new(@headers, row)
      }
      rows.each &block
    end
    
    define_method :initialize do 
      @result = []
      read
    end
  end
end

class CsvRow
  def initialize(headers, values)
    @headers = headers
    @values = values
  end

  def method_missing(name)
    @values[@headers.index(name.to_s)]
  end

end

class TestCsv < ActsAsCsv
  acts_as_csv
end

m = TestCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each { |row| puts row.age }
