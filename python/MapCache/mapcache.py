#! /usr/bin/env python
# -*- coding: utf8 -*-
#
# Copyright (C) 2018  Dastgir
#
# you can redistribute it and/or modify it under the terms of
# the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# This Script converts individual map into mcache format
# Usage:
#  python3 mapcache.py MapName
# MapName should be without extension
# Example: python3 mapcache.py prontera


import struct
import os
import zlib
import hashlib
import sys
# Defines
NO_WATER = 1000000


if (len(sys.argv) != 2):
	print('''Invalid Format:
	Please Run the script as following:
		python3 mapcache.py MapName
	MapName should be without any extension, example:
		python3 mapcache.py prontera''')
	exit()

name = sys.argv[1]

class Map:
	def __init__(self, name):
		self.mapname = name
		self.water_height = NO_WATER

	def read_wh(self):
		try:
			fin = open("{}.rsw".format(self.mapname), "rb")
			fin.read(166)	# Skip 166 bytes
			self.water_height = struct.unpack('<f', fin.read(4))[0]
			fin.close()
		except:
			print("Warning: {}.rsw not found, Assuming no water".format(self.mapname))
			return

	def read_map(self):	
		try:
			fin = open("{}.gat".format(self.mapname), "rb")
		except:
			print("ERROR: {}.gat not found".format(self.mapname))
			exit()
		# Skip 6 bytes
		fin.read(6)
		# Read map size
		self.xs = struct.unpack('<L', fin.read(4))[0] # Restrict to int16
		self.ys = struct.unpack('<L', fin.read(4))[0]

		if (self.xs <= 0 or self.ys <= 0):
			print("Invalid File: {}.gat, xs({}) and ys({}) is having 0 or negative value".format(self.mapname, self.xs, self.ys))
			exit()

		# Total Map Size
		self.map_size = self.xs * self.ys

		self.cells = []
		for xy in range(0, self.map_size):
			self.height = struct.unpack('<f', fin.read(4))[0]
			fin.read(12) # Skip 12 bytes
			self.type = struct.unpack('<L', fin.read(4))[0]

			if (self.type == 0 and self.water_height != NO_WATER and self.height > self.water_height):
				self.type = 3;

			self.cells.append(self.type)
		fin.close()

	def write(self):
		if (len(self.mapname) > 24 or len(self.mapname) < 1):
			print("Map Name({}) is too big. Length should not exceed 24 characters".format(self.mapname))
			return
		elif (self.xs < 0 or self.ys < 0):
			print("Invalid MapSize: {}.gat, xs({}) and ys({}) is having 0 or negative value".format(self.mapname, self.xs, self.ys))
			return
		elif (self.xs * self.ys > 512 * 512):
			print("Invalid MapSie: {}.gat, Size:({}) MaxSize:{}. Size of map is too large".format(self.mapname, self.xs * self.ys, 512 * 512))
			return
		header = {}

		# Version
		header['version'] = struct.pack('<h', 0x1)
		# Size
		header['xsys'] = struct.pack('<hh', self.xs, self.ys)

		# Compress the buffer
		buf = struct.pack('%sB' % len(self.cells), *self.cells)
		compressed_buf = zlib.compress(buf)
		compressed_buf_len = len(compressed_buf)

		# Get MD5
		m = hashlib.md5()
		md5 = m.update(compressed_buf)

		# Length
		header['len'] = struct.pack('<i', compressed_buf_len)

		header['md5'] = m.digest()

		# Write the File
		fin = open(self.mapname +".mcache", "wb")
		fin.write(header['version'])
		fin.write(header['md5'])
		fin.write(header['xsys'])
		fin.write(header['len'])
		fin.write(compressed_buf)
		print("SUCESS: Saved at {}.mcache".format(self.mapname))
		fin.close()


m = Map(name)
m.read_wh()
m.read_map()
m.write()