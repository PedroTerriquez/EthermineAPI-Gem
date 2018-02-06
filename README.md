# EthermineAPI-Gem

This gem help you to get information about Ethermine :)

## Instalation

gem install ./ethermine-0.0.0.gem

## Usage for pool part

```
require 'ethermine'

pool = Ethermine::Api::PoolApi.new

pool.poolstatistics
pool.creditlist
pool.minedblockstats
pool.networkstatistics
pool.serverhashratestats

```
