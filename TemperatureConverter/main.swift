//
//  main.swift
//  TemperatureConverter
//
//  Created by Harris-Stoertz, Rowan on 2021-02-02.
//

import Foundation

print("Hello, World!")

//functions

func convertToFahrenheit(startingTemp: Double) -> Double {
    return (startingTemp * 9.0/5.0) + 32
}

func convertToCelsius(startingTemp: Double) -> Double {
    return (startingTemp - 32) * 5.0/9.0
}

//input
print("Temperature Converter")
print("=====================")
print ("What temperature would you like to convert to?")
print("C - Celsius")
print("F - Fahrenheit")
let convertTo = String.collectInput(withPrompt: "Please enter your selection: ", acceptableValues: ["C", "F"])

let startingTemp = Double.collectInput(withPrompt: "Enter the temperature to be converted: ",
                           minimum: nil,
                           maximum: nil)
//process and output
switch convertTo {
case "C":
    let convertedTemp = convertToCelsius(startingTemp: startingTemp)
    print("\(startingTemp)° F  is equal to \(convertedTemp)° C")
case "F":
    let convertedTemp = convertToFahrenheit(startingTemp: startingTemp)
    print("\(startingTemp)° C  is equal to \(convertedTemp)° F")
default:
    break
}

