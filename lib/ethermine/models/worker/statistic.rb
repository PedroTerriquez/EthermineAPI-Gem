module Ethermine::Model::Worker
  class Statistic < Ethermine::Model::Model
    attr_reader :worker, :time, :last_seen,
      :reported_hash_rate, :average_hash_rate,
      :current_hash_rate, :valid_shares, :invalid_shares, :stale_shares

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
