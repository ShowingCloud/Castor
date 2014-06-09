require "securerandom"
class Position < ActiveRecord::Base
attr_accessible :position
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
