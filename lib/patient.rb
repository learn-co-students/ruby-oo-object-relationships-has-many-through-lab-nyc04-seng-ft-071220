require 'pry'
class Patient

    attr_accessor :name
    @@all = []

    def initialize(name_par)
        @name = name_par
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    #iterates through the Appointments array
    #returns Appointments that belong to the patient
    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        appointments.map(&:doctor)
    end
end