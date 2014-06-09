require "securerandom"
class Department < ActiveRecord::Base
attr_accessible :department
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
