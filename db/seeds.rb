# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
vocation_knight = Vocation.create({name: 'Knight', promotion_name: 'Elite Knight'})
vocation_druid = Vocation.create({name: 'Druid', promotion_name: 'Elder Druid'})

world_l = World.create({name: 'Lumi'})
world_e = World.create({name: 'Enir'})

kings_guild = Guild.create({name: 'Kings', world: world_l})
queens_guild = Guild.create({name: 'Queens', world: world_e})

Player.create({name: 'First player', vocation: vocation_druid, world: world_l, level: 111 })
Player.create({name: 'Second player', vocation: vocation_knight, world: world_l, level: 100, guild: kings_guild })

Player.create({name: 'Enir Player\' says hello', vocation: vocation_druid, world: world_e, level: 99 })

