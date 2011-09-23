#!/usr/bin/env python2.5
# -*- coding: utf-8 -*-

import socket
import sys

def test(s):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect(('localhost', 1989))
    sock.send(s)
    s = sock.recv(4)

for i in xrange(10000):
    test('data')

