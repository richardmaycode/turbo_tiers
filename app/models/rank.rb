class Rank < ApplicationRecord
  belongs_to :list

  after_create :set_index

  def set_index
    update_column(:index, list.ranks.count - 1) if index == -1
  end
end
