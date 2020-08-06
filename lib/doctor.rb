

require 'pry'

class Doctor

    @@all=[]

    attr_accessor :name


    def initialize (name_arg)
        @name=name_arg
        @@all << self
    end


    def self.all
        @@all
    end

    def new_appointment(patient, date)
      Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do|doc|
            doc.doctor==self
        end
    end

    def patients
        appointments.map do |patient|
            patient.patient
        end
    end

        

       


end
