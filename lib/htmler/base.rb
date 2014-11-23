class Htmler
  undef_method :p
  
  def initialize
    @_result = ''
  end
  
  def to_html
    @_result
  end

  def method_missing(name, *args, &block)
    @_result += "<#{name}>"
    if block_given?
      _return = block.call
      @_result +=  _return.to_s unless _return.nil?
    end
    @_result += "</#{name}>"
    
    # print the temporary stack
    # puts "> #{@_result}"
    
    nil
    
  end
  
  def compile(input)
    instance_eval(input)
  end
  
  def compile_file(name)
    #puts File.new(name).readlines.map { |i| i.to_s }.join
    instance_eval(File.new(name).readlines.map { |i| i.to_s }.join)
  end
  
end