//
//  main.swift
//  Knitting Gauge Calculator
//
//  Created by Harris-Stoertz, Rowan on 2021-02-03.
//

import Foundation
print("Knitting Gauge Converter")
print("========================")
print("Please knit a square or rectangular gauge swatch using the same yarn and needle size you will be using for your project")
print("========================")
let swatchStitchWidth = Double.collectInput(withPrompt: "How many stitches wide is your gauge swatch? ", minimum: 0, maximum: nil)
let swatchStitchLength = Double.collectInput(withPrompt: "How many rows long is your gauge swatch? ", minimum: 0, maximum: nil)
print("========================")
print("Please measure the length and width of your gauge swatch")
print("========================")
print ("Which unit of distance are your measurements in?")
print("1 - inches")
print("2 - feet")
print("3 - centimeters")
print("4 - millimeters")
let startingUnit = String.collectInput(withPrompt: "Please enter your selection: ", acceptableValues: ["1", "2", "3", "4"])

let swatchLength = Double.collectInput(withPrompt: "How many units long is your gauge swatch? ", minimum: 0, maximum: nil)
let swatchWidth = Double.collectInput(withPrompt: "How many units wide is your gauge swatch? ", minimum: 0, maximum: nil)



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
