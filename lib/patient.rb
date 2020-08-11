require 'pry'

class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        # binding.pry
        Appointment.new(date, self, doctor)
    end

    def appointments
        # binding.pry
        Appointment.all.select { |appointment| appointment.patient == self }
    end

    def doctors
        # appointments.map(&:doctor)
        appointments.map { |appointment| appointment.doctor }
    end

end