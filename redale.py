#!/usr/bin/python

import subprocess
import xml.etree.ElementTree as ET
import sys, getopt, os

argv = sys.argv[1:]

error = False

if len(argv) == 0:
	print '[CLANG FORMAT] Hey Dude, I need some files to compare'
	sys.exit(1)

fileName = argv[0]

for fileName in argv:
	if os.path.isfile(fileName) == False:
		print "[CLANG FORMAT] file does not exist: %s" % fileName
		error = True
		
	p = subprocess.Popen(['clang-format', '-output-replacements-xml','Test.m'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
	out, err = p.communicate()


	xml = ET.fromstring(out)

	if xml.find('replacement') is not None:
		print "[CLANG FORMAT] style code error at file: %s" % fileName
		error = True

if error == True:
	sys.exit(1)
else:
	sys.exit(0)