#!/usr/bin/env ruby

require 'rubygems'
require 'curl'
require 'json'

client = Curl::Easy.perform(
          "http://#{ENV['PPW_USER']}:#{ENV['PPW_PASS']}" +
          "@www.pushpinweb.com" +
          "/datasets/1.json"
)

y JSON.parse(client.body_str)
