module Ethermine::Model::Pool
  class ServerHashRate < Ethermine::Model::Model
    attr_reader :time, :hashrate, :server
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
