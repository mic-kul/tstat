class World < ActiveRecord::Base
  has_many :players
  has_many :guilds

  delegate :name,
      :to => :guild,
      :prefix => true
end
