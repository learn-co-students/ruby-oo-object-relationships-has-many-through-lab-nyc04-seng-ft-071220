require "pry"
class Doctor

    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|appointment_info|appointment_info.doctor == self}
    end

    def new_appointment(patient,appointment_date)
        Appointment.new(appointment_date,patient,self)
    end


    def patients
        self.appointments.map{|appointment_info|appointment_info.patient}
    end


end