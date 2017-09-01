require './lib/car.rb'

describe Car do
  let(:car) { instance_double('Driver') }

  it 'should have vehicle on initialize' do
    expected_output = {wheel: 4, color: 'red', max_speed: 220}
    expect(subject.vehicle).to eq expected_output
  end

  it 'should change color' do
    expect(subject.paint('blue')).to eq 'blue'
  end

  it 'should have a driver' do
    expected_output = { wheel: 4, color: 'red', max_speed: 220, driver: 'Nurlan' }
    subject.driver('Nurlan')
    expect(subject.vehicle).to eq expected_output
  end
end
