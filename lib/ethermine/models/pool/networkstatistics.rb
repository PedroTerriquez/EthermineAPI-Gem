module Ethermine::Model::Pool
  class NetworkStatistics < Ethermine::Model::Model
    attr_reader :time, :block_time, :difficulty, :hash_rate, :usd, :btc
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
