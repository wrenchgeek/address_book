class Email

  attr_reader(:e_address)

  define_method(:initialize) do |e_address|
    @e_address = e_address
  end

end
