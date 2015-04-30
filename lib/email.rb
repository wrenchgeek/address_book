class Email

  @@emails = []
  @@e_index = 0

  attr_reader(:e_address)

  define_method(:initialize) do |e_address|
    @e_address = e_address
    @@e_index = @@e_index += 1
    @e_id = @@e_index
  end

  define_singleton_method(:all) do
    @@emails
  end

  define_method(:save) do
    @@emails.push(self)
  end

  define_singleton_method(:clear) do
    @@emails = []
    @@e_index = 0
  end

end
