#!/usr/bin/python
# -*- coding: utf-8 -*-
from HTMLParser import HTMLParser
from urllib2 import urlopen
import sys

class MyHTMLParser(HTMLParser):
    def __init__(self):
        HTMLParser.__init__(self)
        self.flag = False
    def handle_starttag(self, tag, attrs):
        #print "Encountered a start tag:", tag
        if tag == 'a':
            for (attr, val) in attrs:
                if attr == 'href':
                    print val

if len(sys.argv) < 2:
    sys.exit()

try:
    parser = MyHTMLParser()
    parser.feed(urlopen(sys.argv[1]).read())
except:
    print "¿Url inválida? Fin"
