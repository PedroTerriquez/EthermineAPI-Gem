module Ethermine::Model::Pool
  class CreditList < Ethermine::Model::Model
    attr_reader :miner, :hashrate, :credit
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
