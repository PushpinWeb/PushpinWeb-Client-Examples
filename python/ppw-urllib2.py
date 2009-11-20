#!/usr/bin/env python

import os
import urllib2

url = 'http://www.pushpinweb.com/datasets/1.json'

authhandler = urllib2.HTTPDigestAuthHandler()
authhandler.add_password('PushpinWeb API', url, os.environ['PPW_USER'], os.environ['PPW_PASS'])

opener = urllib2.build_opener(authhandler)

urllib2.install_opener(opener)

response = urllib2.urlopen(url)

print response.read()
