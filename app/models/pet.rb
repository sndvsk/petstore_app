class Pet
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic  # Add this line

  field :name, type: String
  field :pet_type, type: String
  field :age, type: Integer
  belongs_to :user
end
