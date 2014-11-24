class Guild < ActiveRecord::Base
  belongs_to :world
  has_and_belongs_to_many :players, :join_table => :players_guilds

  scope :find_by_name_part, -> (str) {
    where("guilds.name ILIKE ?", "%#{str}%")
  }

  scope :find_by_name, -> (str) {
    where("guilds.name = ?", str)
  }

  delegate :name, to: :world, prefix: true, allow_nil: true

end
