module Ethermine::Model::Miner
  class Statistics < Ethermine::Model::Model
     
    attr_reader :time, :last_seen, :reported_hash_rate, :average_hash_rate, :valid_shares, 
	        :invalid_shares, :stale_shares, :active_workers, :unpaid, :unconfirmed, 
		:coins_per_min, :usd_per_min, :btc_per_min 
    
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
