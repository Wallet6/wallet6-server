class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  attribute :address
  has_many :emission


  def address
    {
      street: object.street,
      city: object.city,
      state: object.state,
      country: object.country,
    }
  end




end
