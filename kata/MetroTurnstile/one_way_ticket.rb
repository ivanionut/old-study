class OneWayTicket

  def initialize
    @times = []
  end

  def scan_at(time)
    @times << time
    @times.last - @times.first >= 72 * 60 ? message('KO') : message('OK')
  end

  private

  def message(value)
    "BEEP #{value}"
  end

end