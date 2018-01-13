pagetitle = "XML.generate test_page"
XML.generate() do
  html do
    head do
      title { pagetitle }
      comment "test"
    end
    body do
      h1(:style => "font-family:sans-serif") { pagetitle }
      ul :type => "square" do
        li { Time.now }
	li { RUBY_VERSION }
      end
    end
  end
end

