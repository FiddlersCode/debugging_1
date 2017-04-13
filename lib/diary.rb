# Understands the storage of appointments
class Diary
  attr_reader :appointments
  # def appointments
  #   @appointment
  # end

  def initialize
    @appointments = []
  end

  def add_appointment(appointment)
    raise "You're not free at that time" if not_free?(appointment)
    @appointments.push(appointment)
  end

  private

  def not_free?(appointment)
    appointments.map(&:time).include? appointment.time
  end
end
