require "securerandom"
class User < ActiveRecord::Base


has_many :adress
  accepts_nested_attributes_for :adress


private

def generate_uuid
self.uuid = SecureRandom.uuid
end

end
