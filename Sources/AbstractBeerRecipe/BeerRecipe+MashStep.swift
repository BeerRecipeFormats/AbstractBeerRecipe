//
//  BeerRecipe+MashStep.swift
//  AbstractBeerRecipe
//
//  Created by Thomas Bonk on 08.04.22.
//  Copyright © 2022 Thomas Bonk <thomas@meandmymac.de>
//
//  Licensed under the Apache License, Version 2.0 (the "License"):
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

public extension BeerRecipe {
  
  struct MashStep {
    
    // MARK: - Public Enums
    
    public enum `Type` {
      case infusion
      case temperature
      case decoction
    }
    
    
    // MARK: - Public Properties
    
    /// Name of the mash step – usually descriptive text such as "Dough In" or "Conversion"
    public var name: String

    /// Version of the mash step record.  Should always be "1" for this version of the XML standard.
    public var version: Int = 1

    /// May be "Infusion", "Temperature" or "Decoction" depending on the type of step.  Infusion denotes adding hot water,
    /// Temperature denotes heating with an outside heat source, and decoction denotes drawing off some mash for boiling.
    public var type: `Type`

    /// The volume of water in liters to infuse in this step.  Required only for infusion steps, though one may also add
    /// water for temperature mash steps.  One should not have an infusion amount for decoction steps.
    public var infuseAmount: Float? = nil

    /// The target temperature for this step in degrees Celsius.
    public var stepTemp: UInt8? = nil

    /// The number of minutes to spend at this step – i.e. the amount of time we are to hold this particular step
    /// temperature.
    public var stepTime: UInt8? = nil

    /// Time in minutes to achieve the desired step temperature – useful particularly for temperature mashes where it may
    /// take some time to achieve the step temperature.
    public var rampTime: UInt8? = nil

    /// The temperature you can expect the mash to fall to after a long mash step.  Measured in degrees Celsius.
    public var endTemp: UInt8? = nil
  }
}
