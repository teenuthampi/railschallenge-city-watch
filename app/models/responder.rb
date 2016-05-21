class Responder < ActiveRecord::Base
  
#Association
  belongs_to :emergency
  validates :capacity,:type , presence: true                  
  validates :name, presence: true,uniqueness: true

end
