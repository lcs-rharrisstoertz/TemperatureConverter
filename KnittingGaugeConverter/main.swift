//
//  main.swift
//  Knitting Gauge Calculator
//
//  Created by Harris-Stoertz, Rowan on 2021-02-03.
//

import Foundation
var CMWidth = 0.0
var CMLength = 0.0
var convertedLength = 0.0
var convertedWidth = 0.0

print("Knitting Gauge Converter")
print("========================")
print("Please knit a square or rectangular gauge swatch using the same yarn and needle size you will be using for your project")
print("If you plan to wash your finished project, wash your gauge swatch before measuring")
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
case "1": CMLength = inchesToCentimeters(startingDistance: swatchLength)
case "2": CMLength = feetToCentimeters(startingDistance: swatchLength)
case "3": CMLength = swatchLength
case "4": CMLength = millimetersToCentimeters(startingDistance: swatchLength)
default:
    break}
switch endingUnit{
case "1": convertedLength = centimetersToInches(startingDistance: CMLength)
case "2": convertedLength = centimetersToFeet(startingDistance: CMLength)
case "3": convertedLength = swatchLength
case "4": convertedLength = centimetersToMillimeters(startingDistance: CMLength)
default:
    break}

switch startingUnit{
case "1": CMWidth = inchesToCentimeters(startingDistance: swatchWidth)
case "2": CMWidth = feetToCentimeters(startingDistance: swatchWidth)
case "3": CMWidth = swatchWidth
case "4": CMWidth = millimetersToCentimeters(startingDistance: swatchWidth)
default:
    break}
switch endingUnit{
case "1": convertedWidth = centimetersToInches(startingDistance: CMWidth)
case "2": convertedWidth = centimetersToFeet(startingDistance: CMWidth)
case "3": convertedWidth = swatchWidth
case "4": convertedWidth = centimetersToMillimeters(startingDistance: CMWidth)
default:
    break}

let widthDensity = swatchStitchWidth/convertedWidth
let lengthDensity = swatchStitchLength/convertedLength

let requiredLength = finalLength * lengthDensity
let requiredWidth = finalWidth * widthDensity

print("========================")
print("To achieve your desired dimensions, your project needs to be \(requiredWidth) stitches wide and \(requiredLength) rows long!")
