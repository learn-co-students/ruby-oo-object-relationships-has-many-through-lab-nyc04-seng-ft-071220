require 'pry'
class Doctor

    attr_accessor :name
    @@all = []

    def initialize(name_par)
        @name = name_par
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    #iterates through all Appointments and finds those belonging to this doctor
    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    #that iterates over that doctor's Appointments
    #collects the patient that belongs to each Appointment
    def patients
        appointments.map do |appointment|
            appointment.patient
        end
    end
end