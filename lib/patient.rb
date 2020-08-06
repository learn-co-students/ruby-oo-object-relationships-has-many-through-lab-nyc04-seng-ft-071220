require 'pry'

class Patient

    @@all=[]


    attr_accessor :name

    def initialize (name_arg)
        @name=name_arg
        @@all << self
    end



    def self.all
        @@all
    end


    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
      end

      def appointments
        Appointment.all.select do|patient|
            patient.patient==self
        end
    end

    def doctors
        appointments.map do|doc|
            doc.doctor
        end
    end





end