module Ethermine::Model::Pool
  class Statistics < Ethermine::Model::Model
    attr_reader :number, :miner, :time, :miner, :hash_rate, :hash_rate, :miners, :workers, :usd, :btc
    
    def initialize(data)
      process_attributes(data)
    end

    def self.all(datas)
	    datas.map do |data|
		    self.new(data)
	    end
    end
  end
end

