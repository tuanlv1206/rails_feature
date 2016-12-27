class Person
  include ActiveModel::Serialization
  attr_accessor :name

  def attributes
    {"name" => nil}
  end
end
