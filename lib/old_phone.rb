class Phone

  @@phones = []
  @@p_index = 0

  attr_reader(:area, :number, :type, :p_id)

  define_method(:initialize) do |attributes|
    @area = attributes.fetch(:area)
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
    @@p_index = @@p_index += 1
    @p_id = @@p_index
  end
  #
  # define_singleton_method(:all) do
  #   @@phones
  # end
  #
  # define_method(:save) do
  #   @@phones.push(self)
  # end
  #
  # define_singleton_method(:clear) do
  #   @@phones = []
  #   @@p_index = 0
  # end
  #
  # define_singleton_method(:find) do |id|
  #   found_phone = nil
  #   @@phones.each() do |phone|
  #     if phone.p_id() == id.to_i
  #       found_phone = phone
  #     end
  #   end
  #   found_phone
  # end
  #
  # define_singleton_method(:delete) do |phone|
  #   to_delete = phone.e_id()
  #   @@phones.delete_if {|phone| phone.p_id().eql?(to_delete)}
  # end



end
