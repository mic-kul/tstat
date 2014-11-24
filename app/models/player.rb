class Player < ActiveRecord::Base
  belongs_to :world
  belongs_to :vocation
  belongs_to :guild
  has_many :player_histories

  scope :find_by_name_part, -> (str) {
    where("players.name ILIKE ?", "%#{str}%")
  }

  delegate :name, to: :guild, prefix: true, allow_nil: true
  delegate :name, to: :vocation, prefix: true, allow_nil: true
  delegate :name, to: :world, prefix: true, allow_nil: true
end
