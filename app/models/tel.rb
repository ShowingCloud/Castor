require "securerandom"
class Tel < ActiveRecord::Base
attr_accessible :tel
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
