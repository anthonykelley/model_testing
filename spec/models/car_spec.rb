# == Schema Information
#
# Table name: cars
#
#  id             :integer          not null, primary key
#  make           :string           default(""), not null
#  model          :string           default(""), not null
#  color          :string           default(""), not null
#  year           :string           default(""), not null
#  price          :float            default(0.0), not null
#  mileage        :float            default(0.0), not null
#  running        :boolean          default(TRUE)
#  interior_color :string           default(""), not null
#  vin            :string           default(""), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'attributes' do
    it { should respond_to :make }
    it { should respond_to :model }
    it { should respond_to :price }
    it { should respond_to :year }
    it { should respond_to :mileage }
    it { should respond_to :color }
    it { should respond_to :vin }
    it { should respond_to :interior_color }
    it { should respond_to :running }
  end

  describe 'validations' do
    context 'presence valiators' do
      it { should validate_presence_of(:make) }
      it { should validate_presence_of(:model) }
      it { should validate_presence_of(:price) }
      it { should validate_presence_of(:year) }
      it { should validate_presence_of(:mileage) }
      it { should validate_presence_of(:color) }
      it { should validate_presence_of(:vin) }
      it { should validate_presence_of(:interior_color) }
    end

    context 'uniqueness validators' do
      it { should validate_uniqueness_of(:vin) }
    end

    context 'inclusion of validators' do
      it do
        should validate_inclusion_of(:year).
          in_array((1920..Date.today.year).to_a)
      end
    end
  end

  describe 'instance methods' do
    before(:each) do
      car = car.create(make: 'Toyota')
    end

    it '#paint - paints the car a different color' do
    end

    it '#honk - honks the horn' do
    end

    it '#info - displays the cars info' do
    end
  end

  describe 'class methods' do
    it '.running - returns all running cars'
    it '.running - returns all non running cars'
    it '.by_make - returns all cars ordered by make asc'
    it '.by_price - returns all cars by highest price'
    it '.by_price - returns all cars by lowest price'
  end

end
