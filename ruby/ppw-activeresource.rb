#!/usr/bin/env ruby

require 'rubygems'
require 'active_resource'
require 'json'

class Dataset < ActiveResource::Base
  self.site = "http://www.pushpinweb.com/datasets"
  self.user = ENV['PPW_USER']
  self.password = ENV['PPW_PASSWORD']
  self.format = :json

  # Digest is only available after 2.3.4
  #
  self.auth_type = :digest 

end

puts Dataset.find(1).inspect
