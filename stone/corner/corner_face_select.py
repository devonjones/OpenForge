#!/usr/bin/env python
import sys
import random
import pprint
from optparse import OptionParser

def layer_def():
	return {
		"back1": [], "back2": [], "interior1": [], "interior2": [], "sides": []
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
		(2,2,2,2,2),
		(3,3,2,2,2),
		(2,2,2,2,2),
		(3,3,2,2,2),
		(2,2,2,2,2),
		(3,3,2,2,2),
		(0,0,0,0,5),
	]

def layers_def_2():
	return [
		(5,5,5,5,2),
		(5,5,4,4,2),
		(5,5,5,5,2),
		(5,5,4,4,2),
		(5,5,5,5,2),
		(5,5,4,4,2),
		(0,0,0,0,9),
	]

def layers_def_3():
	return [
		(7,7,7,7,2),
		(8,8,7,7,2),
		(7,7,7,7,2),
		(8,8,7,7,2),
		(7,7,7,7,2),
		(8,8,7,7,2),
		(0,0,0,0,16),
	]

def layers_def_4():
	return [
		(10,10,10,10,2),
		(10,10,9,9,2),
		(10,10,10,10,2),
		(10,10,9,9,2),
		(10,10,10,10,2),
		(10,10,9,9,2),
		(0,0,0,0,19),
	]

def select_side(layers, layer, side, definition):
	for i in range(definition):
		choices = cull(layers, layer, side)
		if len(choices) == 0:
			raise Exception("No choices left")
		c = random.choice(choices)
		layer[side].append(c)

def select_sides(layers, definition):
	b1def, b2def, i1def, i2def, sdef = definition
	layer = layer_def()
	layers.append(layer)
	select_side(layers, layer, "back1", b1def)
	select_side(layers, layer, "back2", b2def)
	select_side(layers, layer, "interior1", i1def)
	select_side(layers, layer, "interior2", i2def)
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

