class Patient

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
        Appointment.all.select{|appointment_info|appointment_info.patient == self}
    end

    def new_appointment(doctor,appointment_date)
        Appointment.new(appointment_date,self,doctor)
    end

    def doctors
        self.appointments.map{|appointment_info|appointment_info.doctor}
    end

end