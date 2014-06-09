require "securerandom"
class Subjection < ActiveRecord::Base
attr_accessible :subjection
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
