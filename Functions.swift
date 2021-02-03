//
//  Functions.swift
//  TemperatureConverter
//
//  Created by Harris-Stoertz, Rowan on 2021-02-03.
//

import Foundation

//functions

/// converts a celsius temperature to fahrenheit
/// - Parameter startingTemp: the celsius temperature to be converted
/// - Returns: the converted fahrenheit temperature
func celsiusToFahrenheit(startingTemp: Double) -> Double {
    return (startingTemp * 9.0/5.0) + 32
}

/// converts a celsius temperature to kelvin
/// - Parameter startingTemp: the celsius temperature to be converted
/// - Returns: the converted Kelvin temperature
func celsiusToKelvin(startingTemp: Double) -> Double {
    return (startingTemp + 273.15)
}

/// converts a fahrenheit temperature to celsius
/// - Parameter startingTemp: the fahrenheit temperature to be converted
/// - Returns: the converted celsius temperature
func fahrenheitToCelsius(startingTemp: Double) -> Double {
    return (startingTemp - 32) * 5.0/9.0
}

/// converts a kelvin temperature to celsius
/// - Parameter startingTemp: the kelvin temperature to be converted
/// - Returns: the converted celsius temperature
func kelvinToCelsius(startingTemp: Double) -> Double {
    return (startingTemp - 273.15)
}
