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

/// converts inches to centimeters
/// - Parameter startingDistance: the distance in inches to be converted
/// - Returns: the converted distance in centimeters
func inchesToCentimeters(startingDistance: Double) -> Double {
    return (startingDistance * 2.54)
}

/// converts feet to centimeters
/// - Parameter startingDistance: the distance in feet to be converted
/// - Returns: the converted distance in centimeters
func feetToCentimeters(startingDistance: Double) -> Double {
    return (startingDistance * 30.48)
}

/// converts millimeters to centimeters
/// - Parameter startingDistance: the distance in millimeters to be converted
/// - Returns: the converted distance in centimeters
func millimetersToCentimeters(startingDistance: Double) -> Double {
    return (startingDistance / 10.0)
}

/// converts centimeters to inches
/// - Parameter startingDistance: the distance in centimeters to be converted
/// - Returns: the converted distance in inches
func centimetersToInches(CMDistance: Double) -> Double {
    return (CMDistance / 2.54)
}

/// converts centimeters to feet
/// - Parameter startingDistance: the distance in centimeters to be converted
/// - Returns: the converted distance in feet
func centimetersToFeet(CMDistance: Double) -> Double {
    return (CMDistance / 30.48)
}

/// converts centimeters to millimeters
/// - Parameter startingDistance: the distance in centimeters to be converted
/// - Returns: the converted distance in millimeters
func centimetersToMillimeters(CMDistance: Double) -> Double {
    return (CMDistance * 10.0)
}
