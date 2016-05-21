class Emergency < ActiveRecord::Base

 
#Association between the responder & Emergency
  has_many :responders


#Validations
  validates :code, presence: true ,:uniqueness => true
  validates :fire_severity, :police_severity, :medical_severity, :resolved_at
  validates_numericality_of :fire_severity, :police_severity, :medical_severity,:message => "must be greater than or equal to 0"

end