require "securerandom"
class Adress < ActiveRecord::Base
belongs to :user
accepts_nested_attributes_for :user_id



private


def generate_uuid
self.uuid = SecureRandom.uuid
end
end
