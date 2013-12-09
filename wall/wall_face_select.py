#!/usr/bin/env python
import sys
import random
import pprint
from optparse import OptionParser

def unique_in_layer(layer, selection):
	if selection in layer["front"]:
		return False
	if selection in layer["back"]:
		return False
	if selection in layer["sides"]:
		return False

def unique_in_side(layers, side, selection):
	for layer in layers:
		if selection in layer[side]:
			return False

def layer_def():
	return {
		"front": [], "back": [], "sides": []
	}

def cull(layers, layer, side):
	choices = set(range(64))
	choices = cull_side(layers, side, choices)
	choices = cull_layer(layer, choices)
	return list(choices)

def cull_side(layers, side, choices):
	values = []
	for layer in layers:
		values.extend(layer[side])
	return choices.difference(set(values))

def cull_layer(layer, choices):
	values = []
	for side in layer.keys():
		values.extend(layer[side])
	return choices.difference(set(values))

def layers_def_1():
	return [
		(2,2,2),
		(3,3,2),
		(2,2,2),
		(3,3,2),
		(2,2,2),
		(3,3,2),
		(0,0,2),
		(0,0,3),
	]

def layers_def_2():
	return [
		(5,5,2),
		(4,4,6),
		(5,5,2),
		(4,4,6),
		(5,5,2),
		(4,4,6),
		(0,0,5),
		(0,0,6),
	]

def layers_def_3():
	return [
		(8,8,4),
		(8,8,4),
		(8,8,4),
		(8,8,4),
		(8,8,4),
		(8,8,4),
		(0,0,8),
		(0,0,8),
	]

def layers_def_4():
	return [
		(10,10,2),
		(9,9,6),
		(10,10,2),
		(9,9,6),
		(10,10,2),
		(9,9,6),
		(0,0,10),
		(0,0,11),
	]

def select_side(layers, layer, side, definition):
	for i in range(definition):
		choices = cull(layers, layer, side)
		if len(choices) == 0:
			raise Exception("No choices left")
		c = random.choice(choices)
		layer[side].append(c)

def select_sides(layers, definition):
	fdef, bdef, sdef = definition
	layer = layer_def()
	layers.append(layer)
	select_side(layers, layer, "front", fdef)
	select_side(layers, layer, "back", bdef)
	select_side(layers, layer, "sides", sdef)

def main():
	parser = optionParser()
	(options, args) = parser.parse_args()
	results = []
	if len(args) == 0:
		sys.stderr.write("wall length required\n")
		sys.exit(1)
	length = int(args[0])
	if length == 1:
		layers = layers_def_1()
	elif length == 2:
		layers = layers_def_2()
	elif length == 3:
		layers = layers_def_3()
	elif length == 4:
		layers = layers_def_4()
	for layer in layers:
		select_sides(results, layer)
	pp = pprint.PrettyPrinter(indent=2)
	pp.pprint(results)

def optionParser():
	usage = "usage: %prog [options] [wall length]\n\n"
	usage += "Generates wall part layouts.\n"

	parser = OptionParser(usage=usage)

	return parser

if __name__=='__main__':
		main()

