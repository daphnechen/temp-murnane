//
//  ConsentDocument.swift
//  temp-murnane
//
//  Created by Daphne Chen on 1/23/16.
//  Copyright (c) 2016 BME. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument: ORKConsentDocument {
    
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "Consent Form"
    
    // INSERT CONSENT SECTIONS HERE 
    let consentSectionTypes: [ORKConsentSectionType] = [
        .Overview,
        .DataGathering,
        .Privacy,
        .DataUse,
        .TimeCommitment,
        .StudySurvey,
        .StudyTasks,
        .Withdrawing
    ]
    
    varConsentSections; [ORKConsentSection] = consentSectionTypes.map { contentSectionType in
        letConsentSection = ORKConsentSection(type: consentSectionType)
        consentSection.summary = "temp" // INSERT FORM TEXT DESCRIPTION/SUMMARY HERE 
        consentSection.content = "You will be asked a series of ten questions about your health" // 
        return consentSection
    }
    
    consentDocument.sections = consentSections 
    
    // INSERT SIGNATURE / TYPED NAME / APPROVAL HERE 
    
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentDocumentParticipantSignature"))
    
    return consentDocument
    
}