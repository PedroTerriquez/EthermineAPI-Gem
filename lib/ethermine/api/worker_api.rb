module Ethermine::Api
  class WorkerApi < BaseApi
    def initialize(miner, worker = nil)
      @miner = miner
      @worker = worker
    end

    def all_statistics
      array = request("miner/#{@miner}/workers")
      Ethermine::Model::Worker::Statistic.all(array)
    end

    def statistics
      data = request("miner/#{@miner}/worker/#{@worker}/currentStats")
      data['worker'] = @worker
      Ethermine::Model::Worker::Statistic.new(data)
    end

    def historical_statistics
      array = request("miner/#{@miner}/worker/#{@worker}/history")
      Ethermine::Model::Worker::HistoricalStatistic.all(array)
    end

    def monitor
      array = request("miner/#{@miner}/workers/monitor")
      Ethermine::Model::Worker::Monitor.all(array)
    end
  end
end
