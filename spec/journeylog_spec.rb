require 'journeylog'
describe JourneyLog do

  let(:station_a) { double :station }
  let(:station_b) { double :station }

  describe '#start' do
  it {is_expected.to respond_to(:start).with(1).argument}

  it 'stores entry station' do
    subject.start(station_a)
    expect(subject.route[:entry]).to eq station_a
  end
end

describe '#finish' do
  it {is_expected.to respond_to(:finish).with(1).argument}

  it 'stores exit station' do
    subject.finish(station_b)
    expect(subject.route[:exit]).to eq station_b
  end

  end

#   describe '#show_journey_history' do
#   before do
#     oyster.top_up(Oystercard::MINIMUM_BALANCE)
#     oyster.touch_in(station_a)
#     oyster.touch_out(station_b)
#   end
#   it 'shows journey history' do
#     expect(oyster.show_journey_history).to eq ["#{station_a} ---> #{station_b}"]
#   end
# end
end