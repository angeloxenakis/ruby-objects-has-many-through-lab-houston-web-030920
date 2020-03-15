class Patient
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end 

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments()
        patient_appointments = []
        Appointment.all.each do |appt|
            if appt.patient == self
                patient_appointments.push(appt)
            end
        end
        patient_appointments
    end 

    def doctors()
        patient_doctors = []
        Appointment.all.each do |appt|
            if appt.patient == self
                patient_doctors.push(appt.doctor)
            end
        end
        patient_doctors
    end 


    def self.all()
        @@all
    end 

end 

