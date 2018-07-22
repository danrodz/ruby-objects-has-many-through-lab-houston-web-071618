class Patient
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select { |x| x.patient == self }
  end

  def doctors
    arr = Appointment.all.map { |x| x.doctor if x.patient == self }
    arr.compact
  end
end
