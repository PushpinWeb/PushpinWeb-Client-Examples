#!/usr/bin/env python

import os
import pycurl

client = pycurl.Curl()

client.setopt(pycurl.USERPWD, os.environ['PPW_USER'] + ':' + os.environ['PPW_PASS'])
client.setopt(pycurl.HTTPAUTH, pycurl.HTTPAUTH_DIGEST)
client.setopt(pycurl.URL, 'http://www.pushpinweb.com/datasets/1.json')
client.setopt(pycurl.HTTPGET, 1)

client.perform()

print
