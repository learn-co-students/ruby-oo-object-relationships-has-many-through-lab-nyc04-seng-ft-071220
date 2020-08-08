
class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize(date_param, patient_param, doctor_param)
        @date = date_param
        @patient = patient_param
        @doctor = doctor_param
        @@all << self
    end

    def self.all
        @@all 
    end

end