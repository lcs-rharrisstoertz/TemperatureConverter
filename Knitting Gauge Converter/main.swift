//
//  main.swift
//  Knitting Gauge Calculator
//
//  Created by Harris-Stoertz, Rowan on 2021-02-03.
//

import Foundation
var CMDistance = 0.0

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

print ("Which unit of distance are your desired measurements for your completed project in?")
print("1 - inches")
print("2 - feet")
print("3 - centimeters")
print("4 - millimeters")

let endingUnit = String.collectInput(withPrompt: "Please enter your selection: ", acceptableValues: ["1", "2", "3", "4"])

let finalLength = Double.collectInput(withPrompt: "How many units long would you like your completed project to be? ", minimum: 0, maximum: nil)
let finalWidth = Double.collectInput(withPrompt: "How many units wide would you like your completed project to be? ", minimum: 0, maximum: nil)

switch startingUnit{
case "1": CMDistance = inches
case "2":
case "3":
case "4":
default:
    break
