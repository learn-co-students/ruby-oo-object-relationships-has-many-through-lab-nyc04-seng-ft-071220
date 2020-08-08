
class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name_param)
        @name = name_param
        @@all << self
    end

    def self.all 
        @@all 
    end

    def new_appointment(date_param, patient_param)
        Appointment.new(date_param, patient_param, self)
    end

    def appointments 
        Appointment.all.select { |appt| appt.doctor == self }
    end

    def patients 
        self.appointments.map { |appt| appt.patient }
    end

end