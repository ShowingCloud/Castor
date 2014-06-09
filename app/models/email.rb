
require "securerandom"
class Email < ActiveRecord::Base
attr_accessible :email
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
