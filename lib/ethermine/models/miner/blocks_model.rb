module Ethermine::Model::Miner
  class Blocks < Ethermine::Model::Model
    attr_reader :paid_on, :number, :type, :amount, :tx_hash
    def initialize(miner)
      process_attributes(miner)  
    end
  
    def self.all(data)
      data.map do |value|
        self.new(value)
      end
    end

  end
end
