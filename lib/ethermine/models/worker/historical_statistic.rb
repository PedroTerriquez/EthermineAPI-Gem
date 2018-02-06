module Ethermine::Model::Worker
  class HistoricalStatistic < Ethermine::Model::Model
    attr_reader :time, :reported_hash_rate,
      :current_hash_rate, :valid_shares,
      :invalid_shares, :stale_shares,
      :average_hash_rate

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
