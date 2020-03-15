class Doctor
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name 
        @@all.push(self)
    end 

    def appointments()
        doctor_appts = []
        Appointment.all.each do |appt|
            if appt.doctor == self
                doctor_appts.push(appt)
            end
        end
        doctor_appts
    end 

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 

    def patients()
        doctor_patients = []
        Appointment.all.each do |appt|
            if appt.doctor == self
                doctor_patients.push(appt.date)
            end
        end 
        doctor_patients
    end  

    def self.all()
        @@all
    end 

end 