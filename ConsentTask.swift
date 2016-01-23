//
//  ConsentTask.swift
//  temp-murnane
//
//  Created by Daphne Chen on 1/23/16.
//  Copyright (c) 2016 BME. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentTask: ORKOrderedTask {

    var steps = [ORKStep]()
    
    // ADD VISUAL CONSENT STEP
    var consentDocument = ConsentDocument
    let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep", document: consentDocument)
    steps += [visualConsentStep]
    
    // ADD CONSENT REVIEW STEP 
    let signature = consentDocument.signatures!.first as! ORKConsentSignature
    
    
    return ORKOrderedTask(identifier: "Consent Task", steps: steps)
    
}