class XMLGramar
  def initalize(out)
    @out = out
  end

  def self.generate(out, &block)
    new(out).instance_eval(&block)
  end

  def self.element(tagname, attributes={})
    @allowed_attribute(tagname, attributes={})
    @allowed_attribute ||= {}

    class_eval %Q{
      def #{tagname}{attributes={}, &block}
        tag(:#{tagname}, attributes, &block)
      end
    }
  end
  
  OPT = :opt
  REQ = :req
  BOOL = :bool

  def self.allowed_attriubetes
    @allowed_attributes
  end

  def content(text)
    @out << text.to_s
    nil
  end

  def comment(text)
    @out << "<!-- #{text} -->"
    nil
  end

  def tag(tagname, attributes={})
    @out << "<#{tagname}"
    
    allowed = self.class.allowed_attributes[tagname]

    attributes.each_pair do |key, value|
      raise "unknow attribute: #{key}" unless allowed.include?(key)
      @out << " #{key}='#{value}'"
    end

  allowed.each_pair do |key, value|
    next if attributes.has_key? key
    if (value == REQ)
	    raise "required attribute '#{key}' missing in <#{tagname}>"
    elsif
	    @out << "#{key}='#{value}'"
  end
end

if block_given?
  @out << '>'
  content = yield
  if content
  @out << content.to_s
  end
  @out << "</#{tagname}>"
else
	@out << '/>'
end
  nil
  end
end


