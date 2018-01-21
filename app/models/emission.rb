class Emission < ApplicationRecord
  belongs_to :user, touch: true
end
