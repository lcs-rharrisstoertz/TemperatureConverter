//
//  main.swift
//  TemperatureConverter
//
//  Created by Harris-Stoertz, Rowan on 2021-02-02.
//

import Foundation

//input
print("Temperature Converter")
print("=====================")
print ("What temperature would you like to convert to?")
print("C - Celsius")
print("F - Fahrenheit")
let convertTo = String.collectInput(withPrompt: "Please enter your selection: ", acceptableValues: ["C", "F"])//gives choices, prompts user to make a selection repeatedly until they enter a valid one

let startingTemp = Double.collectInput(withPrompt: "Enter the temperature to be converted: ",
                           minimum: nil,
                           maximum: nil)//collects the temperature to be converted from the user
//process and output
switch convertTo {
case "C":
    let convertedTemp = convertToCelsius(startingTemp: startingTemp)
    print("\(startingTemp)° F  is equal to \(convertedTemp)° C")//calls the function and uses it to calculate and then print the output
case "F":
    let convertedTemp = convertToFahrenheit(startingTemp: startingTemp)
    print("\(startingTemp)° C  is equal to \(convertedTemp)° F")//calls the function and uses it to calculate and then print the output
default:
    break
}

