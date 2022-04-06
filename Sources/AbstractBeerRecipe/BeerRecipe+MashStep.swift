//
//  BeerRecipe+MashStep.swift
//  AbstractBeerRecipe
//
//  Created by Thomas Bonk on 06.04.22.
//  Copyright © 2022 Thomas Bonk <thomas@meandmymac.de>
//
//  Licensed under the Apache License, Version 2.0 (the "License");
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
  
  struct MashSteps {
    public var mashingTemperature : UInt16
    public var unit               : String
    public var steps              : [MashStep]
    
    public struct MashStep {
      public var temperature    : UInt16
      public var unit           : String
      public var time           : UInt16
    }
  }
}
