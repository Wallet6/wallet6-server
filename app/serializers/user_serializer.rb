class UserSerializer < ActiveModel::Serializer
  attribute :id
  attribute :name
  attribute :email
  attribute :address
  attribute :emission_allowance
  attribute :emission_usage
  attribute :emission_total
  attribute :total_distance

  attribute :address

  has_many :emission, key: "emission_history"

  def address
    {
      street: object.street,
      city: object.city,
      state: object.state,
      country: object.country,
    }
  end

end
