//
//  main.swift
//  TemperatureConverter
//
//  Created by Harris-Stoertz, Rowan on 2021-02-02.
//

import Foundation
while true{
    var celsiusTemp = 0.0
    var convertedTemp = 0.0
    //input
    print("Temperature Converter")
    print("=====================")
    print ("What temperature system would you like to convert from?")
    print("C - Celsius")
    print("F - Fahrenheit")
    print("K - Kelvin")
    print ("Q- Quit temperature converter")
    let startingSystem = String.collectInput(withPrompt: "Please enter your selection: ", acceptableValues: ["C", "F", "K", "Q"])
    if startingSystem == "Q" {
        exit (0)
    }
    print ("What temperature system would you like to convert to?")
    print("C - Celsius")
    print("F - Fahrenheit")
    print("K - Kelvin")
    print ("Q- Quit temperature converter")
    let endSystem = String.collectInput(withPrompt: "Please enter your selection: ", acceptableValues: ["C", "F", "K", "Q"])
    if startingSystem == "Q" {
        exit (0)
    let startTemp = Double.collectInput(withPrompt: "What temperature would you like to convert?", minimum: nil, maximum: nil)
    
    switch startingSystem{
    case "C": celsiusTemp = startTemp
    case "F": celsiusTemp = fahrenheitToCelsius(startingTemp: startTemp)
    case "K": celsiusTemp = kelvinToCelsius(startingTemp: startTemp)
    default:
        break
    }
    switch endSystem{
    case "C": print("Your temperature in Celsius is \(celsiusTemp)° C")
    case "F": convertedTemp = celsiusToFahrenheit(startingTemp: celsiusTemp)
        print(("Your temperature in Fahrenheit is \(convertedTemp)° F"))
    case "K": convertedTemp = celsiusToKelvin(startingTemp: celsiusTemp)
        print(("Your temperature in Kelvin is \(convertedTemp)° K"))
    default:
        break
    }
}
