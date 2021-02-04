//
//  main.swift
//  Knitting Gauge Calculator
//
//  Created by Harris-Stoertz, Rowan on 2021-02-03.
//

import Foundation
print("Knitting Gauge Converter")
print("========================")
print("Please knit a gauge swatch using the same yarn and needle size you will be using for your project")
let swatchWidth = Double.collectInput(withPrompt: "What temperature would you like to convert? ", minimum: nil, maximum: nil)//gets temp to be converted

print ("How many stitches wide is your gauge?")
print("C - Celsius")
print("F - Fahrenheit")
print("K - Kelvin")
print ("Q- Quit temperature converter")
let startingSystem = String.collectInput(withPrompt: "Please enter your selection: ", acceptableValues: ["C", "F", "K", "Q"])//gets starting temp system

print ("Which units do you use to measure distance?")
print("C - Celsius")
print("F - Fahrenheit")
print("K - Kelvin")
print ("Q- Quit temperature converter")
let startingSystem = String.collectInput(withPrompt: "Please enter your selection: ", acceptableValues: ["C", "F", "K", "Q"])//gets starting temp system
