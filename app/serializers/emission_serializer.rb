class EmissionSerializer < ActiveModel::Serializer
  attributes :distance
  attributes :emission
  attribute :date

  def date
    object.created_at.strftime("%B %e, %Y")
  end
end
