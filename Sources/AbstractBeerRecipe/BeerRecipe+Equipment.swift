//
//  BeerRecipe+Equipment.swift
//  AbstractBeerRecipe
//
//  Created by Thomas Bonk on 07.04.22.
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
  
  struct Equipment {
    /// Name of the equipment profile – usually a text description of the brewing setup.
    public var name: String

    /// Version of the equipment record.  Should always be "1" for this version of the XML standard.
    public var version: Int = 1

    /// The pre-boil volume used in this particular instance for this equipment setup.  Note that this may be a
    /// calculated value depending on the CALC_BOIL_VOLUME parameter.
    public var boilSize: Float? = nil

    /// The target volume of the batch at the start of fermentation.
    public var batchSize: Float? = nil

    /// Volume of the mash tun in liters.  This parameter can be used to calculate if a particular mash and grain profile
    /// will fit in the mash tun.  It may also be used for thermal calculations in the case of a partially full mash tun.
    public var tunVolume: Float? = nil

    /// Weight of the mash tun in kilograms.  Used primarily to calculate the thermal parameters of the mash tun – in
    // conjunction with the volume and specific heat.
    public var tunWeight: Float? = nil

    /// The specific heat of the mash tun which is usually a function of the material it is made of.  Typical ranges are
    /// 0.1-0.25 for metal and 0.2-0.5 for plastic materials.
    public var tunSpecificHeat: Float? = nil

    /// The amount of top up water normally added just prior to starting fermentation.  Usually used for extract brewing.
    public var topUpWater: Float? = nil

    /// The amount of wort normally lost during transition from the boiler to the fermentation vessel.  Includes both
    /// unusable wort due to trub and wort lost to the chiller and transfer systems.
    public var trubChillerLoss: Float? = nil

    /// The percentage of wort lost to evaporation per hour of the boil.
    public var evapRate: Float? = nil

    /// The normal amount of time one boils for this equipment setup.  This can be used with the evaporation rate to
    /// calculate the evaporation loss.
    public var boilTime: UInt16? = nil

    /// Flag denoting that the program should calculate the boil size.  Flag may be TRUE or FALSE.
    /// If TRUE, then BOIL_SIZE = (BATCH_SIZE – TOP_UP_WATER – TRUB_CHILLER_LOSS) * (1+BOIL_TIME * EVAP_RATE )
    /// If set then the boil size should match this value.
    public var calcBoilVolume = false

    /// Amount lost to the lauter tun and equipment associated with the lautering process.
    public var lauterDeadspace: UInt16? = nil

    /// Amount normally added to the boil kettle before the boil.
    public var topUpKettle: UInt16? = nil

    /// Large batch hop utilization.  This value should be 100% for batches less than 20 gallons, but may be higher
    /// (200% or more) for very large batch equipment.
    public var hopUtilization: Float? = nil

    /// Notes associated with the equipment.  May be a multiline entry.
    public var notes: String? = nil
  }
}
