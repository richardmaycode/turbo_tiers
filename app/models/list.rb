class List < ApplicationRecord
  has_many :ranks, dependent: :destroy
end
