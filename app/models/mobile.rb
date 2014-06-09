require "securerandom"
class Mobile < ActiveRecord::Base
attr_accessible :mobile
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
