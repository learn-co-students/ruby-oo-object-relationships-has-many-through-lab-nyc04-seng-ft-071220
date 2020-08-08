
class Patient

    attr_accessor :name

    @@all = []

    def initialize(name_param)
        @name = name_param
        @@all << self
    end

    def self.all
        @@all 
    end

    def new_appointment(date_param, doctor_param)
        Appointment.new(date_param, self, doctor_param)
    end

    def appointments 
        Appointment.all.select { |appt| appt.patient == self }
    end

    def doctors 
        self.appointments.map { |appt| appt.doctor }
    end

end