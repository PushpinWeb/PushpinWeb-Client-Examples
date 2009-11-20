#!/usr/bin/env ruby

require 'rubygems'
require 'httpclient'
require 'json'

client = HTTPClient.new

client.set_auth('http://www.pushpinweb.com', ENV['PPW_USER'], ENV['PPW_PASS'])

content = client.get_content(
          "http://" +
          "www.pushpinweb.com" +
          "/datasets/1.json"
)

y JSON.parse(content)
