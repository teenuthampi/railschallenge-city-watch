class Responder < ActiveRecord::Base
  
#Association
  belongs_to :emergency
  validates :capacity,:type , presence: true                  
  validates :name, presence: true,uniqueness: true
 response_types = %w(Fire Medical Police)
def current_capacity(response_types)
     hash = {}
    response_types.each do |type|
      capacity_hash[type] = Responder.where(type: type)
      capacity = capacity_hash[type].pluck(:capacity)
    end
  end

end
