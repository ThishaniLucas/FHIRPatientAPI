// // Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.

// This software is the property of WSO2 LLC. and its suppliers, if any.
// Dissemination of any information or reproduction of any material contained
// herein is strictly forbidden, unless permitted by WSO2 in accordance with
// the WSO2 Software License available at: https://wso2.com/licenses/eula/3.2
// For specific language governing the permissions and limitations under
// this license, please see the license as well as any agreement you’ve
// entered into with WSO2 governing the purchase of this software and any
// associated services.
//
//
// AUTO-GENERATED FILE.
//
// This file is auto-generated by WSO2 Healthcare Team for implementing resource functions.
// Developers are allowed modify this file as per the requirement.

import wso2healthcare/healthcare.fhir.r4;
import wso2healthcare/fhir;

# Generic type to wrap all implemented profiles. 
# Add required profile types here.
# public type Patient r4:Patient|r4:USCorePatient;
public type Patient r4:Patient;

//add implemented profiles to this map. profileURL:implementation
isolated final map<PatientSourceConnect> profileImpl = {
    "http://hl7.org/fhir/StructureDefinition/Patient": new InternationalPatientSourceConnect()
};
service / on new fhir:Listener(9090, apiConfig) {

    // Search the resource type based on some filter criteria
    isolated resource function get fhir/r4/Patient(r4:FHIRContext fhirContext) returns r4:Patient[]|r4:FHIRError|error {

        r4:Patient[] patients = [];

        //Implement source system connection here and retreive data.
        //Create FHIR resource from retreived data.
        r4:Patient example = {
            id: "12d39",
            meta: {
                versionId: "abc12s3",
                profile: ["http://hl7.org/fhir/StructureDefinition/Patient"]
            },
            identifier: [
            ],
            implicitRules: "https://www.hl7.org/fhir",
            language: "en-US"
        };
        r4:Patient example1 = {
            id: "12c39",
            meta: {
                versionId: "abc12s3",
                profile: ["http://hl7.org/fhir/StructureDefinition/Patient"]
            },
            identifier: [
            ],
            implicitRules: "https://www.hl7.org/fhir",
            language: "en-US"
        };
        patients.push(example);
        patients.push(example1);
        return patients;
    }
    // Read the current state of the resource
    resource function get fhir/r4/Patient/[string id](r4:FHIRContext fhirContext) returns r4:Patient|r4:FHIRError {

        return {
            id: "12d39",
            meta: {
                versionId: "abc12s3",
                profile: ["http://hl7.org/fhir/StructureDefinition/Patient"]
            },
            identifier: [
            ],
            implicitRules: "https://www.hl7.org/fhir",
            language: "en-US"
        };

    }
}
