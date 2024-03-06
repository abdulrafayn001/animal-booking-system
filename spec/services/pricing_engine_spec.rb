require 'rails_helper'

RSpec.describe PricingEngine do
  describe '.calculate_cost' do
    context 'when the animal type is dog' do
      it 'calculates the cost correctly' do
        total_cost = PricingEngine.calculate_cost('dog', 3)
        expect(total_cost).to eq(50)
      end
    end

    context 'when the animal type is cat' do
      it 'calculates the cost correctly' do
        total_cost = PricingEngine.calculate_cost('cat', 4)
        expect(total_cost).to eq(40)
      end
    end

    context 'when the hours requested are at minimum value' do
      it 'calculates the cost correctly' do
        total_cost = PricingEngine.calculate_cost('dog', 2)
        expect(total_cost).to eq(40)
      end
    end

    context 'when the hours requested are at maximum value' do
      it 'calculates the cost correctly' do
        total_cost = PricingEngine.calculate_cost('cat', 8)
        expect(total_cost).to eq(60)
      end
    end
  end
end
