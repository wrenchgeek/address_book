class Email

  @@emails = []

  attr_reader(:e_address)

  define_method(:initialize) do |e_address|
    @e_address = e_address
  end

  define_singleton_method(:all) do
    @@emails
  end

  define_method(:save) do
    @@emails.push(self)
  end

end
