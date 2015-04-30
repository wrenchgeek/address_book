class Phone

  attr_reader(:area, :number, :type)

  define_method(:initialize) do |attributes|
    @area = attributes.fetch(:area)
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
  end
end
