

class Email

  attr_reader(:email)

  define_method(:initialize) do |attributes|
    @email = attributes.fetch(:email)
  end

end
