class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  attribute :address


  def address
    {
      street: object.street,
      city: object.city,
      state: object.state,
      country: object.country,
    }
  end




end
