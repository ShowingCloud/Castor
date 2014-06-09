require "securerandom"
class Area < ActiveRecord::Base
attr_accessible :area
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
