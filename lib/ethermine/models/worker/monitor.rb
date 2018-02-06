module Ethermine::Model::Worker
  class Monitor < Ethermine::Model::Model
    attr_reader :worker, :last_seen,
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
