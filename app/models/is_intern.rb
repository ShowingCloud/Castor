require "securerandom"
class IsIntern < ActiveRecord::Base
attr_accessible :isintern
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
