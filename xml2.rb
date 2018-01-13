HTMLForm.generate(STDOUT) do
  comment "HTML form"
  form :name => "registration",
       :action => "http://www.example.com/register.cgi" do
    content "Name:"
    input :name => "name"
    content "Address:"
    textarea :name => "address", :rows=>6, :cols=>40 do
      "input email addr"
    end
    button { "submit" }
  end
end

