require "active_record"

require_relative "connection"
require_relative "../models/arena"
require_relative "../models/gladiator"

Gladiator.destroy_all
Arena.destroy_all

megalopolis = Arena.create(name: "Megalopolis")

Gladiator.create([
    {name: "Maximus", weapon: "Spear", arena: megalopolis},
    {name: "Bilcephalon", weapon: "Trident", arena: megalopolis},
    {name: "Ephates", weapon: "Club", arena: megalopolis},
    {name: "Cylodeus", weapon: "Club", arena: megalopolis}
  ])
