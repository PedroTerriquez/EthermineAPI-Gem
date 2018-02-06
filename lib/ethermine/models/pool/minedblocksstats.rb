module Ethermine::Model::Pool
  class MinedBlocksStats < Ethermine::Model::Model
    attr_reader :time, :nbr_blocks, :difficulty
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
