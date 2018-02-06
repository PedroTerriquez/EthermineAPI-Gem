module Ethermine::Api
  class PoolApi < BaseApi
    def initialize()
    end
    def poolstatistics
      array = request("poolStats")
      Ethermine::Model::Pool::Statistics.all(array['minedBlocks'])
    end
    def creditlist
      array = customrequest("credits")
      Ethermine::Model::Pool::CreditList.all(array)
    end
    def minedblockstats
      array = request("blocks/history")
      Ethermine::Model::Pool::MinedBlocksStats.all(array)
    end
    def networkstatistics
      array = request("networkStats")
      Ethermine::Model::Pool::NetworkStatistics.new(array)
    end
    def serverhashratestats
      array = request("servers/history")
      Ethermine::Model::Pool::ServerHashRate.all(array)
    end
  end
end
