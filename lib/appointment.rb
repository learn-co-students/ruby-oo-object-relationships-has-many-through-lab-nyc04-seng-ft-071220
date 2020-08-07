class Appointment

    attr_accessor :date, :doctor, :patient
    @@all = []

    def initialize(date_par, patient_par, doctor_par)
        @date = date_par
        @patient = patient_par
        @doctor = doctor_par
        @@all << self
    end

    def self.all
        @@all
    end
end