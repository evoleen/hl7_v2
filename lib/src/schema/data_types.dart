const schemaDataTypes = <String, dynamic>{
  "ERL.1": {"dataType": "ST", "longName": "Segment ID"},
  "EI.3": {"dataType": "ST", "longName": "Universal ID"},
  "CQ": {
    "components": [
      {"dataType": "CQ.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CQ.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CX.5": {"dataType": "ID", "longName": "Identifier Type Code"},
  "XON.5": {"dataType": "ID", "longName": "Check Digit Scheme"},
  "CCP.3": {"dataType": "NM", "longName": "Channel Calibration Time Skew"},
  "CF.3": {"dataType": "ID", "longName": "Name of Coding System"},
  "CWE.6": {"dataType": "ID", "longName": "Name of Alternate Coding System"},
  "NA": {
    "components": [
      {"dataType": "NA.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NA.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NA.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NA.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "EI": {
    "components": [
      {"dataType": "EI.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "EI.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "EI.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "EI.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CP.2": {"dataType": "ID", "longName": "Price Type"},
  "AD.5": {"dataType": "ST", "longName": "Zip or Postal Code"},
  "RPT.2": {"dataType": "ID", "longName": "Calendar Alignment"},
  "CSU.3": {"dataType": "ST", "longName": "Unit of Measure Description"},
  "CE.6": {"dataType": "ID", "longName": "Name of Alternate Coding System"},
  "MOP": {
    "components": [
      {"dataType": "MOP.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MOP.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MOP.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "RCD": {
    "components": [
      {"dataType": "RCD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RCD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RCD.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "LA1.8": {"dataType": "IS", "longName": "Floor"},
  "XCN.15": {"dataType": "ID", "longName": "Name Representation Code"},
  "PIP.3": {"dataType": "DT", "longName": "Expiration Date"},
  "XTN.11": {"dataType": "ST", "longName": "Speed Dial Code"},
  "FC": {
    "components": [
      {"dataType": "FC.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "FC.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CNE.9": {"dataType": "ST", "longName": "Original Text"},
  "TQ.1": {"dataType": "CQ", "longName": "Quantity"},
  "CD.2": {"dataType": "WVS", "longName": "Waveform Source"},
  "RFR.2": {"dataType": "IS", "longName": "Administrative Sex"},
  "CD": {
    "components": [
      {"dataType": "CD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CD.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CD.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CD.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CD.6", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "VH.2": {"dataType": "ID", "longName": "End Day Range"},
  "CNN.10": {
    "dataType": "ST",
    "longName": "Assigning Authority  - Universal ID"
  },
  "LA2.1": {"dataType": "IS", "longName": "Point of Care"},
  "XPN.13": {"dataType": "TS", "longName": "Expiration Date"},
  "XTN.1": {"dataType": "ST", "longName": "Telephone Number"},
  "VR": {
    "components": [
      {"dataType": "VR.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "VR.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "LA2.15": {"dataType": "ID", "longName": "Address Type"},
  "PPN.6": {"dataType": "ST", "longName": "Prefix (e.g., DR)"},
  "CX.9": {"dataType": "CWE", "longName": "Assigning Jurisdiction"},
  "AD": {
    "components": [
      {"dataType": "AD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "AD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "AD.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "AD.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "AD.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "AD.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "AD.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "AD.8", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XON.9": {"dataType": "ID", "longName": "Name Representation Code"},
  "XPN.3": {
    "dataType": "ST",
    "longName": "Second and Further Given Names or Initials Thereof"
  },
  "NDL.7": {"dataType": "HD", "longName": "Facility"},
  "CNN.7": {"dataType": "IS", "longName": "Degree (e.g., MD"},
  "NM": {"dataType": "STRING"},
  "MOP.2": {"dataType": "NM", "longName": "Money or Percentage Quantity"},
  "PPN.10": {"dataType": "ID", "longName": "Name Type Code"},
  "XCN.23": {"dataType": "CWE", "longName": "Assigning Agency or Department"},
  "XCN": {
    "components": [
      {"dataType": "XCN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.11", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.12", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.13", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.14", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.15", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.16", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.17", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.18", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.19", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.20", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.21", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.22", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XCN.23", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "IS": {"dataType": "STRING"},
  "QSC.4": {"dataType": "ID", "longName": "Relational Conjunction"},
  "XAD.7": {"dataType": "ID", "longName": "Address Type"},
  "ELD": {
    "components": [
      {"dataType": "ELD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ELD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ELD.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ELD.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "NA.3": {"dataType": "NM", "longName": "Value3"},
  "CNE.5": {"dataType": "ST", "longName": "Alternate Text"},
  "MA.5": {"dataType": "NM", "longName": "Sample 2 From Channel N"},
  "CNN": {
    "components": [
      {"dataType": "CNN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNN.11", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XCN.19": {"dataType": "TS", "longName": "Effective Date"},
  "PTA.1": {"dataType": "IS", "longName": "Policy Type"},
  "LA1.4": {"dataType": "HD", "longName": "Facility"},
  "EIP.2": {"dataType": "EI", "longName": "Filler Assigned Identifier"},
  "OSD.7": {"dataType": "NM", "longName": "Maximum Number of Repeats"},
  "XCN.6": {"dataType": "ST", "longName": "Prefix (e.g., DR)"},
  "ELD.1": {"dataType": "ST", "longName": "Segment ID"},
  "TQ.12": {"dataType": "NM", "longName": "Total Occurrences"},
  "DLD.1": {"dataType": "IS", "longName": "Discharge Location"},
  "NR.1": {"dataType": "NM", "longName": "Low Value"},
  "ICD.3": {"dataType": "TS", "longName": "Date/Time Certification Required"},
  "PL.11": {"dataType": "HD", "longName": "Assigning Authority for Location"},
  "RPT.11": {"dataType": "GTS", "longName": "General Timing Specification"},
  "XCN.7": {"dataType": "IS", "longName": "Degree (e.g., MD)"},
  "ICD.2": {"dataType": "ID", "longName": "Certification Required"},
  "PL.10": {"dataType": "EI", "longName": "Comprehensive Location Identifier"},
  "RPT.10": {"dataType": "IS", "longName": "Event Offset Units"},
  "OSD.6": {"dataType": "ST", "longName": "Sequence Condition Value"},
  "XCN.18": {"dataType": "ID", "longName": "Name Assembly Order"},
  "LA1.5": {"dataType": "IS", "longName": "Location Status"},
  "FN": {
    "components": [
      {"dataType": "FN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "FN.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "FN.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "FN.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "FN.5", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CNE.4": {"dataType": "ST", "longName": "Alternate Identifier"},
  "MA.4": {"dataType": "NM", "longName": "Sample 2 From Channel 1"},
  "NA.2": {"dataType": "NM", "longName": "Value2"},
  "XAD.6": {"dataType": "ID", "longName": "Country"},
  "ED": {
    "components": [
      {"dataType": "ED.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ED.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ED.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ED.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ED.5", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XCN.22": {"dataType": "CWE", "longName": "Assigning Jurisdiction"},
  "PPN.11": {"dataType": "ST", "longName": "Identifier Check Digit"},
  "AD.8": {"dataType": "ST", "longName": "Other Geographic Designation"},
  "NDL.6": {"dataType": "IS", "longName": "Bed"},
  "CNN.6": {"dataType": "ST", "longName": "Prefix (e.g., DR)"},
  "MOP.3": {"dataType": "ID", "longName": "Currency Denomination"},
  "XPN.2": {"dataType": "ST", "longName": "Given Name"},
  "CX.8": {"dataType": "DT", "longName": "Expiration Date"},
  "XON.8": {"dataType": "HD", "longName": "Assigning Facility"},
  "ST": {"dataType": "STRING"},
  "DLT": {
    "components": [
      {"dataType": "DLT.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DLT.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DLT.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DLT.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PPN.7": {"dataType": "IS", "longName": "Degree (e.g., MD)"},
  "MOC.1": {"dataType": "MO", "longName": "Monetary Amount"},
  "PRL.1": {"dataType": "CE", "longName": "Parent Observation Identifier"},
  "XPN.12": {"dataType": "TS", "longName": "Effective Date"},
  "LA2.14": {"dataType": "ID", "longName": "Country"},
  "CNN.11": {
    "dataType": "ID",
    "longName": "Assigning Authority  - Universal ID Type"
  },
  "PT.1": {"dataType": "ID", "longName": "Processing ID"},
  "RFR.3": {"dataType": "NR", "longName": "Age Range"},
  "SPD.4": {"dataType": "DT", "longName": "Date of Certification"},
  "WVI": {
    "components": [
      {"dataType": "WVI.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "WVI.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "VH.3": {"dataType": "TM", "longName": "Start Hour Range"},
  "CE": {
    "components": [
      {"dataType": "CE.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CE.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CE.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CE.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CE.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CE.6", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CNE.8": {"dataType": "ST", "longName": "Alternate Coding System Version ID"},
  "CD.3": {"dataType": "CSU", "longName": "Channel Sensitivity/Units"},
  "TS": {
    "components": [
      {"dataType": "TS.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TS.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "LA1.9": {"dataType": "AD", "longName": "Address"},
  "XCN.14": {"dataType": "HD", "longName": "Assigning Facility"},
  "PIP.2": {"dataType": "CE", "longName": "Privilege Class"},
  "XTN.10": {"dataType": "ST", "longName": "Extension Prefix"},
  "QIP.2": {"dataType": "ST", "longName": "Values"},
  "FC.2": {"dataType": "TS", "longName": "Effective Date"},
  "VR.2": {"dataType": "ST", "longName": "Last Data Code Value"},
  "CSU.2": {"dataType": "ST", "longName": "Unit of Measure Identifier"},
  "SPS.1": {"dataType": "CWE", "longName": "Specimen Source Name or Code"},
  "CCD.2": {"dataType": "TS", "longName": "Date/time"},
  "RPT.3": {"dataType": "NM", "longName": "Phase Range Begin Value"},
  "AD.4": {"dataType": "ST", "longName": "State or Province"},
  "RP.1": {"dataType": "ST", "longName": "Pointer"},
  "CP.3": {"dataType": "NM", "longName": "From Value"},
  "RCD.1": {"dataType": "ST", "longName": "Segment Field Name"},
  "CF.2": {"dataType": "FT", "longName": "Formatted Text"},
  "CWE.7": {"dataType": "ST", "longName": "Coding System Version ID"},
  "TS.1": {"dataType": "DTM", "longName": "Time"},
  "CCP.2": {"dataType": "NM", "longName": "Channel Calibration Baseline"},
  "PL.1": {"dataType": "IS", "longName": "Point of Care"},
  "CP": {
    "components": [
      {"dataType": "CP.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CP.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CP.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CP.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CP.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CP.6", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CX.4": {"dataType": "HD", "longName": "Assigning Authority"},
  "XON.4": {"dataType": "NM", "longName": "Check Digit"},
  "EI.2": {"dataType": "IS", "longName": "Namespace ID"},
  "XTN.7": {"dataType": "NM", "longName": "Local Number"},
  "LA2.7": {"dataType": "IS", "longName": "Building"},
  "TM": {"dataType": "STRING"},
  "LA2.13": {"dataType": "ST", "longName": "Zip or Postal Code"},
  "DLN.1": {"dataType": "ST", "longName": "License Number"},
  "OCD.2": {"dataType": "DT", "longName": "Occurrence Date"},
  "HD.3": {"dataType": "ID", "longName": "Universal ID Type"},
  "MO.2": {"dataType": "ID", "longName": "Denomination"},
  "PL": {
    "components": [
      {"dataType": "PL.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PL.11", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XPN.5": {"dataType": "ST", "longName": "Prefix (e.g., DR)"},
  "EIP": {
    "components": [
      {"dataType": "EIP.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "EIP.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "NDL.1": {"dataType": "CNN", "longName": "Name"},
  "CNN.1": {"dataType": "ST", "longName": "ID Number"},
  "OSP.1": {"dataType": "CNE", "longName": "Occurrence Span Code"},
  "RPT.8": {"dataType": "ID", "longName": "Event"},
  "PPN.16": {"dataType": "ID", "longName": "Name Representation Code"},
  "UVC": {
    "components": [
      {"dataType": "UVC.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "UVC.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "QSC": {
    "components": [
      {"dataType": "QSC.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "QSC.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "QSC.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "QSC.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "AUI": {
    "components": [
      {"dataType": "AUI.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "AUI.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "AUI.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "QSC.2": {"dataType": "ID", "longName": "Relational Operator"},
  "XAD.1": {"dataType": "SAD", "longName": "Street Address"},
  "AUI.2": {"dataType": "DT", "longName": "Date"},
  "WVS.1": {"dataType": "ST", "longName": "Source One Name"},
  "XAD": {
    "components": [
      {"dataType": "XAD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.11", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.12", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.13", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XAD.14", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "DIN.2": {"dataType": "CE", "longName": "Institution Name"},
  "CNE.3": {"dataType": "ID", "longName": "Name of Coding System"},
  "MA.3": {"dataType": "NM", "longName": "Sample 1 From Channel N"},
  "OSP": {
    "components": [
      {"dataType": "OSP.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSP.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSP.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "NUL": {"dataType": "STRING"},
  "TX": {"dataType": "STRING"},
  "LA1.2": {"dataType": "IS", "longName": "Room"},
  "OSD.1": {"dataType": "ID", "longName": "Sequence/Results Flag"},
  "MA": {
    "components": [
      {"dataType": "MA.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MA.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MA.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MA.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MA.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MA.6", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "QIP": {
    "components": [
      {"dataType": "QIP.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "QIP.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "JCC.2": {"dataType": "IS", "longName": "Job Class"},
  "MSG.1": {"dataType": "ID", "longName": "Message Code"},
  "CX.3": {"dataType": "ID", "longName": "Check Digit Scheme"},
  "PL.6": {"dataType": "IS", "longName": "Person Location Type"},
  "XON.3": {"dataType": "NM", "longName": "ID Number"},
  "ED.1": {"dataType": "HD", "longName": "Source Application"},
  "NDL.11": {"dataType": "IS", "longName": "Floor"},
  "CF.5": {"dataType": "FT", "longName": "Alternate Formatted Text"},
  "SPD": {
    "components": [
      {"dataType": "SPD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SPD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SPD.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SPD.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "DDI.2": {"dataType": "MO", "longName": "Monetary Amount"},
  "XPN.9": {"dataType": "CE", "longName": "Name Context"},
  "MOC": {
    "components": [
      {"dataType": "MOC.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MOC.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CP.4": {"dataType": "NM", "longName": "To Value"},
  "AD.3": {"dataType": "ST", "longName": "City"},
  "RPT.4": {"dataType": "NM", "longName": "Phase Range End Value"},
  "NR": {
    "components": [
      {"dataType": "NR.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NR.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "SPS.6": {"dataType": "CWE", "longName": "Collection Method Modifier Code"},
  "FN.1": {"dataType": "ST", "longName": "Surname"},
  "CSU.5": {
    "dataType": "ST",
    "longName": "Alternate Unit of Measure Identifier"
  },
  "VID.2": {"dataType": "CE", "longName": "Internationalization Code"},
  "CX.10": {"dataType": "CWE", "longName": "Assigning Agency or Department"},
  "DR.1": {"dataType": "TS", "longName": "Range Start Date/Time"},
  "XCN.13": {"dataType": "ID", "longName": "Identifier Type Code"},
  "SN.1": {"dataType": "ST", "longName": "Comparator"},
  "PIP.5": {"dataType": "EI", "longName": "Facility"},
  "TQ.7": {"dataType": "ST", "longName": "Condition"},
  "PPN.20": {"dataType": "TS", "longName": "Effective Date"},
  "CD.4": {"dataType": "CCP", "longName": "Channel Calibration Parameters"},
  "RFR.4": {"dataType": "NR", "longName": "Gestational Age Range"},
  "SPD.3": {"dataType": "ID", "longName": "Eligible or Certified"},
  "RI.2": {"dataType": "ST", "longName": "Explicit Time Interval"},
  "XAD.10": {"dataType": "IS", "longName": "Census Tract"},
  "VH.4": {"dataType": "TM", "longName": "End Hour Range"},
  "SAD.1": {"dataType": "ST", "longName": "Street or Mailing Address"},
  "RFR.5": {"dataType": "ST", "longName": "Species"},
  "SPD.2": {"dataType": "ST", "longName": "Governing Board"},
  "XAD.11": {"dataType": "ID", "longName": "Address Representation Code"},
  "TQ.6": {"dataType": "ST", "longName": "Priority"},
  "SRT.2": {"dataType": "ID", "longName": "Sequencing"},
  "PPN.21": {"dataType": "TS", "longName": "Expiration Date"},
  "PTA": {
    "components": [
      {"dataType": "PTA.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PTA.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PTA.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PTA.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CD.5": {"dataType": "NM", "longName": "Channel Sampling Frequency"},
  "CNE": {
    "components": [
      {"dataType": "CNE.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNE.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNE.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNE.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNE.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNE.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNE.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNE.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CNE.9", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XCN.12": {"dataType": "ID", "longName": "Check Digit Scheme"},
  "PIP.4": {"dataType": "DT", "longName": "Activation Date"},
  "RPT": {
    "components": [
      {"dataType": "RPT.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RPT.11", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "VID.3": {"dataType": "CE", "longName": "International Version ID"},
  "CE.1": {"dataType": "ST", "longName": "Identifier"},
  "CSU.4": {"dataType": "ID", "longName": "Unit of Measure Coding System"},
  "PT": {
    "components": [
      {"dataType": "PT.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PT.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "SPS.7": {"dataType": "CWE", "longName": "Specimen Role"},
  "RPT.5": {"dataType": "NM", "longName": "Period Quantity"},
  "AD.2": {"dataType": "ST", "longName": "Other Designation"},
  "DDI": {
    "components": [
      {"dataType": "DDI.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DDI.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DDI.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "DTN.2": {"dataType": "NM", "longName": "Number of Days"},
  "JCC": {
    "components": [
      {"dataType": "JCC.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "JCC.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "JCC.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CP.5": {"dataType": "CE", "longName": "Range Units"},
  "XPN.8": {"dataType": "ID", "longName": "Name Representation Code"},
  "PRL": {
    "components": [
      {"dataType": "PRL.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PRL.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PRL.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "SCV.1": {"dataType": "CWE", "longName": "Parameter Class"},
  "CWE.1": {"dataType": "ST", "longName": "Identifier"},
  "CF.4": {"dataType": "ST", "longName": "Alternate Identifier"},
  "DDI.3": {"dataType": "NM", "longName": "Number of Days"},
  "PLN.1": {"dataType": "ST", "longName": "ID Number"},
  "NDL.10": {"dataType": "IS", "longName": "Building"},
  "CX.2": {"dataType": "ST", "longName": "Check Digit"},
  "PL.7": {"dataType": "IS", "longName": "Building"},
  "CQ.1": {"dataType": "NM", "longName": "Quantity"},
  "XON.2": {"dataType": "IS", "longName": "Organization Name Type Code"},
  "UVC.2": {"dataType": "MO", "longName": "Value Amount"},
  "EI.4": {"dataType": "ID", "longName": "Universal ID Type"},
  "JCC.3": {"dataType": "TX", "longName": "Job Description Text"},
  "ERL.6": {"dataType": "NM", "longName": "Sub-Component Number"},
  "LA2": {
    "components": [
      {"dataType": "LA2.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.11", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.12", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.13", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.14", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.15", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA2.16", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XCN.1": {"dataType": "ST", "longName": "ID Number"},
  "WVI.1": {"dataType": "NM", "longName": "Channel Number"},
  "RMC.1": {"dataType": "IS", "longName": "Room Type"},
  "LA1.3": {"dataType": "IS", "longName": "Bed"},
  "CNE.2": {"dataType": "ST", "longName": "Text"},
  "MA.2": {"dataType": "NM", "longName": "Sample 1 From Channel 2"},
  "NA.4": {"dataType": "NM", "longName": "Value4"},
  "AUI.3": {"dataType": "ST", "longName": "Source"},
  "QSC.3": {"dataType": "ST", "longName": "Value"},
  "DTM": {"dataType": "STRING"},
  "DLT.1": {"dataType": "NR", "longName": "Normal Range"},
  "RPT.9": {"dataType": "NM", "longName": "Event Offset Quantity"},
  "PPN.17": {"dataType": "CE", "longName": "Name Context"},
  "XPN.4": {"dataType": "ST", "longName": "Suffix (e.g., JR or III)"},
  "HD.2": {"dataType": "ST", "longName": "Universal ID"},
  "CWE": {
    "components": [
      {"dataType": "CWE.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CWE.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CWE.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CWE.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CWE.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CWE.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CWE.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CWE.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CWE.9", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PPN.1": {"dataType": "ST", "longName": "ID Number"},
  "XTN.6": {"dataType": "NM", "longName": "Area/City Code"},
  "LA2.6": {"dataType": "IS", "longName": "Patient Location Type"},
  "XPN.14": {"dataType": "ST", "longName": "Professional Suffix"},
  "LA2.12": {"dataType": "ST", "longName": "State or Province"},
  "OSD": {
    "components": [
      {"dataType": "OSD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OSD.11", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XCN.2": {"dataType": "FN", "longName": "Family Name"},
  "OSD.3": {"dataType": "IS", "longName": "Placer Order Number: Namespace ID"},
  "DLD": {
    "components": [
      {"dataType": "DLD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DLD.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "WVI.2": {"dataType": "ST", "longName": "Channel Name"},
  "DR": {
    "components": [
      {"dataType": "DR.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DR.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "HD": {
    "components": [
      {"dataType": "HD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "HD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "HD.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "RMC.2": {"dataType": "IS", "longName": "Amount Type"},
  "TQ.9": {"dataType": "ID", "longName": "Conjunction"},
  "CNE.1": {"dataType": "ST", "longName": "Identifier"},
  "MA.1": {"dataType": "NM", "longName": "Sample 1 From Channel 1"},
  "RMC": {
    "components": [
      {"dataType": "RMC.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RMC.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RMC.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RMC.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XAD.3": {"dataType": "ST", "longName": "City"},
  "DTN": {
    "components": [
      {"dataType": "DTN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DTN.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PPN.14": {"dataType": "HD", "longName": "Assigning Facility"},
  "DLT.2": {"dataType": "NM", "longName": "Numeric Threshold"},
  "CNN.3": {"dataType": "ST", "longName": "Given Name"},
  "OSP.3": {"dataType": "DT", "longName": "Occurrence Span Stop Date"},
  "NDL.3": {"dataType": "TS", "longName": "End Date/time"},
  "XPN.7": {"dataType": "ID", "longName": "Name Type Code"},
  "HD.1": {"dataType": "IS", "longName": "Namespace ID"},
  "PL.8": {"dataType": "IS", "longName": "Floor"},
  "SAD": {
    "components": [
      {"dataType": "SAD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SAD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SAD.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PPN.2": {"dataType": "FN", "longName": "Family Name"},
  "DLN.3": {"dataType": "DT", "longName": "Expiration Date"},
  "LA2.11": {"dataType": "ST", "longName": "City"},
  "LA2.5": {"dataType": "IS", "longName": "Location Status"},
  "XTN.5": {"dataType": "NM", "longName": "Country Code"},
  "SAD.3": {"dataType": "ST", "longName": "Dwelling Number"},
  "XAD.12": {"dataType": "DR", "longName": "Address Validity Range"},
  "OSD.10": {"dataType": "ST", "longName": "Filler Order Number: Universal ID"},
  "RFR.6": {"dataType": "ST", "longName": "Race/subspecies"},
  "MO": {
    "components": [
      {"dataType": "MO.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MO.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "SPD.1": {"dataType": "ST", "longName": "Specialty Name"},
  "CD.6": {"dataType": "NR", "longName": "Minimum/Maximum Data Values"},
  "PPN.22": {"dataType": "ST", "longName": "Professional Suffix"},
  "SRT.1": {"dataType": "ST", "longName": "Sort-by Field"},
  "TQ.5": {"dataType": "TS", "longName": "End Date/Time"},
  "SN.3": {"dataType": "ST", "longName": "Separator/Suffix"},
  "XCN.11": {"dataType": "ST", "longName": "Identifier Check Digit"},
  "NDL": {
    "components": [
      {"dataType": "NDL.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "NDL.11", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CSU.7": {
    "dataType": "ID",
    "longName": "Alternate Unit of Measure Coding System"
  },
  "FN.3": {"dataType": "ST", "longName": "Own Surname"},
  "CE.2": {"dataType": "ST", "longName": "Text"},
  "SPS": {
    "components": [
      {"dataType": "SPS.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SPS.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SPS.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SPS.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SPS.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SPS.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SPS.7", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "SPS.4": {"dataType": "CWE", "longName": "Body Site"},
  "DTN.1": {"dataType": "IS", "longName": "Day Type"},
  "RPT.6": {"dataType": "IS", "longName": "Period Units"},
  "AD.1": {"dataType": "ST", "longName": "Street Address"},
  "RP.4": {"dataType": "ID", "longName": "Subtype"},
  "PPN.18": {"dataType": "DR", "longName": "Name Validity Range"},
  "CP.6": {"dataType": "ID", "longName": "Range Type"},
  "SCV.2": {"dataType": "ST", "longName": "Parameter Value"},
  "RFR": {
    "components": [
      {"dataType": "RFR.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RFR.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RFR.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RFR.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RFR.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RFR.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RFR.7", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CWE.2": {"dataType": "ST", "longName": "Text"},
  "PLN.2": {"dataType": "IS", "longName": "Type of ID Number"},
  "ED.3": {"dataType": "ID", "longName": "Data Subtype"},
  "UVC.1": {"dataType": "CNE", "longName": "Value Code"},
  "XON.1": {"dataType": "ST", "longName": "Organization Name"},
  "PL.4": {"dataType": "HD", "longName": "Facility"},
  "CQ.2": {"dataType": "CE", "longName": "Units"},
  "MSG.3": {"dataType": "ID", "longName": "Message Structure"},
  "CX.1": {"dataType": "ST", "longName": "ID Number"},
  "XTN.9": {"dataType": "ST", "longName": "Any Text"},
  "LA2.9": {"dataType": "ST", "longName": "Street Address"},
  "ERL.5": {"dataType": "NM", "longName": "Component Number"},
  "LA1": {
    "components": [
      {"dataType": "LA1.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA1.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA1.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA1.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA1.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA1.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA1.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA1.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "LA1.9", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "ERL.4": {"dataType": "NM", "longName": "Field Repetition"},
  "JCC.1": {"dataType": "IS", "longName": "Job Code"},
  "XTN.8": {"dataType": "NM", "longName": "Extension"},
  "LA2.8": {"dataType": "IS", "longName": "Floor"},
  "PL.5": {"dataType": "IS", "longName": "Location Status"},
  "MSG.2": {"dataType": "ID", "longName": "Trigger Event"},
  "PLN.3": {"dataType": "ST", "longName": "State/other Qualifying Information"},
  "ED.2": {"dataType": "ID", "longName": "Type of Data"},
  "DDI.1": {"dataType": "NM", "longName": "Delay Days"},
  "CF.6": {"dataType": "ID", "longName": "Name of Alternate Coding System"},
  "CWE.3": {"dataType": "ID", "longName": "Name of Coding System"},
  "GTS": {"dataType": "STRING"},
  "RPT.7": {"dataType": "ID", "longName": "Institution Specified Time"},
  "PPN.19": {"dataType": "ID", "longName": "Name Assembly Order"},
  "SPS.5": {"dataType": "CWE", "longName": "Site Modifier"},
  "CSU.6": {
    "dataType": "ST",
    "longName": "Alternate Unit of Measure Description"
  },
  "FN.2": {"dataType": "ST", "longName": "Own Surname Prefix"},
  "CE.3": {"dataType": "ID", "longName": "Name of Coding System"},
  "VID.1": {"dataType": "ID", "longName": "Version ID"},
  "ICD": {
    "components": [
      {"dataType": "ICD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ICD.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ICD.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "SN.2": {"dataType": "NM", "longName": "Num1"},
  "DR.2": {"dataType": "TS", "longName": "Range End Date/Time"},
  "XCN.10": {"dataType": "ID", "longName": "Name Type Code"},
  "DIN": {
    "components": [
      {"dataType": "DIN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DIN.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PPN.23": {"dataType": "CWE", "longName": "Assigning Jurisdiction"},
  "TQ.4": {"dataType": "TS", "longName": "Start Date/Time"},
  "XAD.13": {"dataType": "TS", "longName": "Effective Date"},
  "OSD.11": {
    "dataType": "ID",
    "longName": "Filler Order Number: Universal ID Type"
  },
  "RI.1": {"dataType": "IS", "longName": "Repeat Pattern"},
  "RFR.7": {"dataType": "TX", "longName": "Conditions"},
  "SAD.2": {"dataType": "ST", "longName": "Street Name"},
  "SI": {"dataType": "STRING"},
  "LA2.10": {"dataType": "ST", "longName": "Other Designation"},
  "LA2.4": {"dataType": "HD", "longName": "Facility"},
  "XTN.4": {"dataType": "ST", "longName": "Email Address"},
  "OCD.1": {"dataType": "CNE", "longName": "Occurrence Code"},
  "PPN.3": {"dataType": "ST", "longName": "Given Name"},
  "DLN.2": {"dataType": "IS", "longName": "Issuing State, Province, Country"},
  "MO.1": {"dataType": "NM", "longName": "Quantity"},
  "CX": {
    "components": [
      {"dataType": "CX.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CX.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CX.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CX.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CX.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CX.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CX.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CX.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CX.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CX.10", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PL.9": {"dataType": "ST", "longName": "Location Description"},
  "XPN.6": {"dataType": "IS", "longName": "Degree (e.g., MD)"},
  "CNN.2": {"dataType": "ST", "longName": "Family Name"},
  "OSP.2": {"dataType": "DT", "longName": "Occurrence Span Start Date"},
  "NDL.2": {"dataType": "TS", "longName": "Start Date/time"},
  "PPN.15": {"dataType": "TS", "longName": "Date/Time Action Performed"},
  "DLT.3": {"dataType": "ID", "longName": "Change Computation"},
  "QSC.1": {"dataType": "ST", "longName": "Segment Field Name"},
  "XAD.2": {"dataType": "ST", "longName": "Other Designation"},
  "PPN": {
    "components": [
      {"dataType": "PPN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.11", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.12", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.13", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.14", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.15", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.16", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.17", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.18", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.19", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.20", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.21", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.22", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.23", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PPN.24", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "AUI.1": {"dataType": "ST", "longName": "Authorization Number"},
  "MSG": {
    "components": [
      {"dataType": "MSG.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MSG.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "MSG.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "WVS.2": {"dataType": "ST", "longName": "Source Two Name"},
  "DIN.1": {"dataType": "TS", "longName": "Date"},
  "TQ.8": {"dataType": "TX", "longName": "Text"},
  "VID": {
    "components": [
      {"dataType": "VID.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "VID.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "VID.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PTA.4": {"dataType": "MOP", "longName": "Money or Percentage"},
  "LA1.1": {"dataType": "IS", "longName": "Point of Care"},
  "RMC.3": {"dataType": "NM", "longName": "Coverage Amount"},
  "OSD.2": {
    "dataType": "ST",
    "longName": "Placer Order Number: Entity Identifier"
  },
  "XCN.3": {"dataType": "ST", "longName": "Given Name"},
  "ELD.4": {"dataType": "CE", "longName": "Code Identifying Error"},
  "SN": {
    "components": [
      {"dataType": "SN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SN.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SN.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SN.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "OSD.9": {
    "dataType": "ID",
    "longName": "Placer Order Number: Universal ID Type"
  },
  "DLN": {
    "components": [
      {"dataType": "DLN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DLN.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "DLN.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PT.2": {"dataType": "ID", "longName": "Processing Mode"},
  "XAD.14": {"dataType": "TS", "longName": "Expiration Date"},
  "CF": {
    "components": [
      {"dataType": "CF.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CF.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CF.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CF.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CF.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CF.6", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XCN.8": {"dataType": "IS", "longName": "Source Table"},
  "PPN.24": {"dataType": "CWE", "longName": "Assigning Agency or Department"},
  "TQ.3": {"dataType": "ST", "longName": "Duration"},
  "QIP.1": {"dataType": "ST", "longName": "Segment Field Name"},
  "PIP.1": {"dataType": "CE", "longName": "Privilege"},
  "XCN.17": {"dataType": "DR", "longName": "Name Validity Range"},
  "FC.1": {"dataType": "IS", "longName": "Financial Class Code"},
  "CCP": {
    "components": [
      {"dataType": "CCP.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CCP.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CCP.3", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "VR.1": {"dataType": "ST", "longName": "First Data Code Value"},
  "XAD.9": {"dataType": "IS", "longName": "County/Parish Code"},
  "CE.4": {"dataType": "ST", "longName": "Alternate Identifier"},
  "CSU.1": {"dataType": "NM", "longName": "Channel Sensitivity"},
  "FN.5": {"dataType": "ST", "longName": "Surname From Partner/Spouse"},
  "CCD.1": {"dataType": "ID", "longName": "Invocation Event"},
  "SPS.2": {"dataType": "CWE", "longName": "Additives"},
  "RP.2": {"dataType": "HD", "longName": "Application ID"},
  "AD.7": {"dataType": "ID", "longName": "Address Type"},
  "escapeType": {"dataType": "xsd:string"},
  "RCD.2": {"dataType": "ID", "longName": "HL7 Data Type"},
  "PLN": {
    "components": [
      {"dataType": "PLN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PLN.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PLN.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PLN.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "TS.2": {"dataType": "ID", "longName": "Degree of Precision"},
  "CNN.9": {
    "dataType": "IS",
    "longName": "Assigning Authority   - Namespace ID"
  },
  "CWE.4": {"dataType": "ST", "longName": "Alternate Identifier"},
  "NDL.9": {"dataType": "IS", "longName": "Patient Location Type"},
  "CF.1": {"dataType": "ST", "longName": "Identifier"},
  "CCP.1": {
    "dataType": "NM",
    "longName": "Channel Calibration Sensitivity Correction Factor"
  },
  "PPN.8": {"dataType": "IS", "longName": "Source Table"},
  "ED.5": {"dataType": "TX", "longName": "Data"},
  "PLN.4": {"dataType": "DT", "longName": "Expiration Date"},
  "XON.7": {"dataType": "ID", "longName": "Identifier Type Code"},
  "CX.7": {"dataType": "DT", "longName": "Effective Date"},
  "PL.2": {"dataType": "IS", "longName": "Room"},
  "EI.1": {"dataType": "ST", "longName": "Entity Identifier"},
  "ERL.3": {"dataType": "NM", "longName": "Field Position"},
  "FT": {"dataType": "STRING"},
  "ICD.1": {"dataType": "IS", "longName": "Certification Patient Type"},
  "TQ.10": {"dataType": "OSD", "longName": "Order Sequencing"},
  "ELD.3": {"dataType": "NM", "longName": "Field Position"},
  "XCN.4": {
    "dataType": "ST",
    "longName": "Second and Further Given Names or Initials Thereof"
  },
  "OSD.5": {"dataType": "IS", "longName": "Filler Order Number: Namespace ID"},
  "DT": {"dataType": "STRING"},
  "LA1.6": {"dataType": "IS", "longName": "Patient Location Type"},
  "RMC.4": {"dataType": "MOP", "longName": "Money or Percentage"},
  "PTA.3": {"dataType": "NM", "longName": "Money or Percentage Quantity"},
  "CNE.7": {"dataType": "ST", "longName": "Coding System Version ID"},
  "XPN": {
    "components": [
      {"dataType": "XPN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.11", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.12", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.13", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XPN.14", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PIP": {
    "components": [
      {"dataType": "PIP.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PIP.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PIP.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PIP.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "PIP.5", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "NA.1": {"dataType": "NM", "longName": "Value1"},
  "ID": {"dataType": "STRING"},
  "XAD.5": {"dataType": "ST", "longName": "Zip or Postal Code"},
  "XCN.21": {"dataType": "ST", "longName": "Professional Suffix"},
  "DLT.4": {"dataType": "NM", "longName": "Days Retained"},
  "XON.10": {"dataType": "ST", "longName": "Organization Identifier"},
  "PPN.12": {"dataType": "ID", "longName": "Check Digit Scheme"},
  "CNN.5": {"dataType": "ST", "longName": "Suffix (e.g., JR or III)"},
  "NDL.5": {"dataType": "IS", "longName": "Room"},
  "CWE.8": {"dataType": "ST", "longName": "Alternate Coding System Version ID"},
  "XPN.1": {"dataType": "FN", "longName": "Family Name"},
  "WVS": {
    "components": [
      {"dataType": "WVS.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "WVS.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PPN.4": {
    "dataType": "ST",
    "longName": "Second and Further Given Names or Initials Thereof"
  },
  "PRL.2": {"dataType": "ST", "longName": "Parent Observation Sub-identifier"},
  "MOC.2": {"dataType": "CE", "longName": "Charge Code"},
  "XTN.3": {"dataType": "ID", "longName": "Telecommunication Equipment Type"},
  "LA2.3": {"dataType": "IS", "longName": "Bed"},
  "XPN.11": {"dataType": "ID", "longName": "Name Assembly Order"},
  "LA2.16": {"dataType": "ST", "longName": "Other Geographic Designation"},
  "XTN.2": {"dataType": "ID", "longName": "Telecommunication Use Code"},
  "LA2.2": {"dataType": "IS", "longName": "Room"},
  "XPN.10": {"dataType": "DR", "longName": "Name Validity Range"},
  "PRL.3": {
    "dataType": "TX",
    "longName": "Parent Observation Value Descriptor"
  },
  "PPN.5": {"dataType": "ST", "longName": "Suffix (e.g., JR or III)"},
  "RP": {
    "components": [
      {"dataType": "RP.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RP.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RP.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RP.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "MOP.1": {"dataType": "ID", "longName": "Money or Percentage Indicator"},
  "SRT": {
    "components": [
      {"dataType": "SRT.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SRT.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CNN.4": {
    "dataType": "ST",
    "longName": "Second and Further Given Names or Initials Thereof"
  },
  "NDL.4": {"dataType": "IS", "longName": "Point of Care"},
  "CWE.9": {"dataType": "ST", "longName": "Original Text"},
  "PPN.13": {"dataType": "ID", "longName": "Identifier Type Code"},
  "XCN.20": {"dataType": "TS", "longName": "Expiration Date"},
  "XAD.4": {"dataType": "ST", "longName": "State or Province"},
  "XTN": {
    "components": [
      {"dataType": "XTN.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.11", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XTN.12", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CSU": {
    "components": [
      {"dataType": "CSU.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CSU.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CSU.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CSU.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CSU.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CSU.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CSU.7", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XON": {
    "components": [
      {"dataType": "XON.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XON.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XON.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XON.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XON.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XON.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XON.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XON.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XON.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "XON.10", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CNE.6": {"dataType": "ID", "longName": "Name of Alternate Coding System"},
  "MA.6": {"dataType": "NM", "longName": "Sample N From Channel N"},
  "EIP.1": {"dataType": "EI", "longName": "Placer Assigned Identifier"},
  "LA1.7": {"dataType": "IS", "longName": "Building"},
  "PTA.2": {"dataType": "IS", "longName": "Amount Class"},
  "OSD.4": {
    "dataType": "ST",
    "longName": "Filler Order Number: Entity Identifier"
  },
  "TQ.11": {"dataType": "CE", "longName": "Occurrence Duration"},
  "NR.2": {"dataType": "NM", "longName": "High Value"},
  "DLD.2": {"dataType": "TS", "longName": "Effective Date"},
  "XCN.5": {"dataType": "ST", "longName": "Suffix (e.g., JR or III)"},
  "ELD.2": {"dataType": "NM", "longName": "Segment Sequence"},
  "OCD": {
    "components": [
      {"dataType": "OCD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "OCD.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "ERL.2": {"dataType": "NM", "longName": "Segment Sequence"},
  "XON.6": {"dataType": "HD", "longName": "Assigning Authority"},
  "varies": {"dataType": "VARIES"},
  "CX.6": {"dataType": "HD", "longName": "Assigning Facility"},
  "PL.3": {"dataType": "IS", "longName": "Bed"},
  "SCV": {
    "components": [
      {"dataType": "SCV.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "SCV.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "PPN.9": {"dataType": "HD", "longName": "Assigning Authority"},
  "ED.4": {"dataType": "ID", "longName": "Encoding"},
  "CNN.8": {"dataType": "IS", "longName": "Source Table"},
  "CWE.5": {"dataType": "ST", "longName": "Alternate Text"},
  "NDL.8": {"dataType": "IS", "longName": "Location Status"},
  "RCD.3": {"dataType": "NM", "longName": "Maximum Column Width"},
  "CP.1": {"dataType": "MO", "longName": "Price"},
  "CCD": {
    "components": [
      {"dataType": "CCD.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "CCD.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "RP.3": {"dataType": "ID", "longName": "Type of Data"},
  "AD.6": {"dataType": "ID", "longName": "Country"},
  "RPT.1": {"dataType": "CWE", "longName": "Repeat Pattern Code"},
  "SPS.3": {"dataType": "TX", "longName": "Specimen Collection Method"},
  "XAD.8": {"dataType": "ST", "longName": "Other Geographic Designation"},
  "RI": {
    "components": [
      {"dataType": "RI.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "RI.2", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CE.5": {"dataType": "ST", "longName": "Alternate Text"},
  "FN.4": {"dataType": "ST", "longName": "Surname Prefix From Partner/Spouse"},
  "ERL": {
    "components": [
      {"dataType": "ERL.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ERL.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ERL.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ERL.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ERL.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "ERL.6", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "XTN.12": {"dataType": "ST", "longName": "Unformatted Telephone number"},
  "SN.4": {"dataType": "NM", "longName": "Num2"},
  "XCN.16": {"dataType": "CE", "longName": "Name Context"},
  "TQ": {
    "components": [
      {"dataType": "TQ.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.4", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.5", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.6", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.7", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.8", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.9", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.10", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.11", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "TQ.12", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "VH": {
    "components": [
      {"dataType": "VH.1", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "VH.2", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "VH.3", "minOccurs": "0", "maxOccurs": "1"},
      {"dataType": "VH.4", "minOccurs": "0", "maxOccurs": "1"}
    ]
  },
  "CD.1": {"dataType": "WVI", "longName": "Channel Identifier"},
  "TQ.2": {"dataType": "RI", "longName": "Interval"},
  "VH.1": {"dataType": "ID", "longName": "Start Day Range"},
  "RFR.1": {"dataType": "NR", "longName": "Numeric Range"},
  "XCN.9": {"dataType": "HD", "longName": "Assigning Authority"},
  "OSD.8": {"dataType": "ST", "longName": "Placer Order Number: Universal ID"}
};
