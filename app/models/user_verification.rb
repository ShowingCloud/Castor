require "securerandom"
class UserVerification < ActiveRecord::Base
attr_accessible :user, :adress
before_create :generate_uuid
private
def generate_uuid
self.uuid = SecureRandom.uuid
end
end
