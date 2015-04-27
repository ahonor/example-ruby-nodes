#!/usr/bin/env ruby

require 'yaml'

# variables passed as script-args from plugin:
#   url, account, region


opt_account = ARGV[0]
opt_url     = ARGV[1]
opt_region  = ARGV[2]


#
# Generate node data.
#
nodeset = {}

# Format: resourceyaml
#
nodeset["mongo"] = {
			"nodename" => "mongo",  "hostname" => "Targa.local", "username" => "deployer",
			"tags" => "vegetable,production", "osFamily" => "unix",
   			"url"=> opt_url, "account"=> opt_account, "region"=>opt_region
   		}



# Write yaml to stdout
#
# 
$stdout.write nodeset.to_yaml

