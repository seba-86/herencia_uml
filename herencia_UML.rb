class Appointment
    attr_accessor :location, :purpose, :hour, :min
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

class MontlyAppointment < Appointment
    attr_accessor :day
    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end

    def occurs_on?(day)
       if day == self.day
            "#{true}"
       else
            "#{false}"
       end
    end
        

    def to_s
        "Reunion mensual en #{self.location} sobre #{self.purpose} el dia #{self.day} a las #{self.hour}:#{self.min}."
    end
end 
puts MontlyAppointment.new('Nasa', 'Aliens',8, 15, 23)


# puts prueba.occurs_on?(23) # true
# puts prueba.occurs_on?(50) # false

class DailyAppointment < Appointment


    def occurs_on?(hour, min)
        if hour == self.hour and min ==self.min
            "#{true}"
       else
            "#{false}"
       end
    end
    
    def to_s
        "Reunion diaria en #{self.location} sobre #{self.purpose} a las #{self.hour}:#{self.min}."
    end

end

puts DailyAppointment.new('Desafio Latam', 'Educacion', 8, 15)


# puts prueba.occurs_on?(8,15) #true
# puts prueba.occurs_on?(8,30) #false

class OneTimeAppointment < Appointment
    attr_accessor :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day, month, year)
        if day == self.day and month == self.month and year == self.year
            "#{true}"
       else
            "#{false}"
       end
    end

    def to_s
        "Reunion unica en #{self.location} sobre #{self.purpose} el #{self.day}/#{self.month}/#{self.year} a las #{self.hour}:#{self.min}."
    end
end

puts OneTimeAppointment.new('Desafio Latam', 'Trabajo', 14, 30, 4, 6, 2019)

# puts prueba.occurs_on?(4,6,2019) #true
# puts prueba.occurs_on?(6,4,2019) #false

        




