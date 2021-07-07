# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :str

  def initialize(str)
    @str = str
  end

  def parse
    ary = @str.split(/\,| +/)
    ary = ary.select {|et| et.size > 0}
    ary = ary.uniq
  end

end