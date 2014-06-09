require "securerandom"
class Fax < ActiveRecord::Base
attr_accessible :fax
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
