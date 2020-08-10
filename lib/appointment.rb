class Appointment

    attr_reader :patient, :doctor, :appointment_date
    @@all = []
    def initialize(appointment_date,patient,doctor)
        @appointment_date = appointment_date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

    # def appointments
    #     Appointment.all.select{|appointment_info|appointment_info.patient == self}
    # end


end