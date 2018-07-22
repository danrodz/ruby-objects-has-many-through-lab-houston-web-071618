class Doctor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select { |x| x.doctor == self }
  end

  def patients
    arr = Appointment.all.map { |x| x.patient if x.doctor == self }
    arr.compact
  end

  def self.all
    @@all
  end
end