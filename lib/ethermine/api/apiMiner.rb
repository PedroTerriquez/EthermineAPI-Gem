module Ethermine::Api
  class APIMiner < BaseApi 

    def initialize(miner)
      @miner = miner
    end

    def blocks
      hash = customrequest("miner/#{@miner}/blocks")
      Ethermine::Model::Miner::History.all(hash)
    end 

    def history
      hash = request("miner/#{@miner}/history")
      Ethermine::Model::Miner::History.all(hash)
    end

    def payouts
      hash = request("miner/#{@miner}/payouts") 
      Ethermine::Model::Miner::Payouts.all(hash)
    end

    def rounds
      hash = request("miner/#{@miner}/rounds") 
      Ethermine::Model::Miner::Rounds.all(hash)
    end

    def settings
      hash = request("miner/#{@miner}/settings") 
      Ethermine::Model::Miner::Settings.new(hash)
    end

    def statistics
      hash = request("miner/#{@miner}/currentStats")
      Ethermine::Model::Miner::Statistics.new(hash)
    end
  end
end
