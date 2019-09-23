class Oystercard
  attr_reader :balance, :maximum
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @maximum = 90
  end

  def top_up(money)
    fail "balance cannot exceed £#{maximum}" if over_maximum?(money)
    @balance += money
  end

  private

  def over_maximum?(money)
    balance + money > @maximum
  end
end
