module Ethermine::Model::Miner
  class Settings < Ethermine::Model::Model
    attr_reader :email, :monitor, :min_payout, :ip

    def initialize(miner)
      process_attributes(miner) 
    end
    
    def self.all(data)
      data.map do |values|
        self.new(values)
      end
    end

  end
end
