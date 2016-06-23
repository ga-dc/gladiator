require "active_record"
require_relative "arena"

class Gladiator < ActiveRecord::Base
    belongs_to :arena
end
