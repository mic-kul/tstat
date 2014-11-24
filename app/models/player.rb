class Player < ActiveRecord::Base
  belongs_to :world
  belongs_to :vocation
  has_and_belongs_to_many :guilds, :join_table => :players_guilds
  has_many :player_histories

  scope :find_by_name_part, -> (str) {
    where("players.name ILIKE ?", "%#{str}%")
  }

  delegate :name, to: :guilds, prefix: true, allow_nil: true
  delegate :name, to: :vocation, prefix: true, allow_nil: true
  delegate :name, to: :world, prefix: true, allow_nil: true
end
