require "securerandom"
class Im < ActiveRecord::Base
attr_accessible :im
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
