require 'builder/xmlmarkup'
xml = Builder::XmlMarkup.new(:indent=>2)
puts xml.html {
  xml.head {
    xml.title "title"
  }
  xml.body {
    xml.comment! "comment"
    xml.div {
      xml.h1("Header")
      xml.p("paragraph")
    }
  }
}

#=> <html>
#  <haed>
#  ...

