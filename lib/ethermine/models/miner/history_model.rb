module Ethermine::Model::Miner
  class History < Ethermine::Model::Model
    attr_reader :time, :reported_hash_rate, :average_hash_rate, :current_hash_rate, 
	        :valid_shares, :invalid_shares, :stale_shares, :active_workers 

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
