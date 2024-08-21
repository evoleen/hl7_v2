const schemaFields = <String, dynamic>{
  "PKG.1": {"dataType": "SI", "longName": "Set Id", "hl7Table": ""},
  "UB1.8": {
    "dataType": "NM",
    "longName": "Covered Days - (23)",
    "hl7Table": ""
  },
  "PCR.20": {
    "dataType": "ID",
    "longName": "Relatedness Assessment",
    "hl7Table": "HL70250"
  },
  "IN2.38": {
    "dataType": "IS",
    "longName": "Student Indicator",
    "hl7Table": "HL70231"
  },
  "SAC.5": {
    "dataType": "EI",
    "longName": "Equipment Container Identifier",
    "hl7Table": ""
  },
  "GT1.44": {
    "dataType": "CE",
    "longName": "Ethnic Group",
    "hl7Table": "HL70189"
  },
  "AIG.13": {
    "dataType": "IS",
    "longName": "Allow Substitution Code",
    "hl7Table": "HL70279"
  },
  "NSC.9": {"dataType": "HD", "longName": "New Facility", "hl7Table": ""},
  "FAC.8": {
    "dataType": "XTN",
    "longName": "Contact Telecommunication",
    "hl7Table": ""
  },
  "OM7.13": {
    "dataType": "TS",
    "longName": "Consent Effective Start Date/Time",
    "hl7Table": ""
  },
  "IN3.15": {
    "dataType": "ST",
    "longName": "Certification Contact",
    "hl7Table": ""
  },
  "IN1.28": {
    "dataType": "ST",
    "longName": "Pre-Admit Cert (PAC)",
    "hl7Table": ""
  },
  "TQ1.10": {"dataType": "TX", "longName": "Condition text", "hl7Table": ""},
  "PR1.5": {
    "dataType": "TS",
    "longName": "Procedure Date/Time",
    "hl7Table": ""
  },
  "BTS.1": {
    "dataType": "ST",
    "longName": "Batch Message Count",
    "hl7Table": ""
  },
  "OBR.11": {
    "dataType": "ID",
    "longName": "Specimen Action Code",
    "hl7Table": "HL70065"
  },
  "PRB.20": {
    "dataType": "NM",
    "longName": "Probability of Problem (0-1)",
    "hl7Table": ""
  },
  "IVT.8": {"dataType": "CWE", "longName": "Order Packaging", "hl7Table": ""},
  "PD1.18": {
    "dataType": "DT",
    "longName": "Publicity Code Effective Date",
    "hl7Table": ""
  },
  "SPM.18": {
    "dataType": "TS",
    "longName": "Specimen Received Date/Time",
    "hl7Table": ""
  },
  "ITM.12": {
    "dataType": "CWE",
    "longName": "Transaction Code",
    "hl7Table": "HL70132"
  },
  "PRA.8": {
    "dataType": "DT",
    "longName": "Date Entered Practice",
    "hl7Table": ""
  },
  "GT1.13": {
    "dataType": "DT",
    "longName": "Guarantor Date - Begin",
    "hl7Table": ""
  },
  "PD1.3": {
    "dataType": "XON",
    "longName": "Patient Primary Facility",
    "hl7Table": ""
  },
  "ARQ.20": {
    "dataType": "XTN",
    "longName": "Entered By Phone Number",
    "hl7Table": ""
  },
  "SAC.29": {"dataType": "SN", "longName": "Dilution Factor", "hl7Table": ""},
  "RXE.20": {
    "dataType": "ID",
    "longName": "Needs Human Review",
    "hl7Table": "HL70136"
  },
  "STF.6": {"dataType": "TS", "longName": "Date/Time of Birth", "hl7Table": ""},
  "OBR.46": {
    "dataType": "CE",
    "longName": "Placer Supplemental Service Information",
    "hl7Table": "HL70411"
  },
  "RQD.4": {"dataType": "CE", "longName": "Hospital Item Code", "hl7Table": ""},
  "BTX.13": {
    "dataType": "TS",
    "longName": "BP Date/Time of Status",
    "hl7Table": ""
  },
  "DG1.8": {
    "dataType": "CE",
    "longName": "Diagnostic Related Group",
    "hl7Table": "HL70055"
  },
  "CER.7": {
    "dataType": "ID",
    "longName": "Granting Country",
    "hl7Table": "HL70399"
  },
  "PV2.38": {
    "dataType": "CE",
    "longName": "Mode of Arrival Code",
    "hl7Table": "HL70430"
  },
  "RXE.36": {
    "dataType": "ID",
    "longName": "Formulary Status",
    "hl7Table": "HL70478"
  },
  "MSH.13": {"dataType": "NM", "longName": "Sequence Number", "hl7Table": ""},
  "ECD.4": {
    "dataType": "TQ",
    "longName": "Requested Completion Time",
    "hl7Table": ""
  },
  "PV1.28": {
    "dataType": "IS",
    "longName": "Interest Code",
    "hl7Table": "HL70073"
  },
  "OBR.50": {
    "dataType": "CWE",
    "longName": "Parent Universal Service Identifier",
    "hl7Table": ""
  },
  "LCH.1": {
    "dataType": "PL",
    "longName": "Primary Key Value - LCH",
    "hl7Table": ""
  },
  "SFT.4": {"dataType": "ST", "longName": "Software Binary ID", "hl7Table": ""},
  "PV1.7": {
    "dataType": "XCN",
    "longName": "Attending Doctor",
    "hl7Table": "HL70010"
  },
  "TQ2.8": {
    "dataType": "CQ",
    "longName": "Sequence Condition Time Interval",
    "hl7Table": ""
  },
  "CSR.1": {"dataType": "EI", "longName": "Sponsor Study ID", "hl7Table": ""},
  "LRL.4": {
    "dataType": "CE",
    "longName": "Location Relationship ID",
    "hl7Table": "HL70325"
  },
  "GT1.52": {"dataType": "IS", "longName": "Handicap", "hl7Table": "HL70295"},
  "GOL.12": {
    "dataType": "TS",
    "longName": "Current Goal Review Date/Time",
    "hl7Table": ""
  },
  "ERR.7": {
    "dataType": "TX",
    "longName": "Diagnostic Information",
    "hl7Table": ""
  },
  "SCH.11": {
    "dataType": "TQ",
    "longName": "Appointment Timing Quantity",
    "hl7Table": ""
  },
  "RXD.8": {
    "dataType": "NM",
    "longName": "Number of Refills Remaining",
    "hl7Table": ""
  },
  "GP2.3": {"dataType": "CP", "longName": "Charge", "hl7Table": ""},
  "FT1.19": {
    "dataType": "CE",
    "longName": "Diagnosis Code - FT1",
    "hl7Table": "HL70051"
  },
  "TCC.5": {
    "dataType": "SN",
    "longName": "Rerun Dilution Factor Default",
    "hl7Table": ""
  },
  "RXA.22": {
    "dataType": "TS",
    "longName": "System Entry Date/Time",
    "hl7Table": ""
  },
  "CM0.11": {
    "dataType": "XAD",
    "longName": "Contact's Address",
    "hl7Table": ""
  },
  "ACC.8": {
    "dataType": "ST",
    "longName": "Accident Description",
    "hl7Table": ""
  },
  "AIG.5": {"dataType": "CE", "longName": "Resource Group", "hl7Table": ""},
  "PCR.8": {
    "dataType": "TS",
    "longName": "Product Explantation Date",
    "hl7Table": ""
  },
  "DG1.21": {
    "dataType": "ID",
    "longName": "Diagnosis Action Code",
    "hl7Table": "HL70206"
  },
  "PID.3": {
    "dataType": "CX",
    "longName": "Patient Identifier List",
    "hl7Table": ""
  },
  "CTD.4": {"dataType": "PL", "longName": "Contact Location", "hl7Table": ""},
  "TCD.7": {
    "dataType": "ID",
    "longName": "Reflex Allowed",
    "hl7Table": "HL70136"
  },
  "GT1.29": {
    "dataType": "CX",
    "longName": "Guarantor Employer ID Number",
    "hl7Table": ""
  },
  "PV2.14": {
    "dataType": "DT",
    "longName": "Previous Service Date",
    "hl7Table": ""
  },
  "BTX.3": {"dataType": "CNE", "longName": "BC Component", "hl7Table": ""},
  "IN2.55": {
    "dataType": "DT",
    "longName": "Relationship to the Patient Start Date",
    "hl7Table": ""
  },
  "OM2.10": {
    "dataType": "NM",
    "longName": "Minimum Meaningful Increments",
    "hl7Table": ""
  },
  "PV2.2": {
    "dataType": "CE",
    "longName": "Accommodation Code",
    "hl7Table": "HL70129"
  },
  "MFI.6": {
    "dataType": "ID",
    "longName": "Response Level Code",
    "hl7Table": "HL70179"
  },
  "AIS.12": {
    "dataType": "CE",
    "longName": "Filler Supplemental Service Information",
    "hl7Table": "HL70411"
  },
  "SPM.22": {
    "dataType": "CWE",
    "longName": "Specimen Quality",
    "hl7Table": "HL70491"
  },
  "ITM.28": {
    "dataType": "CNE",
    "longName": "Procedure Code Modifier",
    "hl7Table": "HL70340"
  },
  "OBX.21": {
    "dataType": "EI",
    "longName": "Observation Instance Identifier",
    "hl7Table": ""
  },
  "DRG.3": {
    "dataType": "ID",
    "longName": "DRG Approval Indicator",
    "hl7Table": "HL70136"
  },
  "TXA.15": {
    "dataType": "EI",
    "longName": "Filler Order Number",
    "hl7Table": ""
  },
  "PSH.10": {"dataType": "CQ", "longName": "Quantity in Use", "hl7Table": ""},
  "CSR.14": {
    "dataType": "CE",
    "longName": "Patient Evaluability Status",
    "hl7Table": ""
  },
  "MSA.1": {
    "dataType": "ID",
    "longName": "Acknowledgment Code",
    "hl7Table": "HL70008"
  },
  "CER.10": {"dataType": "CWE", "longName": "Certificate Type", "hl7Table": ""},
  "IN1.45": {
    "dataType": "ST",
    "longName": "Verification Status",
    "hl7Table": ""
  },
  "MSH.2": {
    "dataType": "ST",
    "longName": "Encoding Characters",
    "hl7Table": ""
  },
  "UB1.10": {
    "dataType": "UVC",
    "longName": "Value Amount & Code (46-49)",
    "hl7Table": ""
  },
  "SAC.13": {"dataType": "EI", "longName": "Tray Identifier", "hl7Table": ""},
  "ORG.12": {
    "dataType": "ID",
    "longName": "Primary Care Physician Indicator",
    "hl7Table": "HL70136"
  },
  "URD.5": {
    "dataType": "CE",
    "longName": "R/U What Department Code",
    "hl7Table": ""
  },
  "BPO.4": {"dataType": "NM", "longName": "BP Quantity", "hl7Table": ""},
  "INV.15": {
    "dataType": "CE",
    "longName": "Test/Fluid Identifier(s)",
    "hl7Table": ""
  },
  "PV2.43": {
    "dataType": "IS",
    "longName": "Living Will Code",
    "hl7Table": "HL70315"
  },
  "PEO.10": {
    "dataType": "ID",
    "longName": "Event Expected",
    "hl7Table": "HL70239"
  },
  "BHS.10": {"dataType": "ST", "longName": "Batch Comment", "hl7Table": ""},
  "STF.27": {"dataType": "CE", "longName": "Race", "hl7Table": "HL70005"},
  "IPC.8": {
    "dataType": "CE",
    "longName": "Scheduled Procedure Step Location",
    "hl7Table": ""
  },
  "PRC.9": {"dataType": "MO", "longName": "Minimum Price", "hl7Table": ""},
  "LDP.5": {
    "dataType": "IS",
    "longName": "Valid Patient Classes",
    "hl7Table": "HL70004"
  },
  "EDU.3": {
    "dataType": "DR",
    "longName": "Academic Degree Program Date Range",
    "hl7Table": ""
  },
  "OM7.8": {
    "dataType": "NM",
    "longName": "Test/Service Default Duration Quantity",
    "hl7Table": ""
  },
  "ERQ.2": {"dataType": "CE", "longName": "Event Identifier", "hl7Table": ""},
  "SAC.44": {
    "dataType": "CE",
    "longName": "Other Environmental Factors",
    "hl7Table": "HL70377"
  },
  "NK1.37": {
    "dataType": "ST",
    "longName": "Contact Person Social Security Number",
    "hl7Table": ""
  },
  "IVT.14": {
    "dataType": "CWE",
    "longName": "Item Importance Code",
    "hl7Table": "HL70634"
  },
  "RXO.10": {
    "dataType": "CE",
    "longName": "Requested Dispense Code",
    "hl7Table": ""
  },
  "IN1.12": {
    "dataType": "DT",
    "longName": "Plan Effective Date",
    "hl7Table": ""
  },
  "CDM.4": {
    "dataType": "ST",
    "longName": "Charge Description Long",
    "hl7Table": ""
  },
  "LCC.3": {
    "dataType": "CE",
    "longName": "Accommodation Type",
    "hl7Table": "HL70129"
  },
  "ILT.1": {"dataType": "SI", "longName": "Set Id", "hl7Table": ""},
  "BPX.1": {"dataType": "SI", "longName": "Set ID - BPX", "hl7Table": ""},
  "MFA.1": {
    "dataType": "ID",
    "longName": "Record-Level Event Code",
    "hl7Table": "HL70180"
  },
  "STZ.1": {
    "dataType": "CWE",
    "longName": "Sterilization Type",
    "hl7Table": "HL70806"
  },
  "ROL.12": {"dataType": "XTN", "longName": "Phone", "hl7Table": ""},
  "AIS.5": {
    "dataType": "NM",
    "longName": "Start Date/Time Offset",
    "hl7Table": ""
  },
  "IN2.14": {
    "dataType": "IS",
    "longName": "Military Service",
    "hl7Table": "HL70140"
  },
  "SPR.4": {
    "dataType": "QIP",
    "longName": "Input Parameter List",
    "hl7Table": ""
  },
  "STF.31": {
    "dataType": "TS",
    "longName": "Death Date and Time",
    "hl7Table": ""
  },
  "IIM.6": {
    "dataType": "CWE",
    "longName": "Inventory Location",
    "hl7Table": ""
  },
  "FHS.3": {
    "dataType": "HD",
    "longName": "File Sending Application",
    "hl7Table": ""
  },
  "OBR.8": {
    "dataType": "TS",
    "longName": "Observation End Date/Time",
    "hl7Table": ""
  },
  "GOL.5": {"dataType": "EI", "longName": "Episode of Care ID", "hl7Table": ""},
  "ROL.8": {"dataType": "CE", "longName": "Role Action Reason", "hl7Table": ""},
  "PV1.45": {
    "dataType": "TS",
    "longName": "Discharge Date/Time",
    "hl7Table": ""
  },
  "ORC.8": {"dataType": "EIP", "longName": "Parent", "hl7Table": ""},
  "PES.9": {
    "dataType": "TS",
    "longName": "Sender Aware Date/Time",
    "hl7Table": ""
  },
  "EVN.2": {"dataType": "TS", "longName": "Recorded Date/Time", "hl7Table": ""},
  "FT1.23": {
    "dataType": "EI",
    "longName": "Filler Order Number",
    "hl7Table": ""
  },
  "ORC.10": {"dataType": "XCN", "longName": "Entered By", "hl7Table": ""},
  "RXA.18": {
    "dataType": "CE",
    "longName": "Substance/Treatment Refusal Reason",
    "hl7Table": ""
  },
  "OM1.41": {
    "dataType": "TX",
    "longName": "Description of Test Methods",
    "hl7Table": ""
  },
  "NK1.21": {
    "dataType": "IS",
    "longName": "Living Arrangement",
    "hl7Table": "HL70220"
  },
  "SPM.6": {
    "dataType": "CWE",
    "longName": "Specimen Additives",
    "hl7Table": "HL70371"
  },
  "PID.10": {"dataType": "CE", "longName": "Race", "hl7Table": "HL70005"},
  "UB2.16": {
    "dataType": "ST",
    "longName": "UB92 Locator 78 (State)",
    "hl7Table": ""
  },
  "RXD.21": {"dataType": "CE", "longName": "Indication", "hl7Table": ""},
  "EQU.3": {
    "dataType": "CE",
    "longName": "Equipment State",
    "hl7Table": "HL70365"
  },
  "IN2.43": {
    "dataType": "CE",
    "longName": "Marital Status",
    "hl7Table": "HL70002"
  },
  "AIL.7": {
    "dataType": "NM",
    "longName": "Start Date/Time Offset",
    "hl7Table": ""
  },
  "INV.7": {"dataType": "NM", "longName": "Initial Quantity", "hl7Table": ""},
  "CON.10": {
    "dataType": "CNE",
    "longName": "Consent Mode",
    "hl7Table": "HL70497"
  },
  "PV1.12": {
    "dataType": "IS",
    "longName": "Preadmit Test Indicator",
    "hl7Table": "HL70087"
  },
  "FT1.4": {"dataType": "DR", "longName": "Transaction Date", "hl7Table": ""},
  "MRG.6": {
    "dataType": "CX",
    "longName": "Prior Alternate Visit ID",
    "hl7Table": ""
  },
  "GT1.4": {
    "dataType": "XPN",
    "longName": "Guarantor Spouse Name",
    "hl7Table": ""
  },
  "IN1.53": {
    "dataType": "IS",
    "longName": "VIP Indicator",
    "hl7Table": "HL70099"
  },
  "OM1.16": {
    "dataType": "CE",
    "longName": "Observation Producing Department/Section",
    "hl7Table": "HL79999"
  },
  "CM0.1": {"dataType": "SI", "longName": "Set ID - CM0", "hl7Table": ""},
  "ORC.30": {
    "dataType": "CNE",
    "longName": "Enterer Authorization Mode",
    "hl7Table": "HL70483"
  },
  "PCE.1": {"dataType": "SI", "longName": "Set ID", "hl7Table": ""},
  "IN1.24": {
    "dataType": "DT",
    "longName": "Notice Of Admission Date",
    "hl7Table": ""
  },
  "IN3.19": {
    "dataType": "XTN",
    "longName": "Certification Agency Phone Number",
    "hl7Table": ""
  },
  "BHS.1": {
    "dataType": "ST",
    "longName": "Batch Field Separator",
    "hl7Table": ""
  },
  "RXO.26": {
    "dataType": "CWE",
    "longName": "Requested Drug Strength Volume Units",
    "hl7Table": ""
  },
  "IVT.22": {
    "dataType": "NM",
    "longName": "Recommended Safety Stock Days",
    "hl7Table": ""
  },
  "OBX.2": {"dataType": "ID", "longName": "Value Type", "hl7Table": "HL70125"},
  "ITM.7": {
    "dataType": "EI",
    "longName": "Manufacturer Identifier",
    "hl7Table": ""
  },
  "APR.2": {
    "dataType": "SCV",
    "longName": "Resource Selection Criteria",
    "hl7Table": "HL70294"
  },
  "PR1.9": {
    "dataType": "IS",
    "longName": "Anesthesia Code",
    "hl7Table": "HL70019"
  },
  "RXA.7": {"dataType": "CE", "longName": "Administered Units", "hl7Table": ""},
  "IN2.34": {
    "dataType": "CE",
    "longName": "Primary Language",
    "hl7Table": "HL70296"
  },
  "OM1.2": {
    "dataType": "CE",
    "longName": "Producer's Service/Test/Observation ID",
    "hl7Table": "HL79999"
  },
  "STF.11": {
    "dataType": "XAD",
    "longName": "Office/Home Address/Birthplace",
    "hl7Table": ""
  },
  "PDA.2": {"dataType": "PL", "longName": "Death Location", "hl7Table": ""},
  "UB1.4": {
    "dataType": "NM",
    "longName": "Blood Replaced-Pints (41)",
    "hl7Table": ""
  },
  "FAC.4": {
    "dataType": "XTN",
    "longName": "Facility Telecommunication",
    "hl7Table": ""
  },
  "NSC.5": {"dataType": "HD", "longName": "Current Facility", "hl7Table": ""},
  "VAR.4": {
    "dataType": "XCN",
    "longName": "Variance Originator",
    "hl7Table": ""
  },
  "GT1.48": {
    "dataType": "IS",
    "longName": "Contact Relationship",
    "hl7Table": "HL70063"
  },
  "SAC.9": {
    "dataType": "CE",
    "longName": "Carrier Type",
    "hl7Table": "HL70378"
  },
  "RXG.11": {
    "dataType": "LA2",
    "longName": "Dispense-to Location",
    "hl7Table": ""
  },
  "SAC.25": {
    "dataType": "CE",
    "longName": "Separator Type",
    "hl7Table": "HL70380"
  },
  "OM1.36": {
    "dataType": "CE",
    "longName": "Fixed Canned Message",
    "hl7Table": "HL79999"
  },
  "CER.26": {"dataType": "TS", "longName": "Inactivation Date", "hl7Table": ""},
  "RQD.8": {
    "dataType": "IS",
    "longName": "Item Natural Account Code",
    "hl7Table": "HL70320"
  },
  "ABS.2": {
    "dataType": "CE",
    "longName": "Transfer Medical Service Code",
    "hl7Table": "HL70069"
  },
  "TXA.23": {
    "dataType": "XCN",
    "longName": "Distributed Copies (Code and Name of Recipients)",
    "hl7Table": ""
  },
  "PV1.32": {
    "dataType": "NM",
    "longName": "Bad Debt Transfer Amount",
    "hl7Table": ""
  },
  "IN3.2": {
    "dataType": "CX",
    "longName": "Certification Number",
    "hl7Table": ""
  },
  "OBX.17": {
    "dataType": "CE",
    "longName": "Observation Method",
    "hl7Table": ""
  },
  "AUT.7": {
    "dataType": "CP",
    "longName": "Reimbursement Limit",
    "hl7Table": ""
  },
  "SPM.14": {
    "dataType": "ST",
    "longName": "Specimen Description",
    "hl7Table": ""
  },
  "PD1.14": {"dataType": "XON", "longName": "Place of Worship", "hl7Table": ""},
  "IAM.13": {
    "dataType": "TS",
    "longName": "Reported Date/Time",
    "hl7Table": ""
  },
  "IN2.63": {
    "dataType": "XTN",
    "longName": "Insured's Phone Number - Home",
    "hl7Table": ""
  },
  "IVT.4": {
    "dataType": "EI",
    "longName": "Source Location Identifier",
    "hl7Table": ""
  },
  "ACC.11": {"dataType": "XAD", "longName": "Accident Address", "hl7Table": ""},
  "PV2.22": {
    "dataType": "ID",
    "longName": "Visit Protection Indicator",
    "hl7Table": "HL70136"
  },
  "PEO.2": {
    "dataType": "CE",
    "longName": "Event Symptom/Diagnosis Code",
    "hl7Table": ""
  },
  "PR1.10": {
    "dataType": "NM",
    "longName": "Anesthesia Minutes",
    "hl7Table": ""
  },
  "PRA.4": {
    "dataType": "ID",
    "longName": "Provider Billing",
    "hl7Table": "HL70187"
  },
  "PID.30": {
    "dataType": "ID",
    "longName": "Patient Death Indicator",
    "hl7Table": "HL70136"
  },
  "NPU.2": {"dataType": "IS", "longName": "Bed Status", "hl7Table": "HL70116"},
  "CER.30": {
    "dataType": "CE",
    "longName": "Revocation Reason Code",
    "hl7Table": ""
  },
  "OM1.20": {
    "dataType": "ST",
    "longName": "Report Display Order",
    "hl7Table": ""
  },
  "SAC.33": {
    "dataType": "CE",
    "longName": "Hemolysis Index Units",
    "hl7Table": ""
  },
  "PV1.24": {
    "dataType": "IS",
    "longName": "Contract Code",
    "hl7Table": "HL70044"
  },
  "QRD.7": {
    "dataType": "CQ",
    "longName": "Quantity Limited Request",
    "hl7Table": "HL70126"
  },
  "RXR.5": {
    "dataType": "CE",
    "longName": "Routing Instruction",
    "hl7Table": ""
  },
  "DG1.4": {
    "dataType": "ST",
    "longName": "Diagnosis Description",
    "hl7Table": ""
  },
  "PRD.7": {
    "dataType": "PLN",
    "longName": "Provider Identifiers",
    "hl7Table": ""
  },
  "IAM.7": {
    "dataType": "EI",
    "longName": "Allergy Unique Identifier",
    "hl7Table": ""
  },
  "RXD.17": {
    "dataType": "CE",
    "longName": "Actual Strength Unit",
    "hl7Table": ""
  },
  "PID.26": {
    "dataType": "CE",
    "longName": "Citizenship",
    "hl7Table": "HL70171"
  },
  "OVR.5": {
    "dataType": "XCN",
    "longName": "Override Authorized By",
    "hl7Table": ""
  },
  "PV2.34": {
    "dataType": "ID",
    "longName": "Military Partnership Code",
    "hl7Table": "HL70136"
  },
  "IN2.6": {
    "dataType": "ST",
    "longName": "Medicare Health Ins Card Number",
    "hl7Table": ""
  },
  "NK1.17": {
    "dataType": "IS",
    "longName": "Living Dependency",
    "hl7Table": "HL70223"
  },
  "PCR.4": {
    "dataType": "CQ",
    "longName": "Total Duration Of Therapy",
    "hl7Table": ""
  },
  "AIG.9": {
    "dataType": "NM",
    "longName": "Start Date/Time Offset",
    "hl7Table": ""
  },
  "IN1.32": {
    "dataType": "IS",
    "longName": "Billing Status",
    "hl7Table": "HL70022"
  },
  "NST.11": {
    "dataType": "NM",
    "longName": "Length Errors Received",
    "hl7Table": ""
  },
  "ACC.4": {
    "dataType": "CE",
    "longName": "Auto Accident State",
    "hl7Table": "HL70347"
  },
  "ORC.26": {
    "dataType": "CWE",
    "longName": "Advanced Beneficiary Notice Override Reason",
    "hl7Table": "HL70552"
  },
  "TCC.9": {
    "dataType": "ID",
    "longName": "Automatic Rerun Allowed",
    "hl7Table": "HL70136"
  },
  "FT1.15": {"dataType": "CP", "longName": "Insurance Amount", "hl7Table": ""},
  "RQ1.6": {"dataType": "ID", "longName": "Taxable", "hl7Table": "HL70136"},
  "QRI.3": {
    "dataType": "CE",
    "longName": "Algorithm Descriptor",
    "hl7Table": "HL70393"
  },
  "PDC.13": {
    "dataType": "CQ",
    "longName": "Expected Shelf Life",
    "hl7Table": ""
  },
  "AL1.1": {"dataType": "SI", "longName": "Set ID - AL1", "hl7Table": ""},
  "TQ2.4": {
    "dataType": "EI",
    "longName": "Related Filler Number",
    "hl7Table": ""
  },
  "IN2.22": {
    "dataType": "XPN",
    "longName": "Special Coverage Approval Name",
    "hl7Table": ""
  },
  "RXD.4": {
    "dataType": "NM",
    "longName": "Actual Dispense Amount",
    "hl7Table": ""
  },
  "OM4.1": {
    "dataType": "NM",
    "longName": "Sequence Number - Test/Observation Master File",
    "hl7Table": ""
  },
  "PRC.17": {"dataType": "MO", "longName": "Cost", "hl7Table": ""},
  "TXA.19": {
    "dataType": "ID",
    "longName": "Document Availability Status",
    "hl7Table": "HL70273"
  },
  "RF1.1": {
    "dataType": "CE",
    "longName": "Referral Status",
    "hl7Table": "HL70283"
  },
  "CON.6": {
    "dataType": "FT",
    "longName": "Subject-specific Consent Text",
    "hl7Table": ""
  },
  "RXE.16": {
    "dataType": "NM",
    "longName": "Number of Refills Remaining",
    "hl7Table": ""
  },
  "RXC.6": {
    "dataType": "CE",
    "longName": "Component Strength Units",
    "hl7Table": ""
  },
  "OM3.3": {
    "dataType": "CE",
    "longName": "Valid Coded \"Answers\"",
    "hl7Table": "HL79999"
  },
  "IN1.49": {
    "dataType": "CX",
    "longName": "Insured's ID Number",
    "hl7Table": ""
  },
  "ARQ.16": {
    "dataType": "XTN",
    "longName": "Placer Contact Phone Number",
    "hl7Table": ""
  },
  "PDC.3": {"dataType": "ST", "longName": "Brand Name", "hl7Table": ""},
  "PV2.18": {
    "dataType": "IS",
    "longName": "Special Program Code",
    "hl7Table": "HL70214"
  },
  "VTQ.1": {"dataType": "ST", "longName": "Query Tag", "hl7Table": ""},
  "GT1.25": {
    "dataType": "ID",
    "longName": "Guarantor Death Flag",
    "hl7Table": "HL70136"
  },
  "AFF.4": {
    "dataType": "DR",
    "longName": "Professional Organization Affiliation Date Range",
    "hl7Table": ""
  },
  "NCK.1": {"dataType": "TS", "longName": "System Date/Time", "hl7Table": ""},
  "TCC.11": {
    "dataType": "ID",
    "longName": "Automatic Reflex Allowed",
    "hl7Table": "HL70136"
  },
  "ITM.24": {
    "dataType": "CNE",
    "longName": "Item Set Indicator",
    "hl7Table": "HL70532"
  },
  "IN2.59": {
    "dataType": "IS",
    "longName": "Policy Scope",
    "hl7Table": "HL70312"
  },
  "TQ1.1": {"dataType": "SI", "longName": "Set ID - TQ1", "hl7Table": ""},
  "PRB.16": {
    "dataType": "TS",
    "longName": "Problem Date of Onset",
    "hl7Table": ""
  },
  "OBR.27": {"dataType": "TQ", "longName": "Quantity/Timing", "hl7Table": ""},
  "LDP.9": {"dataType": "ST", "longName": "Inactivated Reason", "hl7Table": ""},
  "PRC.5": {"dataType": "CP", "longName": "Price", "hl7Table": ""},
  "CDM.8": {
    "dataType": "ID",
    "longName": "Active/Inactive Flag",
    "hl7Table": "HL70183"
  },
  "IN3.23": {
    "dataType": "IS",
    "longName": "Second Opinion Status",
    "hl7Table": "HL70151"
  },
  "RXG.1": {
    "dataType": "NM",
    "longName": "Give Sub-ID Counter",
    "hl7Table": ""
  },
  "IVT.18": {"dataType": "CP", "longName": "Reusable Cost", "hl7Table": ""},
  "RXE.41": {
    "dataType": "XAD",
    "longName": "Dispensing Pharmacy Address",
    "hl7Table": ""
  },
  "OM7.4": {
    "dataType": "TX",
    "longName": "Category Description",
    "hl7Table": ""
  },
  "PES.10": {"dataType": "TS", "longName": "Event Report Date", "hl7Table": ""},
  "IN1.3": {
    "dataType": "CX",
    "longName": "Insurance Company ID",
    "hl7Table": ""
  },
  "BPO.8": {
    "dataType": "PL",
    "longName": "BP Intended Dispense From Location",
    "hl7Table": ""
  },
  "INV.19": {
    "dataType": "CQ",
    "longName": "On Board Stability Time",
    "hl7Table": ""
  },
  "IPC.4": {
    "dataType": "EI",
    "longName": "Scheduled Procedure Step ID",
    "hl7Table": ""
  },
  "PCR.16": {
    "dataType": "CE",
    "longName": "Product Evaluation Results",
    "hl7Table": ""
  },
  "PES.5": {
    "dataType": "EI",
    "longName": "Sender Event Identifier",
    "hl7Table": ""
  },
  "ORC.4": {
    "dataType": "EI",
    "longName": "Placer Group Number",
    "hl7Table": ""
  },
  "UB2.1": {"dataType": "SI", "longName": "Set ID - UB2", "hl7Table": ""},
  "PV1.49": {"dataType": "NM", "longName": "Total Payments", "hl7Table": ""},
  "OBR.31": {"dataType": "CE", "longName": "Reason for Study", "hl7Table": ""},
  "ROL.4": {"dataType": "XCN", "longName": "Role Person", "hl7Table": ""},
  "GOL.9": {
    "dataType": "CE",
    "longName": "Goal Classification",
    "hl7Table": ""
  },
  "OM2.7": {
    "dataType": "RFR",
    "longName": "Critical Range for Ordinal and Continuous Observations",
    "hl7Table": ""
  },
  "QRF.6": {
    "dataType": "ID",
    "longName": "Which Date/Time Qualifier",
    "hl7Table": "HL70156"
  },
  "DG1.17": {
    "dataType": "IS",
    "longName": "Diagnosis Classification",
    "hl7Table": "HL70228"
  },
  "DB1.7": {
    "dataType": "DT",
    "longName": "Disability Return to Work Date",
    "hl7Table": ""
  },
  "RXA.14": {
    "dataType": "CE",
    "longName": "Administered Strength Units",
    "hl7Table": ""
  },
  "AIS.9": {
    "dataType": "IS",
    "longName": "Allow Substitution Code",
    "hl7Table": "HL70279"
  },
  "SCH.27": {
    "dataType": "EI",
    "longName": "Filler Order Number",
    "hl7Table": ""
  },
  "PRA.10": {
    "dataType": "DT",
    "longName": "Date Left Practice",
    "hl7Table": ""
  },
  "PTH.2": {"dataType": "CE", "longName": "Pathway ID", "hl7Table": ""},
  "OBR.4": {
    "dataType": "CE",
    "longName": "Universal Service Identifier",
    "hl7Table": ""
  },
  "IN2.18": {
    "dataType": "ID",
    "longName": "Military Non-Avail Cert On File",
    "hl7Table": "HL70136"
  },
  "ORG.3": {
    "dataType": "CE",
    "longName": "Organization Unit Type Code",
    "hl7Table": "HL70474"
  },
  "RXO.6": {
    "dataType": "CE",
    "longName": "Provider's Pharmacy/Treatment Instructions",
    "hl7Table": ""
  },
  "PSH.6": {
    "dataType": "CQ",
    "longName": "Quantity Manufactured",
    "hl7Table": ""
  },
  "PRB.1": {"dataType": "ID", "longName": "Action Code", "hl7Table": "HL70287"},
  "CNS.4": {
    "dataType": "TS",
    "longName": "Ending Notification Date/Time",
    "hl7Table": ""
  },
  "GT1.8": {
    "dataType": "TS",
    "longName": "Guarantor Date/Time Of Birth",
    "hl7Table": ""
  },
  "FT1.8": {
    "dataType": "ST",
    "longName": "Transaction Description",
    "hl7Table": ""
  },
  "BPX.11": {"dataType": "CNE", "longName": "BP Blood Group", "hl7Table": ""},
  "BLG.3": {"dataType": "CX", "longName": "Account ID", "hl7Table": ""},
  "GT1.33": {
    "dataType": "IS",
    "longName": "Living Dependency",
    "hl7Table": "HL70223"
  },
  "NK1.7": {
    "dataType": "CE",
    "longName": "Contact Role",
    "hl7Table": "HL70131"
  },
  "ABS.12": {
    "dataType": "NM",
    "longName": "Gestation Period - Weeks",
    "hl7Table": ""
  },
  "BPX.10": {"dataType": "EI", "longName": "CP Lot Number", "hl7Table": ""},
  "BLG.2": {"dataType": "ID", "longName": "Charge Type", "hl7Table": "HL70122"},
  "GT1.32": {
    "dataType": "DT",
    "longName": "Employment Stop Date",
    "hl7Table": ""
  },
  "NK1.6": {
    "dataType": "XTN",
    "longName": "Business Phone Number",
    "hl7Table": ""
  },
  "QPD.1": {
    "dataType": "CE",
    "longName": "Message Query Name",
    "hl7Table": "HL70471"
  },
  "ABS.13": {
    "dataType": "CE",
    "longName": "Newborn Code",
    "hl7Table": "HL70425"
  },
  "OM6.1": {
    "dataType": "NM",
    "longName": "Sequence Number - Test/Observation Master File",
    "hl7Table": ""
  },
  "ORG.2": {
    "dataType": "CE",
    "longName": "Organization Unit Code",
    "hl7Table": "HL70405"
  },
  "RXO.7": {
    "dataType": "CE",
    "longName": "Provider's Administration Instructions",
    "hl7Table": ""
  },
  "PSH.7": {
    "dataType": "CQ",
    "longName": "Quantity Distributed",
    "hl7Table": ""
  },
  "CNS.5": {
    "dataType": "CE",
    "longName": "Starting Notification Code",
    "hl7Table": ""
  },
  "GT1.9": {
    "dataType": "IS",
    "longName": "Guarantor Administrative Sex",
    "hl7Table": "HL70001"
  },
  "FT1.9": {
    "dataType": "ST",
    "longName": "Transaction Description - Alt",
    "hl7Table": ""
  },
  "AIS.8": {"dataType": "CE", "longName": "Duration Units", "hl7Table": ""},
  "SCH.26": {
    "dataType": "EI",
    "longName": "Placer Order Number",
    "hl7Table": ""
  },
  "PRA.11": {
    "dataType": "CE",
    "longName": "Government Reimbursement Billing Eligibility",
    "hl7Table": "HL70401"
  },
  "FTS.2": {
    "dataType": "ST",
    "longName": "File Trailer Comment",
    "hl7Table": ""
  },
  "PTH.3": {
    "dataType": "EI",
    "longName": "Pathway Instance ID",
    "hl7Table": ""
  },
  "OBR.5": {"dataType": "ID", "longName": "Priority - OBR", "hl7Table": ""},
  "IN2.19": {
    "dataType": "ID",
    "longName": "Baby Coverage",
    "hl7Table": "HL70136"
  },
  "PES.4": {"dataType": "XTN", "longName": "Sender Telephone", "hl7Table": ""},
  "TXA.1": {"dataType": "SI", "longName": "Set ID - TXA", "hl7Table": ""},
  "ORC.5": {
    "dataType": "ID",
    "longName": "Order Status",
    "hl7Table": "HL70038"
  },
  "PV1.48": {"dataType": "NM", "longName": "Total Adjustments", "hl7Table": ""},
  "OBR.30": {
    "dataType": "ID",
    "longName": "Transportation Mode",
    "hl7Table": "HL70124"
  },
  "ROL.5": {
    "dataType": "TS",
    "longName": "Role Begin Date/Time",
    "hl7Table": ""
  },
  "GOL.8": {
    "dataType": "TS",
    "longName": "Expected Goal Achieve Date/Time",
    "hl7Table": ""
  },
  "OM2.6": {
    "dataType": "RFR",
    "longName":
        "Reference (Normal) Range - Ordinal and Continuous Observations",
    "hl7Table": ""
  },
  "QRF.7": {
    "dataType": "ID",
    "longName": "Which Date/Time Status Qualifier",
    "hl7Table": "HL70157"
  },
  "DG1.16": {
    "dataType": "XCN",
    "longName": "Diagnosing Clinician",
    "hl7Table": ""
  },
  "DB1.6": {
    "dataType": "DT",
    "longName": "Disability End Date",
    "hl7Table": ""
  },
  "RXA.15": {
    "dataType": "ST",
    "longName": "Substance Lot Number",
    "hl7Table": ""
  },
  "PES.11": {
    "dataType": "ID",
    "longName": "Event Report Timing/Type",
    "hl7Table": "HL70234"
  },
  "IN1.2": {
    "dataType": "CE",
    "longName": "Insurance Plan ID",
    "hl7Table": "HL70072"
  },
  "BPO.9": {
    "dataType": "XAD",
    "longName": "BP Intended Dispense From Address",
    "hl7Table": ""
  },
  "INV.18": {
    "dataType": "CE",
    "longName": "Supplier Identifier",
    "hl7Table": "HL70386"
  },
  "IPC.5": {"dataType": "CE", "longName": "Modality", "hl7Table": ""},
  "PCR.17": {
    "dataType": "ID",
    "longName": "Evaluated Product Source",
    "hl7Table": "HL70248"
  },
  "PRB.17": {
    "dataType": "ST",
    "longName": "Problem Onset Text",
    "hl7Table": ""
  },
  "LDP.8": {
    "dataType": "TS",
    "longName": "Inactivation Date - LDP",
    "hl7Table": ""
  },
  "OBR.26": {"dataType": "PRL", "longName": "Parent Result", "hl7Table": ""},
  "PRC.4": {
    "dataType": "IS",
    "longName": "Valid Patient Classes",
    "hl7Table": "HL70004"
  },
  "CDM.9": {
    "dataType": "CE",
    "longName": "Inventory Number",
    "hl7Table": "HL70463"
  },
  "IN3.22": {
    "dataType": "DT",
    "longName": "Second Opinion Date",
    "hl7Table": ""
  },
  "OM7.24": {
    "dataType": "CE",
    "longName": "Primary Key Value - CDM",
    "hl7Table": "HL70132"
  },
  "IVT.19": {
    "dataType": "EI",
    "longName": "Substitute Item Identifier",
    "hl7Table": ""
  },
  "RXE.40": {
    "dataType": "CWE",
    "longName": "Dispensing Pharmacy",
    "hl7Table": ""
  },
  "OM7.5": {"dataType": "ST", "longName": "Category Synonym", "hl7Table": ""},
  "PV2.19": {
    "dataType": "ID",
    "longName": "Retention Indicator",
    "hl7Table": "HL70136"
  },
  "GT1.24": {
    "dataType": "TS",
    "longName": "Guarantor Death Date And Time",
    "hl7Table": ""
  },
  "AFF.5": {
    "dataType": "ST",
    "longName": "Professional Affiliation Additional Information",
    "hl7Table": ""
  },
  "TCC.10": {
    "dataType": "ID",
    "longName": "Automatic Repeat Allowed",
    "hl7Table": "HL70136"
  },
  "ITM.25": {
    "dataType": "EI",
    "longName": "Item Set Identifier",
    "hl7Table": ""
  },
  "IN2.58": {
    "dataType": "XTN",
    "longName": "Insurance Co Contact Phone Number",
    "hl7Table": ""
  },
  "TXA.18": {
    "dataType": "ID",
    "longName": "Document Confidentiality Status",
    "hl7Table": "HL70272"
  },
  "CON.7": {"dataType": "FT", "longName": "Consent Background", "hl7Table": ""},
  "RXE.17": {
    "dataType": "NM",
    "longName": "Number of Refills/Doses Dispensed",
    "hl7Table": ""
  },
  "RXC.7": {"dataType": "CE", "longName": "Supplementary Code", "hl7Table": ""},
  "OM3.2": {
    "dataType": "CE",
    "longName": "Preferred Coding System",
    "hl7Table": "HL79999"
  },
  "IN1.48": {"dataType": "IS", "longName": "Handicap", "hl7Table": "HL70295"},
  "ARQ.17": {
    "dataType": "XAD",
    "longName": "Placer Contact Address",
    "hl7Table": ""
  },
  "PDC.2": {"dataType": "CE", "longName": "Country", "hl7Table": ""},
  "QRI.2": {
    "dataType": "IS",
    "longName": "Match Reason Code",
    "hl7Table": "HL70392"
  },
  "RQ1.7": {
    "dataType": "ID",
    "longName": "Substitute Allowed",
    "hl7Table": "HL70136"
  },
  "PDC.12": {
    "dataType": "CQ",
    "longName": "Labeled Shelf Life",
    "hl7Table": ""
  },
  "TQ2.5": {
    "dataType": "EI",
    "longName": "Related Placer Group Number",
    "hl7Table": ""
  },
  "IN2.23": {
    "dataType": "ST",
    "longName": "Special Coverage Approval Title",
    "hl7Table": ""
  },
  "ARQ.1": {
    "dataType": "EI",
    "longName": "Placer Appointment ID",
    "hl7Table": ""
  },
  "RXD.5": {
    "dataType": "CE",
    "longName": "Actual Dispense Units",
    "hl7Table": ""
  },
  "NST.1": {
    "dataType": "ID",
    "longName": "Statistics Available",
    "hl7Table": "HL70136"
  },
  "ODS.4": {"dataType": "ST", "longName": "Text Instruction", "hl7Table": ""},
  "PRC.16": {
    "dataType": "ID",
    "longName": "Active/Inactive Flag",
    "hl7Table": "HL70183"
  },
  "NDS.4": {"dataType": "CE", "longName": "Notification Code", "hl7Table": ""},
  "IN2.7": {
    "dataType": "XPN",
    "longName": "Medicaid Case Name",
    "hl7Table": ""
  },
  "NK1.16": {
    "dataType": "TS",
    "longName": "Date/Time of Birth",
    "hl7Table": ""
  },
  "PCR.5": {
    "dataType": "TS",
    "longName": "Product Manufacture Date",
    "hl7Table": ""
  },
  "IN1.33": {
    "dataType": "NM",
    "longName": "Lifetime Reserve Days",
    "hl7Table": ""
  },
  "ACC.5": {
    "dataType": "ID",
    "longName": "Accident Job Related Indicator",
    "hl7Table": "HL70136"
  },
  "NST.10": {
    "dataType": "NM",
    "longName": "Checksum Errors Received",
    "hl7Table": ""
  },
  "AIG.8": {"dataType": "TS", "longName": "Start Date/Time", "hl7Table": ""},
  "FT1.14": {
    "dataType": "CE",
    "longName": "Insurance Plan ID",
    "hl7Table": "HL70072"
  },
  "ORC.27": {
    "dataType": "TS",
    "longName": "Filler's Expected Availability Date/Time",
    "hl7Table": ""
  },
  "TCC.8": {
    "dataType": "NM",
    "longName": "Inventory Limits Warning Level",
    "hl7Table": ""
  },
  "QRD.6": {
    "dataType": "TS",
    "longName": "Deferred Response Date/Time",
    "hl7Table": ""
  },
  "RXR.4": {
    "dataType": "CWE",
    "longName": "Administration Method",
    "hl7Table": "HL70165"
  },
  "PRD.6": {
    "dataType": "CE",
    "longName": "Preferred Method of Contact",
    "hl7Table": "HL70185"
  },
  "DG1.5": {
    "dataType": "TS",
    "longName": "Diagnosis Date/Time",
    "hl7Table": ""
  },
  "IAM.6": {
    "dataType": "CNE",
    "longName": "Allergy Action Code",
    "hl7Table": "HL70323"
  },
  "RXD.16": {"dataType": "NM", "longName": "Actual Strength", "hl7Table": ""},
  "PID.27": {
    "dataType": "CE",
    "longName": "Veterans Military Status",
    "hl7Table": "HL70172"
  },
  "OVR.4": {
    "dataType": "XCN",
    "longName": "Override Entered By",
    "hl7Table": ""
  },
  "QAK.6": {"dataType": "NM", "longName": "Hits remaining", "hl7Table": ""},
  "PV2.35": {
    "dataType": "ID",
    "longName": "Military Non-Availability Code",
    "hl7Table": "HL70136"
  },
  "CER.31": {
    "dataType": "CWE",
    "longName": "Certificate Status",
    "hl7Table": "HL70536"
  },
  "OM1.21": {
    "dataType": "TS",
    "longName":
        "Date/Time Stamp for any change in Definition for the Observation",
    "hl7Table": ""
  },
  "SAC.32": {"dataType": "NM", "longName": "Hemolysis Index", "hl7Table": ""},
  "PV1.25": {
    "dataType": "DT",
    "longName": "Contract Effective Date",
    "hl7Table": ""
  },
  "SPM.15": {
    "dataType": "CWE",
    "longName": "Specimen Handling Code",
    "hl7Table": "HL70376"
  },
  "PD1.15": {
    "dataType": "CE",
    "longName": "Advance Directive Code",
    "hl7Table": "HL70435"
  },
  "IAM.12": {"dataType": "ST", "longName": "Onset Date Text", "hl7Table": ""},
  "RXE.1": {"dataType": "TQ", "longName": "Quantity/Timing", "hl7Table": ""},
  "IN2.62": {
    "dataType": "CE",
    "longName": "Guarantor's Relationship to Insured",
    "hl7Table": "HL70063"
  },
  "IVT.5": {
    "dataType": "ST",
    "longName": "Source Location Name",
    "hl7Table": ""
  },
  "ACC.10": {
    "dataType": "ID",
    "longName": "Police Notified Indicator",
    "hl7Table": "HL70136"
  },
  "PV2.23": {
    "dataType": "XON",
    "longName": "Clinic Organization Name",
    "hl7Table": ""
  },
  "PR1.11": {"dataType": "XCN", "longName": "Surgeon", "hl7Table": "HL70010"},
  "PEO.3": {
    "dataType": "TS",
    "longName": "Event Onset Date/Time",
    "hl7Table": ""
  },
  "PRA.5": {"dataType": "SPD", "longName": "Specialty", "hl7Table": "HL70337"},
  "PID.31": {
    "dataType": "ID",
    "longName": "Identity Unknown Indicator",
    "hl7Table": "HL70136"
  },
  "ISD.1": {
    "dataType": "NM",
    "longName": "Reference Interaction Number (unique identifier)",
    "hl7Table": ""
  },
  "RXG.10": {
    "dataType": "ID",
    "longName": "Substitution Status",
    "hl7Table": "HL70167"
  },
  "SAC.24": {"dataType": "CE", "longName": "Volume Units", "hl7Table": ""},
  "OM1.37": {
    "dataType": "TX",
    "longName": "Patient Preparation",
    "hl7Table": ""
  },
  "CER.27": {"dataType": "TS", "longName": "Expiration Date", "hl7Table": ""},
  "ABS.3": {
    "dataType": "CE",
    "longName": "Severity of Illness Code",
    "hl7Table": "HL70421"
  },
  "RQD.9": {"dataType": "CE", "longName": "Deliver To ID", "hl7Table": ""},
  "TXA.22": {
    "dataType": "PPN",
    "longName": "Authentication Person, Time Stamp",
    "hl7Table": ""
  },
  "PV1.33": {
    "dataType": "NM",
    "longName": "Bad Debt Recovery Amount",
    "hl7Table": ""
  },
  "IN3.3": {"dataType": "XCN", "longName": "Certified By", "hl7Table": ""},
  "OBX.16": {
    "dataType": "XCN",
    "longName": "Responsible Observer",
    "hl7Table": ""
  },
  "AUT.6": {
    "dataType": "EI",
    "longName": "Authorization Identifier",
    "hl7Table": ""
  },
  "RXA.6": {
    "dataType": "NM",
    "longName": "Administered Amount",
    "hl7Table": ""
  },
  "IN2.35": {
    "dataType": "IS",
    "longName": "Living Arrangement",
    "hl7Table": "HL70220"
  },
  "OM1.3": {
    "dataType": "ID",
    "longName": "Permitted Data Types",
    "hl7Table": "HL70125"
  },
  "STF.10": {"dataType": "XTN", "longName": "Phone", "hl7Table": ""},
  "PDA.3": {
    "dataType": "ID",
    "longName": "Death Certified Indicator",
    "hl7Table": "HL70136"
  },
  "UB1.5": {
    "dataType": "NM",
    "longName": "Blood Not Replaced-Pints(42)",
    "hl7Table": ""
  },
  "FAC.5": {"dataType": "XCN", "longName": "Contact Person", "hl7Table": ""},
  "NSC.4": {
    "dataType": "HD",
    "longName": "Current Application",
    "hl7Table": ""
  },
  "VAR.5": {
    "dataType": "CE",
    "longName": "Variance Classification",
    "hl7Table": ""
  },
  "SAC.8": {
    "dataType": "CE",
    "longName": "Container Status",
    "hl7Table": "HL70370"
  },
  "GT1.49": {"dataType": "ST", "longName": "Job Title", "hl7Table": ""},
  "LOC.1": {
    "dataType": "PL",
    "longName": "Primary Key Value - LOC",
    "hl7Table": ""
  },
  "ORC.31": {
    "dataType": "CWE",
    "longName": "Parent Universal Service Identifier",
    "hl7Table": ""
  },
  "IN3.18": {
    "dataType": "CE",
    "longName": "Certification Agency",
    "hl7Table": "HL70346"
  },
  "IN1.25": {
    "dataType": "ID",
    "longName": "Report Of Eligibility Flag",
    "hl7Table": "HL70136"
  },
  "RXO.27": {
    "dataType": "ID",
    "longName": "Pharmacy Order Type",
    "hl7Table": "HL70480"
  },
  "RMI.1": {
    "dataType": "CE",
    "longName": "Risk Management Incident Code",
    "hl7Table": "HL70427"
  },
  "IVT.23": {
    "dataType": "NM",
    "longName": "Recommended Maximum Days Inventory",
    "hl7Table": ""
  },
  "OBX.3": {
    "dataType": "CE",
    "longName": "Observation Identifier",
    "hl7Table": ""
  },
  "ITM.6": {
    "dataType": "CNE",
    "longName": "Subject to Expiration Indicator",
    "hl7Table": "HL70532"
  },
  "APR.3": {
    "dataType": "SCV",
    "longName": "Location Selection Criteria",
    "hl7Table": "HL70294"
  },
  "PR1.8": {
    "dataType": "XCN",
    "longName": "Anesthesiologist",
    "hl7Table": "HL70010"
  },
  "INV.6": {
    "dataType": "CE",
    "longName": "Position on Carrier",
    "hl7Table": ""
  },
  "PV1.13": {
    "dataType": "IS",
    "longName": "Re-admission Indicator",
    "hl7Table": "HL70092"
  },
  "CON.11": {
    "dataType": "CNE",
    "longName": "Consent Status",
    "hl7Table": "HL70498"
  },
  "FT1.5": {
    "dataType": "TS",
    "longName": "Transaction Posting Date",
    "hl7Table": ""
  },
  "MRG.7": {
    "dataType": "XPN",
    "longName": "Prior Patient Name",
    "hl7Table": ""
  },
  "CSP.1": {
    "dataType": "CE",
    "longName": "Study Phase Identifier",
    "hl7Table": ""
  },
  "OM1.17": {
    "dataType": "XTN",
    "longName": "Telephone Number of Section",
    "hl7Table": ""
  },
  "GT1.5": {"dataType": "XAD", "longName": "Guarantor Address", "hl7Table": ""},
  "IN1.52": {
    "dataType": "ST",
    "longName": "Insured's Birth Place",
    "hl7Table": ""
  },
  "URS.1": {
    "dataType": "ST",
    "longName": "R/U Where Subject Definition",
    "hl7Table": ""
  },
  "SPM.7": {
    "dataType": "CWE",
    "longName": "Specimen Collection Method",
    "hl7Table": "HL70488"
  },
  "RCP.1": {
    "dataType": "ID",
    "longName": "Query Priority",
    "hl7Table": "HL70091"
  },
  "PID.11": {"dataType": "XAD", "longName": "Patient Address", "hl7Table": ""},
  "UB2.17": {
    "dataType": "NM",
    "longName": "Special Visit Count",
    "hl7Table": ""
  },
  "RXD.20": {
    "dataType": "CE",
    "longName": "Substance Manufacturer Name",
    "hl7Table": "HL70227"
  },
  "EQU.2": {"dataType": "TS", "longName": "Event Date/Time", "hl7Table": ""},
  "IN2.42": {
    "dataType": "CE",
    "longName": "Ethnic Group",
    "hl7Table": "HL70189"
  },
  "AIL.6": {"dataType": "TS", "longName": "Start Date/Time", "hl7Table": ""},
  "GOL.4": {"dataType": "EI", "longName": "Goal Instance ID", "hl7Table": ""},
  "ROL.9": {"dataType": "CE", "longName": "Provider Type", "hl7Table": ""},
  "PV1.44": {"dataType": "TS", "longName": "Admit Date/Time", "hl7Table": ""},
  "ORC.9": {
    "dataType": "TS",
    "longName": "Date/Time of Transaction",
    "hl7Table": ""
  },
  "EVN.3": {
    "dataType": "TS",
    "longName": "Date/Time Planned Event",
    "hl7Table": ""
  },
  "PES.8": {"dataType": "FT", "longName": "Sender Comment", "hl7Table": ""},
  "RXA.19": {"dataType": "CE", "longName": "Indication", "hl7Table": ""},
  "ORC.11": {"dataType": "XCN", "longName": "Verified By", "hl7Table": ""},
  "FT1.22": {"dataType": "CP", "longName": "Unit Cost", "hl7Table": ""},
  "OM1.40": {
    "dataType": "ST",
    "longName": "Service/Test/Observation Performance Schedule",
    "hl7Table": ""
  },
  "NK1.20": {
    "dataType": "CE",
    "longName": "Primary Language",
    "hl7Table": "HL70296"
  },
  "LCC.2": {
    "dataType": "CE",
    "longName": "Location Department",
    "hl7Table": "HL70264"
  },
  "AIS.4": {"dataType": "TS", "longName": "Start Date/Time", "hl7Table": ""},
  "IN2.15": {
    "dataType": "IS",
    "longName": "Military Rank/Grade",
    "hl7Table": "HL70141"
  },
  "STF.30": {
    "dataType": "CE",
    "longName": "Citizenship",
    "hl7Table": "HL70171"
  },
  "FHS.2": {
    "dataType": "ST",
    "longName": "File Encoding Characters",
    "hl7Table": ""
  },
  "IIM.7": {
    "dataType": "TS",
    "longName": "Inventory Received Date",
    "hl7Table": ""
  },
  "OBR.9": {"dataType": "CQ", "longName": "Collection Volume", "hl7Table": ""},
  "PRC.8": {"dataType": "NM", "longName": "Maximum Quantity", "hl7Table": ""},
  "PV1.52": {
    "dataType": "XCN",
    "longName": "Other Healthcare Provider",
    "hl7Table": "HL70010"
  },
  "LDP.4": {
    "dataType": "CE",
    "longName": "Specialty Type",
    "hl7Table": "HL70265"
  },
  "EDU.2": {
    "dataType": "IS",
    "longName": "Academic Degree",
    "hl7Table": "HL70360"
  },
  "OM7.9": {
    "dataType": "CE",
    "longName": "Test/Service Default Duration Units",
    "hl7Table": "HL79999"
  },
  "NK1.36": {"dataType": "IS", "longName": "Handicap", "hl7Table": "HL70295"},
  "IVT.15": {
    "dataType": "CNE",
    "longName": "Stocked Item Indicator",
    "hl7Table": "HL70532"
  },
  "ERQ.3": {
    "dataType": "QIP",
    "longName": "Input Parameter List",
    "hl7Table": ""
  },
  "RXO.11": {
    "dataType": "NM",
    "longName": "Requested Dispense Amount",
    "hl7Table": ""
  },
  "IN1.13": {
    "dataType": "DT",
    "longName": "Plan Expiration Date",
    "hl7Table": ""
  },
  "CDM.5": {
    "dataType": "IS",
    "longName": "Description Override Indicator",
    "hl7Table": "HL70268"
  },
  "BPO.5": {"dataType": "NM", "longName": "BP Amount", "hl7Table": ""},
  "INV.14": {
    "dataType": "TQ",
    "longName": "On Board Stability Duration",
    "hl7Table": ""
  },
  "PV2.42": {
    "dataType": "CE",
    "longName": "Patient Condition Code",
    "hl7Table": "HL70434"
  },
  "PEO.11": {
    "dataType": "ID",
    "longName": "Event Outcome",
    "hl7Table": "HL70240"
  },
  "BHS.11": {"dataType": "ST", "longName": "Batch Control ID", "hl7Table": ""},
  "STF.26": {
    "dataType": "DT",
    "longName": "Date Next DMV Review",
    "hl7Table": ""
  },
  "IPC.9": {"dataType": "ST", "longName": "Scheduled AE Title", "hl7Table": ""},
  "DRG.2": {
    "dataType": "TS",
    "longName": "DRG Assigned Date/Time",
    "hl7Table": ""
  },
  "OBX.20": {"dataType": "CWE", "longName": "Observation Site", "hl7Table": ""},
  "TXA.14": {
    "dataType": "EI",
    "longName": "Placer Order Number",
    "hl7Table": ""
  },
  "CSR.15": {
    "dataType": "TS",
    "longName": "Date/time Ended Study",
    "hl7Table": ""
  },
  "PSH.11": {
    "dataType": "ID",
    "longName": "Quantity in Use Method",
    "hl7Table": "HL70329"
  },
  "CER.11": {
    "dataType": "CWE",
    "longName": "Certificate Domain",
    "hl7Table": ""
  },
  "IN1.44": {
    "dataType": "XAD",
    "longName": "Insured's Employer's Address",
    "hl7Table": ""
  },
  "VND.1": {"dataType": "SI", "longName": "Set Id", "hl7Table": ""},
  "MSH.3": {
    "dataType": "HD",
    "longName": "Sending Application",
    "hl7Table": "HL70361"
  },
  "SAC.12": {
    "dataType": "CE",
    "longName": "Tray Type - SAC",
    "hl7Table": "HL70379"
  },
  "UB1.11": {
    "dataType": "NM",
    "longName": "Number Of Grace Days (90)",
    "hl7Table": ""
  },
  "RXG.26": {
    "dataType": "ID",
    "longName": "Pharmacy Order Type",
    "hl7Table": "HL70480"
  },
  "URD.4": {
    "dataType": "CE",
    "longName": "R/U What Subject Definition",
    "hl7Table": "HL70048"
  },
  "TCD.6": {
    "dataType": "ID",
    "longName": "Automatic Repeat Allowed",
    "hl7Table": "HL70136"
  },
  "EQP.1": {"dataType": "CE", "longName": "Event type", "hl7Table": "HL70450"},
  "GT1.28": {
    "dataType": "NM",
    "longName": "Guarantor Household Size",
    "hl7Table": ""
  },
  "PV2.15": {
    "dataType": "ID",
    "longName": "Employment Illness Related Indicator",
    "hl7Table": "HL70136"
  },
  "BTX.2": {"dataType": "EI", "longName": "BC Donation ID", "hl7Table": ""},
  "IN2.54": {
    "dataType": "IS",
    "longName": "Insured's Contact Person Reason",
    "hl7Table": "HL70222"
  },
  "PV2.3": {"dataType": "CE", "longName": "Admit Reason", "hl7Table": ""},
  "ITM.29": {
    "dataType": "CWE",
    "longName": "Special Handling Code",
    "hl7Table": "HL70376"
  },
  "SPM.23": {
    "dataType": "CWE",
    "longName": "Specimen Appropriateness",
    "hl7Table": "HL70492"
  },
  "RXA.23": {
    "dataType": "NM",
    "longName": "Administered Drug Strength Volume",
    "hl7Table": ""
  },
  "TCC.4": {
    "dataType": "SN",
    "longName": "Auto-Dilution Factor Default",
    "hl7Table": ""
  },
  "CM0.10": {
    "dataType": "XTN",
    "longName": "Contact's Telephone Number",
    "hl7Table": ""
  },
  "FT1.18": {
    "dataType": "IS",
    "longName": "Patient Type",
    "hl7Table": "HL70018"
  },
  "AIG.4": {"dataType": "CE", "longName": "Resource Type", "hl7Table": ""},
  "ACC.9": {"dataType": "ST", "longName": "Brought In By", "hl7Table": ""},
  "PCR.9": {
    "dataType": "IS",
    "longName": "Single Use Device",
    "hl7Table": "HL70244"
  },
  "DG1.20": {
    "dataType": "EI",
    "longName": "Diagnosis Identifier",
    "hl7Table": ""
  },
  "QID.2": {
    "dataType": "CE",
    "longName": "Message Query Name",
    "hl7Table": "HL70471"
  },
  "PID.2": {"dataType": "CX", "longName": "Patient ID", "hl7Table": ""},
  "CTD.5": {
    "dataType": "XTN",
    "longName": "Contact Communication Information",
    "hl7Table": ""
  },
  "TQ2.9": {
    "dataType": "NM",
    "longName": "Cyclic Group Maximum Number of Repeats",
    "hl7Table": ""
  },
  "LRL.5": {
    "dataType": "XON",
    "longName": "Organizational Location Relationship Value",
    "hl7Table": ""
  },
  "OM4.14": {
    "dataType": "CQ",
    "longName": "Specimen Retention Time",
    "hl7Table": ""
  },
  "CM2.1": {"dataType": "SI", "longName": "Set ID - CM2", "hl7Table": ""},
  "GOL.13": {
    "dataType": "TS",
    "longName": "Next Goal Review Date/Time",
    "hl7Table": ""
  },
  "GT1.53": {"dataType": "IS", "longName": "Job Status", "hl7Table": "HL70311"},
  "SCH.10": {
    "dataType": "CE",
    "longName": "Appointment Duration Units",
    "hl7Table": ""
  },
  "ERR.6": {
    "dataType": "ST",
    "longName": "Application Error Parameter",
    "hl7Table": ""
  },
  "RXD.9": {"dataType": "ST", "longName": "Dispense Notes", "hl7Table": ""},
  "GP2.2": {
    "dataType": "NM",
    "longName": "Number of Service Units",
    "hl7Table": ""
  },
  "RXE.37": {
    "dataType": "CWE",
    "longName": "Pharmaceutical Substance Alternative",
    "hl7Table": ""
  },
  "MSH.12": {"dataType": "VID", "longName": "Version ID", "hl7Table": ""},
  "ECD.5": {"dataType": "TX", "longName": "Parameters", "hl7Table": ""},
  "PV1.29": {
    "dataType": "IS",
    "longName": "Transfer to Bad Debt Code",
    "hl7Table": "HL70110"
  },
  "SFT.5": {
    "dataType": "TX",
    "longName": "Software Product Information",
    "hl7Table": ""
  },
  "CTI.1": {"dataType": "EI", "longName": "Sponsor Study ID", "hl7Table": ""},
  "PV1.6": {
    "dataType": "PL",
    "longName": "Prior Patient Location",
    "hl7Table": ""
  },
  "DG1.9": {
    "dataType": "ID",
    "longName": "DRG Approval Indicator",
    "hl7Table": "HL70136"
  },
  "LDP.12": {
    "dataType": "CE",
    "longName": "Location Cost Center",
    "hl7Table": "HL70462"
  },
  "CER.6": {
    "dataType": "ED",
    "longName": "Signature of Issuing Authority",
    "hl7Table": ""
  },
  "LAN.1": {"dataType": "SI", "longName": "Set ID - LAN", "hl7Table": ""},
  "PV2.39": {
    "dataType": "CE",
    "longName": "Recreational Drug Use Code",
    "hl7Table": "HL70431"
  },
  "ARQ.21": {
    "dataType": "PL",
    "longName": "Entered By Location",
    "hl7Table": ""
  },
  "PD1.2": {
    "dataType": "IS",
    "longName": "Living Arrangement",
    "hl7Table": "HL70220"
  },
  "FAC.12": {
    "dataType": "XTN",
    "longName": "Signature Authority Telecommunication",
    "hl7Table": ""
  },
  "SAC.28": {
    "dataType": "CE",
    "longName": "Specimen Component",
    "hl7Table": ""
  },
  "RXE.21": {
    "dataType": "CE",
    "longName": "Pharmacy/Treatment Supplier's Special Dispensing Instructions",
    "hl7Table": ""
  },
  "SCH.1": {
    "dataType": "EI",
    "longName": "Placer Appointment ID",
    "hl7Table": ""
  },
  "STF.7": {
    "dataType": "ID",
    "longName": "Active/Inactive Flag",
    "hl7Table": "HL70183"
  },
  "OBR.47": {
    "dataType": "CE",
    "longName": "Filler Supplemental Service Information",
    "hl7Table": "HL70411"
  },
  "RQD.5": {
    "dataType": "NM",
    "longName": "Requisition Quantity",
    "hl7Table": ""
  },
  "BTX.12": {
    "dataType": "ID",
    "longName": "BP Message Status",
    "hl7Table": "HL70511"
  },
  "IVT.9": {"dataType": "CWE", "longName": "Issue Packaging", "hl7Table": ""},
  "PD1.19": {
    "dataType": "IS",
    "longName": "Military Branch",
    "hl7Table": "HL70140"
  },
  "ITM.13": {
    "dataType": "CP",
    "longName": "Transaction Amount - Unit",
    "hl7Table": ""
  },
  "SPM.19": {
    "dataType": "TS",
    "longName": "Specimen Expiration Date/Time",
    "hl7Table": ""
  },
  "PRA.9": {"dataType": "CE", "longName": "Institution", "hl7Table": "HL70537"},
  "GT1.12": {"dataType": "ST", "longName": "Guarantor SSN", "hl7Table": ""},
  "OM7.12": {
    "dataType": "CE",
    "longName": "Consent Identifier",
    "hl7Table": "HL70413"
  },
  "AIP.1": {"dataType": "SI", "longName": "Set ID - AIP", "hl7Table": ""},
  "IN1.29": {
    "dataType": "TS",
    "longName": "Verification Date/Time",
    "hl7Table": ""
  },
  "IN3.14": {
    "dataType": "XCN",
    "longName": "Physician Reviewer",
    "hl7Table": "HL70010"
  },
  "TQ1.11": {"dataType": "TX", "longName": "Text instruction", "hl7Table": ""},
  "PR1.4": {
    "dataType": "ST",
    "longName": "Procedure Description",
    "hl7Table": ""
  },
  "OBR.10": {
    "dataType": "XCN",
    "longName": "Collector Identifier",
    "hl7Table": ""
  },
  "PRB.21": {
    "dataType": "CE",
    "longName": "Individual Awareness of Problem",
    "hl7Table": ""
  },
  "UB1.9": {
    "dataType": "NM",
    "longName": "Non Covered Days - (24)",
    "hl7Table": ""
  },
  "PCR.21": {
    "dataType": "ID",
    "longName": "Action Taken In Response To The Event",
    "hl7Table": "HL70251"
  },
  "IN2.39": {"dataType": "CE", "longName": "Religion", "hl7Table": "HL70006"},
  "GT1.45": {
    "dataType": "XPN",
    "longName": "Contact Person's Name",
    "hl7Table": ""
  },
  "SAC.4": {
    "dataType": "EI",
    "longName": "Primary (parent) Container Identifier",
    "hl7Table": ""
  },
  "AIG.12": {"dataType": "CE", "longName": "Duration Units", "hl7Table": ""},
  "NSC.8": {"dataType": "HD", "longName": "New Application", "hl7Table": ""},
  "FAC.9": {
    "dataType": "XCN",
    "longName": "Signature Authority",
    "hl7Table": ""
  },
  "BPO.10": {
    "dataType": "TS",
    "longName": "BP Requested Dispense Date/Time",
    "hl7Table": ""
  },
  "RXO.20": {"dataType": "CE", "longName": "Indication", "hl7Table": ""},
  "OM7.19": {
    "dataType": "TS",
    "longName": "Effective Date/Time of Change",
    "hl7Table": ""
  },
  "IVT.24": {
    "dataType": "NM",
    "longName": "Recommended Order Point",
    "hl7Table": ""
  },
  "IN1.22": {
    "dataType": "ST",
    "longName": "Coord Of Ben. Priority",
    "hl7Table": ""
  },
  "BHS.7": {
    "dataType": "TS",
    "longName": "Batch Creation Date/Time",
    "hl7Table": ""
  },
  "OBX.4": {"dataType": "ST", "longName": "Observation Sub-ID", "hl7Table": ""},
  "ITM.1": {"dataType": "EI", "longName": "Item Identifier", "hl7Table": ""},
  "APR.4": {
    "dataType": "NM",
    "longName": "Slot Spacing Criteria",
    "hl7Table": ""
  },
  "PEO.20": {
    "dataType": "XAD",
    "longName": "Primary Observer Address",
    "hl7Table": ""
  },
  "UB1.2": {
    "dataType": "NM",
    "longName": "Blood Deductible  (43)",
    "hl7Table": ""
  },
  "PDA.4": {
    "dataType": "TS",
    "longName": "Death Certificate Signed Date/Time",
    "hl7Table": ""
  },
  "RXA.1": {
    "dataType": "NM",
    "longName": "Give Sub-ID Counter",
    "hl7Table": ""
  },
  "STF.17": {
    "dataType": "CE",
    "longName": "Marital Status",
    "hl7Table": "HL70002"
  },
  "IN2.32": {
    "dataType": "IS",
    "longName": "Ambulatory Status",
    "hl7Table": "HL70009"
  },
  "OM1.4": {
    "dataType": "ID",
    "longName": "Specimen Required",
    "hl7Table": "HL70136"
  },
  "LOC.6": {"dataType": "XTN", "longName": "Location Phone", "hl7Table": ""},
  "FAC.2": {
    "dataType": "ID",
    "longName": "Facility Type",
    "hl7Table": "HL70331"
  },
  "VAR.2": {
    "dataType": "TS",
    "longName": "Documented Date/Time",
    "hl7Table": ""
  },
  "NSC.3": {"dataType": "ST", "longName": "Current Fileserver", "hl7Table": ""},
  "CER.20": {
    "dataType": "CWE",
    "longName": "Jurisdiction State/Province",
    "hl7Table": "HL70347"
  },
  "PD1.9": {
    "dataType": "ID",
    "longName": "Separate Bill",
    "hl7Table": "HL70136"
  },
  "OM1.30": {
    "dataType": "CWE",
    "longName": "Confidentiality Code",
    "hl7Table": "HL70177"
  },
  "SAC.23": {
    "dataType": "NM",
    "longName": "Initial Specimen Volume",
    "hl7Table": ""
  },
  "UB1.20": {"dataType": "ST", "longName": "UB-82 Locator 2", "hl7Table": ""},
  "RXG.17": {"dataType": "NM", "longName": "Give Strength", "hl7Table": ""},
  "IN3.4": {
    "dataType": "ID",
    "longName": "Certification Required",
    "hl7Table": "HL70136"
  },
  "AUT.1": {
    "dataType": "CE",
    "longName": "Authorizing Payor, Plan ID",
    "hl7Table": "HL70072"
  },
  "OBX.11": {
    "dataType": "ID",
    "longName": "Observation Result Status",
    "hl7Table": "HL70085"
  },
  "BTX.19": {
    "dataType": "CWE",
    "longName": "BP Transfusion Interrupted Reason",
    "hl7Table": "HL70515"
  },
  "PV1.34": {
    "dataType": "IS",
    "longName": "Delete Account Indicator",
    "hl7Table": "HL70111"
  },
  "ABS.4": {
    "dataType": "TS",
    "longName": "Date/Time of Attestation",
    "hl7Table": ""
  },
  "IN2.65": {
    "dataType": "CE",
    "longName": "Military Handicapped Program",
    "hl7Table": "HL70343"
  },
  "RXE.6": {"dataType": "CE", "longName": "Give Dosage Form", "hl7Table": ""},
  "IVT.2": {
    "dataType": "EI",
    "longName": "Inventory Location Identifier",
    "hl7Table": ""
  },
  "OM5.3": {
    "dataType": "ST",
    "longName": "Observation ID Suffixes",
    "hl7Table": ""
  },
  "ITM.18": {
    "dataType": "CWE",
    "longName": "Ruling Act",
    "hl7Table": "HL70793"
  },
  "SPM.12": {
    "dataType": "CQ",
    "longName": "Specimen Collection Amount",
    "hl7Table": ""
  },
  "PD1.12": {
    "dataType": "ID",
    "longName": "Protection Indicator",
    "hl7Table": "HL70136"
  },
  "IAM.15": {
    "dataType": "CE",
    "longName": "Relationship to Patient Code",
    "hl7Table": "HL70063"
  },
  "PRA.2": {
    "dataType": "CE",
    "longName": "Practitioner Group",
    "hl7Table": "HL70358"
  },
  "PEO.4": {
    "dataType": "TS",
    "longName": "Event Exacerbation Date/Time",
    "hl7Table": ""
  },
  "GT1.19": {
    "dataType": "CX",
    "longName": "Guarantor Employee ID Number",
    "hl7Table": ""
  },
  "PR1.16": {
    "dataType": "CE",
    "longName": "Procedure Code Modifier",
    "hl7Table": "HL70340"
  },
  "PID.36": {"dataType": "CE", "longName": "Breed Code", "hl7Table": "HL70447"},
  "PV2.24": {
    "dataType": "IS",
    "longName": "Patient Status Code",
    "hl7Table": "HL70216"
  },
  "SAC.35": {
    "dataType": "CE",
    "longName": "Lipemia Index Units",
    "hl7Table": ""
  },
  "OM1.26": {
    "dataType": "ID",
    "longName": "Reporting Priority",
    "hl7Table": "HL70169"
  },
  "MSH.19": {
    "dataType": "CE",
    "longName": "Principal Language Of Message",
    "hl7Table": ""
  },
  "PV1.22": {
    "dataType": "IS",
    "longName": "Courtesy Code",
    "hl7Table": "HL70045"
  },
  "CON.20": {
    "dataType": "CWE",
    "longName": "Consent Bypass Reason",
    "hl7Table": "HL70499"
  },
  "DG1.2": {
    "dataType": "ID",
    "longName": "Diagnosis Coding Method",
    "hl7Table": "HL70053"
  },
  "PRD.1": {
    "dataType": "CE",
    "longName": "Provider Role",
    "hl7Table": "HL70286"
  },
  "RXR.3": {
    "dataType": "CE",
    "longName": "Administration Device",
    "hl7Table": "HL70164"
  },
  "IAM.1": {"dataType": "SI", "longName": "Set ID - IAM", "hl7Table": ""},
  "RXD.11": {
    "dataType": "ID",
    "longName": "Substitution Status",
    "hl7Table": "HL70167"
  },
  "QRD.1": {"dataType": "TS", "longName": "Query Date/Time", "hl7Table": ""},
  "IIM.10": {
    "dataType": "MO",
    "longName": "Inventory Received Item Cost",
    "hl7Table": ""
  },
  "PV2.32": {
    "dataType": "ID",
    "longName": "Billing Media Code",
    "hl7Table": "HL70136"
  },
  "PID.20": {
    "dataType": "DLN",
    "longName": "Driver's License Number - Patient",
    "hl7Table": ""
  },
  "QAK.1": {"dataType": "ST", "longName": "Query Tag", "hl7Table": ""},
  "OVR.3": {"dataType": "TX", "longName": "Override Comments", "hl7Table": ""},
  "IN1.34": {
    "dataType": "NM",
    "longName": "Delay Before L.R. Day",
    "hl7Table": ""
  },
  "ACC.2": {
    "dataType": "CE",
    "longName": "Accident Code",
    "hl7Table": "HL70050"
  },
  "ORC.20": {
    "dataType": "CE",
    "longName": "Advanced Beneficiary Notice Code",
    "hl7Table": "HL70339"
  },
  "FT1.13": {
    "dataType": "CE",
    "longName": "Department Code",
    "hl7Table": "HL70049"
  },
  "NK1.11": {
    "dataType": "JCC",
    "longName": "Next of Kin / Associated Parties Job Code/Class",
    "hl7Table": "HL70327"
  },
  "PCR.2": {
    "dataType": "IS",
    "longName": "Generic Product",
    "hl7Table": "HL70249"
  },
  "PID.9": {"dataType": "XPN", "longName": "Patient Alias", "hl7Table": ""},
  "TQ2.2": {
    "dataType": "ID",
    "longName": "Sequence/Results Flag",
    "hl7Table": "HL70503"
  },
  "IN2.24": {
    "dataType": "IS",
    "longName": "Non-Covered Insurance Code",
    "hl7Table": "HL70143"
  },
  "ARQ.6": {
    "dataType": "CE",
    "longName": "Request Event Reason",
    "hl7Table": ""
  },
  "PDC.15": {
    "dataType": "TS",
    "longName": "Date Last Marketed",
    "hl7Table": ""
  },
  "GOL.18": {
    "dataType": "CE",
    "longName": "Goal Life Cycle Status",
    "hl7Table": ""
  },
  "PRC.11": {
    "dataType": "TS",
    "longName": "Effective Start Date",
    "hl7Table": ""
  },
  "NDS.3": {
    "dataType": "CE",
    "longName": "Notification Alert Severity",
    "hl7Table": "HL70367"
  },
  "RXD.2": {
    "dataType": "CE",
    "longName": "Dispense/Give Code",
    "hl7Table": "HL70292"
  },
  "GP2.9": {
    "dataType": "IS",
    "longName": "Payment Adjustment Code",
    "hl7Table": "HL70468"
  },
  "ODS.3": {
    "dataType": "CE",
    "longName": "Diet, Supplement, or Preference Code",
    "hl7Table": ""
  },
  "OM4.7": {"dataType": "CWE", "longName": "Additive", "hl7Table": "HL70371"},
  "NST.6": {
    "dataType": "NM",
    "longName": "Receive Character Count",
    "hl7Table": ""
  },
  "RF1.7": {"dataType": "TS", "longName": "Effective Date", "hl7Table": ""},
  "DRG.9": {
    "dataType": "CP",
    "longName": "Outlier Reimbursement",
    "hl7Table": ""
  },
  "ARQ.10": {
    "dataType": "CE",
    "longName": "Appointment Duration Units",
    "hl7Table": ""
  },
  "PDC.5": {"dataType": "CE", "longName": "Generic Name", "hl7Table": ""},
  "SAC.19": {"dataType": "NM", "longName": "Bottom Delta", "hl7Table": ""},
  "RXE.10": {"dataType": "NM", "longName": "Dispense Amount", "hl7Table": ""},
  "OM3.5": {
    "dataType": "CE",
    "longName": "Abnormal Text/Codes for Categorical Observations",
    "hl7Table": "HL79999"
  },
  "ODT.1": {"dataType": "CE", "longName": "Tray Type", "hl7Table": "HL70160"},
  "MSH.8": {"dataType": "ST", "longName": "Security", "hl7Table": ""},
  "AFF.2": {
    "dataType": "XON",
    "longName": "Professional Organization",
    "hl7Table": ""
  },
  "GT1.23": {
    "dataType": "CE",
    "longName": "Guarantor Credit Rating Code",
    "hl7Table": "HL70341"
  },
  "NTE.1": {"dataType": "SI", "longName": "Set ID - NTE", "hl7Table": ""},
  "BTX.9": {"dataType": "NM", "longName": "BP Amount", "hl7Table": ""},
  "GP2.11": {
    "dataType": "CP",
    "longName": "Expected CMS Payment Amount",
    "hl7Table": ""
  },
  "PV2.8": {
    "dataType": "TS",
    "longName": "Expected Admit Date/Time",
    "hl7Table": ""
  },
  "ITM.22": {
    "dataType": "CNE",
    "longName": "Taxable Item Indicator",
    "hl7Table": "HL70532"
  },
  "SPM.28": {
    "dataType": "CWE",
    "longName": "Container Condition",
    "hl7Table": "HL70544"
  },
  "PRC.3": {"dataType": "CE", "longName": "Department", "hl7Table": "HL70184"},
  "TQ1.7": {"dataType": "TS", "longName": "Start date/time", "hl7Table": ""},
  "EDU.9": {
    "dataType": "CWE",
    "longName": "Major Field of Study",
    "hl7Table": ""
  },
  "OBR.21": {"dataType": "ST", "longName": "Filler Field 2", "hl7Table": ""},
  "PRB.10": {
    "dataType": "CE",
    "longName": "Problem Classification",
    "hl7Table": ""
  },
  "OM7.23": {
    "dataType": "ID",
    "longName": "Special Order Indicator",
    "hl7Table": "HL70136"
  },
  "RXG.7": {"dataType": "CE", "longName": "Give Units", "hl7Table": ""},
  "OM7.2": {
    "dataType": "CE",
    "longName": "Universal Service Identifier",
    "hl7Table": ""
  },
  "IN1.18": {
    "dataType": "TS",
    "longName": "Insured's Date Of Birth",
    "hl7Table": ""
  },
  "IN3.25": {
    "dataType": "XCN",
    "longName": "Second Opinion Physician",
    "hl7Table": "HL70010"
  },
  "PV2.49": {
    "dataType": "IS",
    "longName": "Notify Clergy Code",
    "hl7Table": "HL70534"
  },
  "IN1.5": {
    "dataType": "XAD",
    "longName": "Insurance Company Address",
    "hl7Table": ""
  },
  "PCR.10": {
    "dataType": "CE",
    "longName": "Indication For Product Use",
    "hl7Table": ""
  },
  "IPC.2": {
    "dataType": "EI",
    "longName": "Requested Procedure ID",
    "hl7Table": ""
  },
  "ROL.2": {"dataType": "ID", "longName": "Action Code", "hl7Table": "HL70287"},
  "OBR.37": {
    "dataType": "NM",
    "longName": "Number of Sample Containers *",
    "hl7Table": ""
  },
  "OM2.1": {
    "dataType": "NM",
    "longName": "Sequence Number - Test/Observation Master File",
    "hl7Table": ""
  },
  "ORC.2": {
    "dataType": "EI",
    "longName": "Placer Order Number",
    "hl7Table": ""
  },
  "TXA.6": {
    "dataType": "TS",
    "longName": "Origination Date/Time",
    "hl7Table": ""
  },
  "PES.3": {"dataType": "XAD", "longName": "Sender Address", "hl7Table": ""},
  "UB2.7": {
    "dataType": "OCD",
    "longName": "Occurrence Code & Date (32-35)",
    "hl7Table": ""
  },
  "DB1.1": {"dataType": "SI", "longName": "Set ID - DB1", "hl7Table": ""},
  "RXA.12": {
    "dataType": "ST",
    "longName": "Administered Per (Time Unit)",
    "hl7Table": ""
  },
  "FT1.29": {"dataType": "CNE", "longName": "NDC Code", "hl7Table": "HL70549"},
  "DG1.11": {
    "dataType": "CE",
    "longName": "Outlier Type",
    "hl7Table": "HL70083"
  },
  "BLC.2": {"dataType": "CQ", "longName": "Blood Amount", "hl7Table": ""},
  "PTH.4": {
    "dataType": "TS",
    "longName": "Pathway Established Date/Time",
    "hl7Table": ""
  },
  "SCH.21": {
    "dataType": "XTN",
    "longName": "Entered By Phone Number",
    "hl7Table": ""
  },
  "OBR.2": {
    "dataType": "EI",
    "longName": "Placer Order Number",
    "hl7Table": ""
  },
  "FHS.9": {"dataType": "ST", "longName": "File Name/ID", "hl7Table": ""},
  "PV1.18": {
    "dataType": "IS",
    "longName": "Patient Type",
    "hl7Table": "HL70018"
  },
  "ORG.5": {
    "dataType": "CX",
    "longName": "Practitioner Org Unit Identifier",
    "hl7Table": ""
  },
  "AIL.12": {
    "dataType": "CE",
    "longName": "Filler Status Code",
    "hl7Table": "HL70278"
  },
  "CNS.2": {
    "dataType": "NM",
    "longName": "Ending Notification Reference Number",
    "hl7Table": ""
  },
  "PRB.7": {
    "dataType": "TS",
    "longName": "Problem Established Date/Time",
    "hl7Table": ""
  },
  "CDM.10": {"dataType": "NM", "longName": "Resource Load", "hl7Table": ""},
  "BPX.17": {"dataType": "EI", "longName": "BP Unique ID", "hl7Table": ""},
  "GT1.35": {
    "dataType": "CE",
    "longName": "Citizenship",
    "hl7Table": "HL70171"
  },
  "NK1.1": {"dataType": "SI", "longName": "Set ID - NK1", "hl7Table": ""},
  "ABS.14": {
    "dataType": "ID",
    "longName": "Stillborn Indicator",
    "hl7Table": "HL70136"
  },
  "IN2.49": {
    "dataType": "XPN",
    "longName": "Employer Contact Person Name",
    "hl7Table": ""
  },
  "OM1.8": {"dataType": "ST", "longName": "Other Names", "hl7Table": ""},
  "PDA.8": {
    "dataType": "XCN",
    "longName": "Autopsy Performed By",
    "hl7Table": ""
  },
  "PKG.7": {
    "dataType": "DTM",
    "longName": "Future Item Price Effective Date",
    "hl7Table": ""
  },
  "SAC.3": {
    "dataType": "EI",
    "longName": "Container Identifier",
    "hl7Table": ""
  },
  "GT1.42": {
    "dataType": "XPN",
    "longName": "Mother's Maiden Name",
    "hl7Table": ""
  },
  "IN3.13": {
    "dataType": "TS",
    "longName": "Non-Concur Effective Date/Time",
    "hl7Table": ""
  },
  "OM7.15": {
    "dataType": "NM",
    "longName": "Consent Interval Quantity",
    "hl7Table": ""
  },
  "AIP.6": {"dataType": "TS", "longName": "Start Date/Time", "hl7Table": ""},
  "OBR.17": {
    "dataType": "XTN",
    "longName": "Order Callback Phone Number",
    "hl7Table": ""
  },
  "OBX.8": {
    "dataType": "IS",
    "longName": "Abnormal Flags",
    "hl7Table": "HL70078"
  },
  "PR1.3": {
    "dataType": "CE",
    "longName": "Procedure Code",
    "hl7Table": "HL70088"
  },
  "IAM.19": {
    "dataType": "XON",
    "longName": "Statused by Organization",
    "hl7Table": ""
  },
  "ITM.14": {
    "dataType": "CNE",
    "longName": "Stocked Item Indicator",
    "hl7Table": "HL70532"
  },
  "IN2.69": {
    "dataType": "XON",
    "longName": "Insured Organization Name and ID",
    "hl7Table": ""
  },
  "PV2.28": {
    "dataType": "DT",
    "longName": "Signature on File Date",
    "hl7Table": ""
  },
  "DSP.1": {"dataType": "SI", "longName": "Set ID - DSP", "hl7Table": ""},
  "CSS.3": {
    "dataType": "CE",
    "longName": "Study Quality Control Codes",
    "hl7Table": ""
  },
  "GT1.15": {
    "dataType": "NM",
    "longName": "Guarantor Priority",
    "hl7Table": ""
  },
  "PEO.8": {
    "dataType": "ID",
    "longName": "Event Qualification",
    "hl7Table": "HL70237"
  },
  "RXE.26": {
    "dataType": "CE",
    "longName": "Give Strength Units",
    "hl7Table": ""
  },
  "PD1.5": {
    "dataType": "IS",
    "longName": "Student Indicator",
    "hl7Table": "HL70231"
  },
  "ABS.8": {"dataType": "XCN", "longName": "Abstracted By", "hl7Table": ""},
  "RQD.2": {
    "dataType": "CE",
    "longName": "Item Code - Internal",
    "hl7Table": ""
  },
  "PV1.38": {"dataType": "CE", "longName": "Diet Type", "hl7Table": "HL70114"},
  "BTX.15": {"dataType": "XCN", "longName": "BP Verifier", "hl7Table": ""},
  "SCH.6": {"dataType": "CE", "longName": "Event Reason", "hl7Table": ""},
  "OBR.40": {
    "dataType": "CE",
    "longName": "Transport Arrangement Responsibility",
    "hl7Table": ""
  },
  "IN3.8": {"dataType": "XCN", "longName": "Operator", "hl7Table": ""},
  "BPX.21": {
    "dataType": "XCN",
    "longName": "BP Dispensing Individual",
    "hl7Table": ""
  },
  "CER.1": {"dataType": "SI", "longName": "Set ID - CER", "hl7Table": ""},
  "SAC.39": {
    "dataType": "CE",
    "longName": "Fibrin Index Units",
    "hl7Table": ""
  },
  "RXE.30": {
    "dataType": "ID",
    "longName": "Dispense Package Method",
    "hl7Table": "HL70321"
  },
  "SFT.2": {
    "dataType": "ST",
    "longName": "Software Certified Version or Release Number",
    "hl7Table": ""
  },
  "PV1.1": {"dataType": "SI", "longName": "Set ID - PV1", "hl7Table": ""},
  "ECD.2": {
    "dataType": "CE",
    "longName": "Remote Control Command",
    "hl7Table": "HL70368"
  },
  "MSH.15": {
    "dataType": "ID",
    "longName": "Accept Acknowledgment Type",
    "hl7Table": "HL70155"
  },
  "OM4.13": {
    "dataType": "ID",
    "longName": "Specimen Priorities",
    "hl7Table": "HL70027"
  },
  "TQ2.10": {
    "dataType": "ID",
    "longName": "Special Service Request Relationship",
    "hl7Table": "HL70506"
  },
  "CSR.7": {
    "dataType": "XCN",
    "longName": "Person Performing Study Registration",
    "hl7Table": ""
  },
  "LRL.2": {
    "dataType": "ID",
    "longName": "Segment Action Code",
    "hl7Table": "HL70206"
  },
  "IN2.28": {
    "dataType": "RMC",
    "longName": "Room Coverage Type/Amount",
    "hl7Table": ""
  },
  "ERR.1": {
    "dataType": "ELD",
    "longName": "Error Code and Location",
    "hl7Table": ""
  },
  "SCH.17": {
    "dataType": "XTN",
    "longName": "Filler Contact Phone Number",
    "hl7Table": ""
  },
  "GP2.5": {
    "dataType": "IS",
    "longName": "Denial or Rejection Code",
    "hl7Table": "HL70460"
  },
  "GT1.54": {
    "dataType": "FC",
    "longName": "Guarantor Financial Class",
    "hl7Table": ""
  },
  "GOL.14": {
    "dataType": "TS",
    "longName": "Previous Goal Review Date/Time",
    "hl7Table": ""
  },
  "ECR.3": {
    "dataType": "TX",
    "longName": "Command Response Parameters",
    "hl7Table": ""
  },
  "RGS.1": {"dataType": "SI", "longName": "Set ID - RGS", "hl7Table": ""},
  "TCC.3": {"dataType": "SPS", "longName": "Specimen Source", "hl7Table": ""},
  "RXA.24": {
    "dataType": "CWE",
    "longName": "Administered Drug Strength Volume Units",
    "hl7Table": ""
  },
  "IN1.38": {
    "dataType": "CP",
    "longName": "Policy Limit - Amount",
    "hl7Table": ""
  },
  "AIG.3": {"dataType": "CE", "longName": "Resource ID", "hl7Table": ""},
  "PID.5": {"dataType": "XPN", "longName": "Patient Name", "hl7Table": ""},
  "CTD.2": {"dataType": "XPN", "longName": "Contact Name", "hl7Table": ""},
  "EQL.1": {"dataType": "ST", "longName": "Query Tag", "hl7Table": ""},
  "PV2.12": {"dataType": "ST", "longName": "Visit Description", "hl7Table": ""},
  "BTX.5": {
    "dataType": "CWE",
    "longName": "CP Commercial Product",
    "hl7Table": "HL70512"
  },
  "TCD.1": {
    "dataType": "CE",
    "longName": "Universal Service Identifier",
    "hl7Table": ""
  },
  "PR1.20": {
    "dataType": "ID",
    "longName": "Procedure Action Code",
    "hl7Table": "HL70206"
  },
  "SPM.24": {
    "dataType": "CWE",
    "longName": "Specimen Condition",
    "hl7Table": "HL70493"
  },
  "RXD.31": {
    "dataType": "XAD",
    "longName": "Dispense to Pharmacy Address",
    "hl7Table": ""
  },
  "PV2.4": {"dataType": "CE", "longName": "Transfer Reason", "hl7Table": ""},
  "IN2.53": {
    "dataType": "XTN",
    "longName": "Insured's Contact Person Phone Number",
    "hl7Table": ""
  },
  "CSR.12": {
    "dataType": "CE",
    "longName": "Randomized Study Arm",
    "hl7Table": ""
  },
  "TXA.13": {
    "dataType": "EI",
    "longName": "Parent Document Number",
    "hl7Table": ""
  },
  "DRG.5": {
    "dataType": "CE",
    "longName": "Outlier Type",
    "hl7Table": "HL70083"
  },
  "MSH.4": {
    "dataType": "HD",
    "longName": "Sending Facility",
    "hl7Table": "HL70362"
  },
  "RXG.21": {
    "dataType": "CE",
    "longName": "Substance Manufacturer Name",
    "hl7Table": "HL70227"
  },
  "URD.3": {
    "dataType": "XCN",
    "longName": "R/U Who Subject Definition",
    "hl7Table": ""
  },
  "UB1.16": {
    "dataType": "OCD",
    "longName": "Occurrence (28-32)",
    "hl7Table": ""
  },
  "SAC.15": {"dataType": "CE", "longName": "Location", "hl7Table": ""},
  "PDC.9": {"dataType": "CE", "longName": "Product Code", "hl7Table": ""},
  "IN1.43": {
    "dataType": "IS",
    "longName": "Insured's Administrative Sex",
    "hl7Table": "HL70001"
  },
  "CER.16": {
    "dataType": "CWE",
    "longName": "Authority Key Identifier",
    "hl7Table": ""
  },
  "BPO.2": {
    "dataType": "CWE",
    "longName": "BP Universal Service ID",
    "hl7Table": ""
  },
  "INV.13": {
    "dataType": "TS",
    "longName": "First Used Date/Time",
    "hl7Table": ""
  },
  "IN1.9": {"dataType": "XON", "longName": "Group Name", "hl7Table": ""},
  "PV2.45": {
    "dataType": "CE",
    "longName": "Advance Directive Code",
    "hl7Table": "HL70435"
  },
  "STF.21": {
    "dataType": "ID",
    "longName": "Additional Insured on Auto",
    "hl7Table": "HL70136"
  },
  "PEO.16": {
    "dataType": "FT",
    "longName": "Event Description From Practitioner",
    "hl7Table": ""
  },
  "LDP.3": {
    "dataType": "IS",
    "longName": "Location Service",
    "hl7Table": "HL70069"
  },
  "EDU.5": {
    "dataType": "DT",
    "longName": "Academic Degree Granted Date",
    "hl7Table": ""
  },
  "CM1.3": {
    "dataType": "ST",
    "longName": "Description of Study Phase",
    "hl7Table": ""
  },
  "IN1.14": {
    "dataType": "AUI",
    "longName": "Authorization Information",
    "hl7Table": ""
  },
  "CDM.2": {"dataType": "CE", "longName": "Charge Code Alias", "hl7Table": ""},
  "SAC.42": {
    "dataType": "CE",
    "longName": "Artificial Blood",
    "hl7Table": "HL70375"
  },
  "NK1.31": {
    "dataType": "XTN",
    "longName": "Contact Person's Telephone Number",
    "hl7Table": ""
  },
  "IVT.12": {
    "dataType": "CWE",
    "longName": "Transaction Code",
    "hl7Table": "HL70132"
  },
  "RXO.16": {
    "dataType": "ID",
    "longName": "Needs Human Review",
    "hl7Table": "HL70136"
  },
  "AIS.3": {
    "dataType": "CE",
    "longName": "Universal Service Identifier",
    "hl7Table": ""
  },
  "ILT.7": {
    "dataType": "MO",
    "longName": "Inventory Received Item Cost",
    "hl7Table": ""
  },
  "BPX.7": {
    "dataType": "CNE",
    "longName": "BC Donation Type / Intended Use",
    "hl7Table": ""
  },
  "FHS.5": {
    "dataType": "HD",
    "longName": "File Receiving Application",
    "hl7Table": ""
  },
  "SPR.2": {
    "dataType": "ID",
    "longName": "Query/Response Format Code",
    "hl7Table": "HL70106"
  },
  "STF.37": {
    "dataType": "ID",
    "longName": "Generic Classification Indicator",
    "hl7Table": "HL70136"
  },
  "IN2.12": {
    "dataType": "ST",
    "longName": "Military Organization",
    "hl7Table": ""
  },
  "PV1.43": {
    "dataType": "PL",
    "longName": "Prior Temporary Location",
    "hl7Table": ""
  },
  "EVN.4": {
    "dataType": "IS",
    "longName": "Event Reason Code",
    "hl7Table": "HL70062"
  },
  "GOL.3": {"dataType": "CE", "longName": "Goal ID", "hl7Table": ""},
  "NK1.27": {
    "dataType": "CE",
    "longName": "Nationality",
    "hl7Table": "HL70212"
  },
  "FT1.25": {
    "dataType": "CE",
    "longName": "Procedure Code",
    "hl7Table": "HL70088"
  },
  "ORC.16": {
    "dataType": "CE",
    "longName": "Order Control Code Reason",
    "hl7Table": ""
  },
  "OM1.47": {
    "dataType": "CE",
    "longName": "Modality Of Imaging Measurement",
    "hl7Table": "HL70259"
  },
  "GT1.39": {
    "dataType": "ID",
    "longName": "Protection Indicator",
    "hl7Table": "HL70136"
  },
  "RCP.6": {"dataType": "SRT", "longName": "Sort-by Field", "hl7Table": ""},
  "PID.16": {
    "dataType": "CE",
    "longName": "Marital Status",
    "hl7Table": "HL70002"
  },
  "IN2.45": {
    "dataType": "DT",
    "longName": "Employment Stop Date",
    "hl7Table": ""
  },
  "AIL.1": {"dataType": "SI", "longName": "Set ID - AIL", "hl7Table": ""},
  "RXD.27": {
    "dataType": "CE",
    "longName": "Packaging/Assembly Location",
    "hl7Table": ""
  },
  "UB2.10": {
    "dataType": "ST",
    "longName": "UB92 Locator 11 (State)",
    "hl7Table": ""
  },
  "EQU.5": {"dataType": "CE", "longName": "Alert Level", "hl7Table": "HL70367"},
  "INV.1": {
    "dataType": "CE",
    "longName": "Substance Identifier",
    "hl7Table": "HL70451"
  },
  "CON.16": {
    "dataType": "ID",
    "longName": "Subject Competence Indicator",
    "hl7Table": "HL70136"
  },
  "ORG.9": {
    "dataType": "DR",
    "longName": "Effective Date Range",
    "hl7Table": ""
  },
  "PV1.14": {
    "dataType": "IS",
    "longName": "Admit Source",
    "hl7Table": "HL70023"
  },
  "GT1.2": {"dataType": "CX", "longName": "Guarantor Number", "hl7Table": ""},
  "OM1.10": {
    "dataType": "ST",
    "longName": "Preferred Short Name or Mnemonic for Observation",
    "hl7Table": ""
  },
  "URS.6": {
    "dataType": "ID",
    "longName": "R/U Which Date/Time Qualifier",
    "hl7Table": "HL70156"
  },
  "CM0.7": {
    "dataType": "NM",
    "longName": "Total Accrual to Date",
    "hl7Table": ""
  },
  "FT1.2": {"dataType": "ST", "longName": "Transaction ID", "hl7Table": ""},
  "AIP.12": {
    "dataType": "CE",
    "longName": "Filler Status Code",
    "hl7Table": "HL70278"
  },
  "PV1.15": {
    "dataType": "IS",
    "longName": "Ambulatory Status",
    "hl7Table": "HL70009"
  },
  "ORG.8": {
    "dataType": "CE",
    "longName": "Health Care Provider Area of Specialization Code",
    "hl7Table": "HL70454"
  },
  "CON.17": {
    "dataType": "ID",
    "longName": "Translator Assistance Indicator",
    "hl7Table": "HL70136"
  },
  "OM1.11": {
    "dataType": "ST",
    "longName": "Preferred Long Name for the Observation",
    "hl7Table": ""
  },
  "GT1.3": {"dataType": "XPN", "longName": "Guarantor Name", "hl7Table": ""},
  "URS.7": {
    "dataType": "ID",
    "longName": "R/U Which Date/Time Status Qualifier",
    "hl7Table": "HL70157"
  },
  "CM0.6": {
    "dataType": "DT",
    "longName": "Last IRB Approval Date",
    "hl7Table": ""
  },
  "FT1.3": {
    "dataType": "ST",
    "longName": "Transaction Batch ID",
    "hl7Table": ""
  },
  "RDF.2": {
    "dataType": "RCD",
    "longName": "Column Description",
    "hl7Table": "HL70440"
  },
  "MRG.1": {
    "dataType": "CX",
    "longName": "Prior Patient Identifier List",
    "hl7Table": ""
  },
  "RCP.7": {
    "dataType": "ID",
    "longName": "Segment group inclusion",
    "hl7Table": ""
  },
  "GT1.38": {
    "dataType": "CE",
    "longName": "Publicity Code",
    "hl7Table": "HL70215"
  },
  "PID.17": {"dataType": "CE", "longName": "Religion", "hl7Table": "HL70006"},
  "MFE.1": {
    "dataType": "ID",
    "longName": "Record-Level Event Code",
    "hl7Table": "HL70180"
  },
  "SPM.1": {"dataType": "SI", "longName": "Set ID - SPM", "hl7Table": ""},
  "IN2.44": {
    "dataType": "DT",
    "longName": "Insured's Employment Start Date",
    "hl7Table": ""
  },
  "RXD.26": {
    "dataType": "CE",
    "longName": "Initiating Location",
    "hl7Table": ""
  },
  "UB2.11": {
    "dataType": "ST",
    "longName": "UB92 Locator 31 (National)",
    "hl7Table": ""
  },
  "EQU.4": {
    "dataType": "CE",
    "longName": "Local/Remote Control State",
    "hl7Table": "HL70366"
  },
  "PV1.42": {"dataType": "PL", "longName": "Pending Location", "hl7Table": ""},
  "EVN.5": {
    "dataType": "XCN",
    "longName": "Operator ID",
    "hl7Table": "HL70188"
  },
  "GOL.2": {"dataType": "TS", "longName": "Action Date/Time", "hl7Table": ""},
  "NK1.26": {
    "dataType": "XPN",
    "longName": "Mother's Maiden Name",
    "hl7Table": ""
  },
  "ORC.17": {
    "dataType": "CE",
    "longName": "Entering Organization",
    "hl7Table": ""
  },
  "FT1.24": {"dataType": "XCN", "longName": "Entered By Code", "hl7Table": ""},
  "OM1.46": {
    "dataType": "CE",
    "longName": "Target Anatomic Site Of Test",
    "hl7Table": "HL79999"
  },
  "MFA.6": {
    "dataType": "ID",
    "longName": "Primary Key Value Type - MFA",
    "hl7Table": "HL70355"
  },
  "AIS.2": {
    "dataType": "ID",
    "longName": "Segment Action Code",
    "hl7Table": "HL70206"
  },
  "ILT.6": {
    "dataType": "CWE",
    "longName": "Inventory Received Quantity Unit",
    "hl7Table": ""
  },
  "BPX.6": {"dataType": "CNE", "longName": "BC Component", "hl7Table": ""},
  "LCC.4": {"dataType": "CE", "longName": "Charge Code", "hl7Table": "HL70132"},
  "FHS.4": {
    "dataType": "HD",
    "longName": "File Sending Facility",
    "hl7Table": ""
  },
  "IIM.1": {
    "dataType": "CWE",
    "longName": "Primary Key Value - IIM",
    "hl7Table": ""
  },
  "STF.36": {
    "dataType": "CWE",
    "longName": "Cost Center Code",
    "hl7Table": "HL70539"
  },
  "SPR.3": {
    "dataType": "CE",
    "longName": "Stored Procedure Name",
    "hl7Table": ""
  },
  "IN2.13": {"dataType": "ST", "longName": "Military Station", "hl7Table": ""},
  "LDP.2": {
    "dataType": "CE",
    "longName": "Location Department",
    "hl7Table": "HL70264"
  },
  "EDU.4": {
    "dataType": "DR",
    "longName": "Academic Degree Program Participation Date Range",
    "hl7Table": ""
  },
  "CM1.2": {
    "dataType": "CE",
    "longName": "Study Phase Identifier",
    "hl7Table": ""
  },
  "IN1.15": {"dataType": "IS", "longName": "Plan Type", "hl7Table": "HL70086"},
  "CDM.3": {
    "dataType": "ST",
    "longName": "Charge Description Short",
    "hl7Table": ""
  },
  "SAC.43": {
    "dataType": "CWE",
    "longName": "Special Handling Code",
    "hl7Table": "HL70376"
  },
  "NK1.30": {
    "dataType": "XPN",
    "longName": "Contact Person's Name",
    "hl7Table": ""
  },
  "IVT.13": {
    "dataType": "CP",
    "longName": "Transaction amount - unit",
    "hl7Table": ""
  },
  "GP1.1": {
    "dataType": "IS",
    "longName": "Type of Bill Code",
    "hl7Table": "HL70455"
  },
  "RXO.17": {
    "dataType": "ST",
    "longName": "Requested Give Per (Time Unit)",
    "hl7Table": ""
  },
  "BPO.3": {
    "dataType": "CWE",
    "longName": "BP  Processing Requirements",
    "hl7Table": "HL70508"
  },
  "INV.12": {
    "dataType": "TS",
    "longName": "Expiration Date/Time",
    "hl7Table": ""
  },
  "PV2.44": {
    "dataType": "IS",
    "longName": "Organ Donor Code",
    "hl7Table": "HL70316"
  },
  "IN1.8": {"dataType": "ST", "longName": "Group Number", "hl7Table": ""},
  "STF.20": {
    "dataType": "CE",
    "longName": "Employment Status Code",
    "hl7Table": "HL70066"
  },
  "PEO.17": {
    "dataType": "FT",
    "longName": "Event Description From Autopsy",
    "hl7Table": ""
  },
  "CSR.13": {
    "dataType": "CE",
    "longName": "Stratum for Study Randomization",
    "hl7Table": ""
  },
  "TXA.12": {
    "dataType": "EI",
    "longName": "Unique Document Number",
    "hl7Table": ""
  },
  "DRG.4": {
    "dataType": "IS",
    "longName": "DRG Grouper Review Code",
    "hl7Table": "HL70056"
  },
  "MSH.5": {
    "dataType": "HD",
    "longName": "Receiving Application",
    "hl7Table": "HL70361"
  },
  "FHS.12": {
    "dataType": "ST",
    "longName": "Reference File Control ID",
    "hl7Table": ""
  },
  "RXG.20": {
    "dataType": "TS",
    "longName": "Substance Expiration Date",
    "hl7Table": ""
  },
  "URD.2": {
    "dataType": "ID",
    "longName": "Report Priority",
    "hl7Table": "HL70109"
  },
  "SAC.14": {"dataType": "NA", "longName": "Position in Tray", "hl7Table": ""},
  "UB1.17": {
    "dataType": "CE",
    "longName": "Occurrence Span (33)",
    "hl7Table": "HL70351"
  },
  "MSA.6": {
    "dataType": "CE",
    "longName": "Error Condition",
    "hl7Table": "HL70357"
  },
  "PDC.8": {"dataType": "ST", "longName": "Other Identifier", "hl7Table": ""},
  "IN1.42": {
    "dataType": "CE",
    "longName": "Insured's Employment Status",
    "hl7Table": "HL70066"
  },
  "CER.17": {
    "dataType": "ID",
    "longName": "Basic Constraint",
    "hl7Table": "HL70136"
  },
  "PV2.13": {
    "dataType": "XCN",
    "longName": "Referral Source Code",
    "hl7Table": ""
  },
  "BTX.4": {"dataType": "CNE", "longName": "BC Blood Group", "hl7Table": ""},
  "MFI.1": {
    "dataType": "CE",
    "longName": "Master File Identifier",
    "hl7Table": "HL70175"
  },
  "SPM.25": {
    "dataType": "CQ",
    "longName": "Specimen Current Quantity",
    "hl7Table": ""
  },
  "RXD.30": {
    "dataType": "CWE",
    "longName": "Dispense to Pharmacy",
    "hl7Table": ""
  },
  "PV2.5": {"dataType": "ST", "longName": "Patient Valuables", "hl7Table": ""},
  "IN2.52": {
    "dataType": "XPN",
    "longName": "Insured's Contact Person's Name",
    "hl7Table": ""
  },
  "ECR.2": {
    "dataType": "TS",
    "longName": "Date/Time Completed",
    "hl7Table": ""
  },
  "RXA.25": {
    "dataType": "CWE",
    "longName": "Administered Barcode Identifier",
    "hl7Table": ""
  },
  "TCC.2": {
    "dataType": "EI",
    "longName": "Test Application Identifier",
    "hl7Table": ""
  },
  "AIG.2": {
    "dataType": "ID",
    "longName": "Segment Action Code",
    "hl7Table": "HL70206"
  },
  "IN1.39": {
    "dataType": "NM",
    "longName": "Policy Limit - Days",
    "hl7Table": ""
  },
  "PID.4": {
    "dataType": "CX",
    "longName": "Alternate Patient ID - PID",
    "hl7Table": ""
  },
  "CTD.3": {"dataType": "XAD", "longName": "Contact Address", "hl7Table": ""},
  "OM4.12": {
    "dataType": "TX",
    "longName": "Specimen Requirements",
    "hl7Table": ""
  },
  "LRL.3": {"dataType": "EI", "longName": "Segment Unique Key", "hl7Table": ""},
  "CSR.6": {
    "dataType": "TS",
    "longName": "Date/Time Of Patient Study Registration",
    "hl7Table": ""
  },
  "IN2.29": {
    "dataType": "PTA",
    "longName": "Policy Type/Amount",
    "hl7Table": ""
  },
  "SCH.16": {
    "dataType": "XCN",
    "longName": "Filler Contact Person",
    "hl7Table": ""
  },
  "GP2.4": {
    "dataType": "IS",
    "longName": "Reimbursement Action Code",
    "hl7Table": "HL70459"
  },
  "GOL.15": {
    "dataType": "TQ",
    "longName": "Goal Review Interval",
    "hl7Table": ""
  },
  "GT1.55": {
    "dataType": "CE",
    "longName": "Guarantor Race",
    "hl7Table": "HL70005"
  },
  "DSC.2": {
    "dataType": "ID",
    "longName": "Continuation Style",
    "hl7Table": "HL70398"
  },
  "SAC.38": {"dataType": "NM", "longName": "Fibrin Index", "hl7Table": ""},
  "RXE.31": {
    "dataType": "CE",
    "longName": "Supplementary Code",
    "hl7Table": ""
  },
  "SFT.3": {
    "dataType": "ST",
    "longName": "Software Product Name",
    "hl7Table": ""
  },
  "ECD.3": {
    "dataType": "ID",
    "longName": "Response Required",
    "hl7Table": "HL70136"
  },
  "MSH.14": {
    "dataType": "ST",
    "longName": "Continuation Pointer",
    "hl7Table": ""
  },
  "BPX.20": {
    "dataType": "XCN",
    "longName": "BP Dispensed to Receiver",
    "hl7Table": ""
  },
  "RXE.27": {"dataType": "CE", "longName": "Give Indication", "hl7Table": ""},
  "PD1.4": {
    "dataType": "XCN",
    "longName": "Patient Primary Care Provider Name & ID No.",
    "hl7Table": ""
  },
  "RQD.3": {
    "dataType": "CE",
    "longName": "Item Code - External",
    "hl7Table": ""
  },
  "ABS.9": {
    "dataType": "CE",
    "longName": "Case Category Code",
    "hl7Table": "HL70423"
  },
  "PV1.39": {
    "dataType": "IS",
    "longName": "Servicing Facility",
    "hl7Table": "HL70115"
  },
  "BTX.14": {"dataType": "XCN", "longName": "BP Administrator", "hl7Table": ""},
  "STF.1": {
    "dataType": "CE",
    "longName": "Primary Key Value - STF",
    "hl7Table": "HL79999"
  },
  "SCH.7": {
    "dataType": "CE",
    "longName": "Appointment Reason",
    "hl7Table": "HL70276"
  },
  "OBR.41": {
    "dataType": "ID",
    "longName": "Transport Arranged",
    "hl7Table": "HL70224"
  },
  "IN3.9": {
    "dataType": "DT",
    "longName": "Certification Begin Date",
    "hl7Table": ""
  },
  "IAM.18": {
    "dataType": "XCN",
    "longName": "Statused by Person",
    "hl7Table": ""
  },
  "ITM.15": {
    "dataType": "CWE",
    "longName": "Supply Risk Codes",
    "hl7Table": "HL70871"
  },
  "IN2.68": {
    "dataType": "ID",
    "longName": "Stoploss Limit Flag",
    "hl7Table": "HL70136"
  },
  "PV2.29": {
    "dataType": "DT",
    "longName": "First Similar Illness Date",
    "hl7Table": ""
  },
  "CSS.2": {
    "dataType": "TS",
    "longName": "Study Scheduled Patient Time Point",
    "hl7Table": ""
  },
  "PEO.9": {
    "dataType": "ID",
    "longName": "Event Serious",
    "hl7Table": "HL70238"
  },
  "GT1.14": {
    "dataType": "DT",
    "longName": "Guarantor Date - End",
    "hl7Table": ""
  },
  "IN3.12": {
    "dataType": "CE",
    "longName": "Non-Concur Code/Description",
    "hl7Table": "HL70233"
  },
  "OM7.14": {
    "dataType": "TS",
    "longName": "Consent Effective End Date/Time",
    "hl7Table": ""
  },
  "AIP.7": {
    "dataType": "NM",
    "longName": "Start Date/Time Offset",
    "hl7Table": ""
  },
  "OBR.16": {
    "dataType": "XCN",
    "longName": "Ordering Provider",
    "hl7Table": ""
  },
  "OBX.9": {"dataType": "NM", "longName": "Probability", "hl7Table": ""},
  "PR1.2": {
    "dataType": "IS",
    "longName": "Procedure Coding Method",
    "hl7Table": "HL70089"
  },
  "OM1.9": {
    "dataType": "ST",
    "longName": "Preferred Report Name for the Observation",
    "hl7Table": ""
  },
  "PDA.9": {
    "dataType": "ID",
    "longName": "Coroner Indicator",
    "hl7Table": "HL70136"
  },
  "QRD.12": {
    "dataType": "ID",
    "longName": "Query Results Level",
    "hl7Table": "HL70108"
  },
  "PKG.6": {"dataType": "CP", "longName": "Future Item Price", "hl7Table": ""},
  "AIG.14": {
    "dataType": "CE",
    "longName": "Filler Status Code",
    "hl7Table": "HL70278"
  },
  "GT1.43": {
    "dataType": "CE",
    "longName": "Nationality",
    "hl7Table": "HL70212"
  },
  "SAC.2": {
    "dataType": "EI",
    "longName": "Accession Identifier",
    "hl7Table": ""
  },
  "BLG.4": {
    "dataType": "CWE",
    "longName": "Charge Type Reason",
    "hl7Table": "HL70475"
  },
  "BPX.16": {"dataType": "CE", "longName": "BP Units", "hl7Table": ""},
  "CDM.11": {"dataType": "CX", "longName": "Contract Number", "hl7Table": ""},
  "GT1.34": {
    "dataType": "IS",
    "longName": "Ambulatory Status",
    "hl7Table": "HL70009"
  },
  "IN2.48": {"dataType": "IS", "longName": "Job Status", "hl7Table": "HL70311"},
  "RXO.1": {
    "dataType": "CE",
    "longName": "Requested Give Code",
    "hl7Table": ""
  },
  "ORG.4": {
    "dataType": "ID",
    "longName": "Primary Org Unit Indicator",
    "hl7Table": "HL70136"
  },
  "PV1.19": {"dataType": "CX", "longName": "Visit Number", "hl7Table": ""},
  "PSH.1": {"dataType": "ST", "longName": "Report Type", "hl7Table": ""},
  "CNS.3": {
    "dataType": "TS",
    "longName": "Starting Notification Date/Time",
    "hl7Table": ""
  },
  "PRB.6": {
    "dataType": "NM",
    "longName": "Problem List Priority",
    "hl7Table": ""
  },
  "PTH.5": {
    "dataType": "CE",
    "longName": "Pathway Life Cycle Status",
    "hl7Table": ""
  },
  "SCH.20": {
    "dataType": "XCN",
    "longName": "Entered By Person",
    "hl7Table": ""
  },
  "OBR.3": {
    "dataType": "EI",
    "longName": "Filler Order Number",
    "hl7Table": ""
  },
  "FHS.8": {"dataType": "ST", "longName": "File Security", "hl7Table": ""},
  "ROL.3": {"dataType": "CE", "longName": "Role-ROL", "hl7Table": "HL70443"},
  "OBR.36": {
    "dataType": "TS",
    "longName": "Scheduled Date/Time",
    "hl7Table": ""
  },
  "ORC.3": {
    "dataType": "EI",
    "longName": "Filler Order Number",
    "hl7Table": ""
  },
  "PES.2": {
    "dataType": "XCN",
    "longName": "Sender Individual Name",
    "hl7Table": ""
  },
  "TXA.7": {
    "dataType": "TS",
    "longName": "Transcription Date/Time",
    "hl7Table": ""
  },
  "UB2.6": {
    "dataType": "UVC",
    "longName": "Value Amount & Code",
    "hl7Table": ""
  },
  "FT1.28": {
    "dataType": "CWE",
    "longName": "Medically Necessary Duplicate Procedure Reason.",
    "hl7Table": "HL70476"
  },
  "RXA.13": {
    "dataType": "NM",
    "longName": "Administered Strength",
    "hl7Table": ""
  },
  "DG1.10": {
    "dataType": "IS",
    "longName": "DRG Grouper Review Code",
    "hl7Table": "HL70056"
  },
  "QRF.1": {
    "dataType": "ST",
    "longName": "Where Subject Filter",
    "hl7Table": ""
  },
  "ERR.12": {
    "dataType": "XTN",
    "longName": "Help Desk Contact Point",
    "hl7Table": ""
  },
  "IN1.4": {
    "dataType": "XON",
    "longName": "Insurance Company Name",
    "hl7Table": ""
  },
  "PV2.48": {
    "dataType": "TS",
    "longName": "Expected Pre-admission Testing Date/Time",
    "hl7Table": ""
  },
  "PCR.11": {
    "dataType": "IS",
    "longName": "Product Problem",
    "hl7Table": "HL70245"
  },
  "IPC.3": {"dataType": "EI", "longName": "Study Instance UID", "hl7Table": ""},
  "PRC.2": {
    "dataType": "CE",
    "longName": "Facility ID - PRC",
    "hl7Table": "HL70464"
  },
  "EDU.8": {"dataType": "XAD", "longName": "School Address", "hl7Table": ""},
  "TQ1.6": {"dataType": "CQ", "longName": "Service Duration", "hl7Table": ""},
  "OBR.20": {"dataType": "ST", "longName": "Filler Field 1", "hl7Table": ""},
  "PRB.11": {
    "dataType": "CE",
    "longName": "Problem Management Discipline",
    "hl7Table": ""
  },
  "RXG.6": {
    "dataType": "NM",
    "longName": "Give Amount - Maximum",
    "hl7Table": ""
  },
  "OM7.22": {
    "dataType": "IS",
    "longName": "Formulary Status",
    "hl7Table": "HL70473"
  },
  "OM7.3": {
    "dataType": "CE",
    "longName": "Category Identifier",
    "hl7Table": "HL70412"
  },
  "IN3.24": {
    "dataType": "IS",
    "longName": "Second Opinion Documentation Received",
    "hl7Table": "HL70152"
  },
  "IN1.19": {
    "dataType": "XAD",
    "longName": "Insured's Address",
    "hl7Table": ""
  },
  "AFF.3": {
    "dataType": "XAD",
    "longName": "Professional Organization Address",
    "hl7Table": ""
  },
  "GT1.22": {
    "dataType": "ID",
    "longName": "Guarantor Billing Hold Flag",
    "hl7Table": "HL70136"
  },
  "BTX.8": {"dataType": "NM", "longName": "BP Quantity", "hl7Table": ""},
  "GP2.10": {
    "dataType": "IS",
    "longName": "Packaging Status Code",
    "hl7Table": "HL70469"
  },
  "PV2.9": {
    "dataType": "TS",
    "longName": "Expected Discharge Date/Time",
    "hl7Table": ""
  },
  "SPM.29": {
    "dataType": "CWE",
    "longName": "Specimen Child Role",
    "hl7Table": "HL70494"
  },
  "ITM.23": {
    "dataType": "CNE",
    "longName": "Freight Charge Indicator",
    "hl7Table": "HL70532"
  },
  "RF1.6": {
    "dataType": "EI",
    "longName": "Originating Referral Identifier",
    "hl7Table": ""
  },
  "CON.1": {"dataType": "SI", "longName": "Set ID - CON", "hl7Table": ""},
  "DRG.8": {"dataType": "IS", "longName": "DRG Payor", "hl7Table": "HL70229"},
  "ARQ.11": {
    "dataType": "DR",
    "longName": "Requested Start Date/Time Range",
    "hl7Table": ""
  },
  "PDC.4": {"dataType": "ST", "longName": "Device Family Name", "hl7Table": ""},
  "RXC.1": {
    "dataType": "ID",
    "longName": "RX Component Type",
    "hl7Table": "HL70166"
  },
  "SAC.18": {"dataType": "NM", "longName": "Barrier Delta", "hl7Table": ""},
  "RXE.11": {"dataType": "CE", "longName": "Dispense Units", "hl7Table": ""},
  "OM3.4": {
    "dataType": "CE",
    "longName": "Normal Text/Codes for Categorical Observations",
    "hl7Table": "HL79999"
  },
  "MSH.9": {"dataType": "MSG", "longName": "Message Type", "hl7Table": ""},
  "TQ2.3": {
    "dataType": "EI",
    "longName": "Related Placer Number",
    "hl7Table": ""
  },
  "IN2.25": {"dataType": "CX", "longName": "Payor ID", "hl7Table": ""},
  "ARQ.7": {
    "dataType": "CE",
    "longName": "Appointment Reason",
    "hl7Table": "HL70276"
  },
  "RQ1.1": {"dataType": "ST", "longName": "Anticipated Price", "hl7Table": ""},
  "PDC.14": {
    "dataType": "TS",
    "longName": "Date First Marketed",
    "hl7Table": ""
  },
  "AL1.6": {
    "dataType": "DT",
    "longName": "Identification Date",
    "hl7Table": ""
  },
  "PRC.10": {"dataType": "MO", "longName": "Maximum Price", "hl7Table": ""},
  "GOL.19": {
    "dataType": "TS",
    "longName": "Goal Life Cycle Status Date/Time",
    "hl7Table": ""
  },
  "NDS.2": {
    "dataType": "TS",
    "longName": "Notification Date/Time",
    "hl7Table": ""
  },
  "RXD.3": {
    "dataType": "TS",
    "longName": "Date/Time Dispensed",
    "hl7Table": ""
  },
  "GP2.8": {
    "dataType": "IS",
    "longName": "Modifier Edit Code",
    "hl7Table": "HL70467"
  },
  "OM4.6": {"dataType": "CE", "longName": "Specimen", "hl7Table": "HL79999"},
  "NST.7": {
    "dataType": "NM",
    "longName": "Send Character Count",
    "hl7Table": ""
  },
  "ODS.2": {"dataType": "CE", "longName": "Service Period", "hl7Table": ""},
  "IN1.35": {
    "dataType": "IS",
    "longName": "Company Plan Code",
    "hl7Table": "HL70042"
  },
  "ACC.3": {"dataType": "ST", "longName": "Accident Location", "hl7Table": ""},
  "FT1.12": {
    "dataType": "CP",
    "longName": "Transaction Amount - Unit",
    "hl7Table": ""
  },
  "ORC.21": {
    "dataType": "XON",
    "longName": "Ordering Facility Name",
    "hl7Table": ""
  },
  "SID.1": {
    "dataType": "CE",
    "longName": "Application / Method Identifier",
    "hl7Table": ""
  },
  "NK1.10": {
    "dataType": "ST",
    "longName": "Next of Kin / Associated Parties Job Title",
    "hl7Table": ""
  },
  "IN2.1": {
    "dataType": "CX",
    "longName": "Insured's Employee ID",
    "hl7Table": ""
  },
  "PCR.3": {"dataType": "CE", "longName": "Product Class", "hl7Table": ""},
  "PID.8": {
    "dataType": "IS",
    "longName": "Administrative Sex",
    "hl7Table": "HL70001"
  },
  "DG1.3": {
    "dataType": "CE",
    "longName": "Diagnosis Code - DG1",
    "hl7Table": "HL70051"
  },
  "RXR.2": {
    "dataType": "CWE",
    "longName": "Administration Site",
    "hl7Table": "HL70163"
  },
  "RXD.10": {
    "dataType": "XCN",
    "longName": "Dispensing Provider",
    "hl7Table": ""
  },
  "IN2.72": {
    "dataType": "CE",
    "longName": "CMS Patient's Relationship to Insured",
    "hl7Table": "HL70344"
  },
  "PV2.33": {
    "dataType": "TS",
    "longName": "Expected Surgery Date and Time",
    "hl7Table": ""
  },
  "IIM.11": {
    "dataType": "TS",
    "longName": "Inventory On Hand Date",
    "hl7Table": ""
  },
  "PID.21": {
    "dataType": "CX",
    "longName": "Mother's Identifier",
    "hl7Table": ""
  },
  "OVR.2": {
    "dataType": "CWE",
    "longName": "Business Rule Override Code",
    "hl7Table": "HL70521"
  },
  "SAC.34": {"dataType": "NM", "longName": "Lipemia Index", "hl7Table": ""},
  "OM1.27": {
    "dataType": "CE",
    "longName": "Outside Site(s) Where Observation may be Performed",
    "hl7Table": "HL79999"
  },
  "MSH.18": {
    "dataType": "ID",
    "longName": "Character Set",
    "hl7Table": "HL70211"
  },
  "CON.21": {
    "dataType": "ID",
    "longName": "Consent Disclosure Level",
    "hl7Table": "HL70500"
  },
  "PV1.23": {
    "dataType": "IS",
    "longName": "Credit Rating",
    "hl7Table": "HL70046"
  },
  "IN2.64": {
    "dataType": "XTN",
    "longName": "Insured's Employer Phone Number",
    "hl7Table": ""
  },
  "RXE.7": {
    "dataType": "CE",
    "longName": "Provider's Administration Instructions",
    "hl7Table": ""
  },
  "OM5.2": {
    "dataType": "CE",
    "longName": "Test/Observations Included within an Ordered Test Battery",
    "hl7Table": "HL79999"
  },
  "IVT.3": {
    "dataType": "SI",
    "longName": "Inventory Location Name",
    "hl7Table": ""
  },
  "SPM.13": {
    "dataType": "NM",
    "longName": "Grouped Specimen Count",
    "hl7Table": ""
  },
  "ITM.19": {
    "dataType": "CWE",
    "longName": "Item Natural Account Code",
    "hl7Table": "HL70320"
  },
  "PD1.13": {
    "dataType": "DT",
    "longName": "Protection Indicator Effective Date",
    "hl7Table": ""
  },
  "IAM.14": {"dataType": "XPN", "longName": "Reported By", "hl7Table": ""},
  "PRA.3": {
    "dataType": "IS",
    "longName": "Practitioner Category",
    "hl7Table": "HL70186"
  },
  "PR1.17": {
    "dataType": "IS",
    "longName": "Procedure DRG Type",
    "hl7Table": "HL70416"
  },
  "GT1.18": {
    "dataType": "XTN",
    "longName": "Guarantor Employer Phone Number",
    "hl7Table": ""
  },
  "PEO.5": {
    "dataType": "TS",
    "longName": "Event Improved Date/Time",
    "hl7Table": ""
  },
  "PID.37": {"dataType": "ST", "longName": "Strain", "hl7Table": ""},
  "PV2.25": {
    "dataType": "IS",
    "longName": "Visit Priority Code",
    "hl7Table": "HL70217"
  },
  "PD1.8": {
    "dataType": "IS",
    "longName": "Organ Donor Code",
    "hl7Table": "HL70316"
  },
  "CER.21": {
    "dataType": "CWE",
    "longName": "Jurisdiction County/Parish",
    "hl7Table": "HL70289"
  },
  "OM1.31": {
    "dataType": "CE",
    "longName": "Observations Required to Interpret the Observation",
    "hl7Table": "HL79999"
  },
  "UB1.21": {"dataType": "ST", "longName": "UB-82 Locator 9", "hl7Table": ""},
  "SAC.22": {
    "dataType": "NM",
    "longName": "Available Specimen Volume",
    "hl7Table": ""
  },
  "RXG.16": {"dataType": "CE", "longName": "Give Rate Units", "hl7Table": ""},
  "IN3.5": {"dataType": "MOP", "longName": "Penalty", "hl7Table": ""},
  "OBX.10": {
    "dataType": "ID",
    "longName": "Nature of Abnormal Test",
    "hl7Table": "HL70080"
  },
  "BTX.18": {
    "dataType": "CWE",
    "longName": "BP Adverse Reaction Type",
    "hl7Table": "HL70514"
  },
  "PV1.35": {
    "dataType": "DT",
    "longName": "Delete Account Date",
    "hl7Table": ""
  },
  "ABS.5": {"dataType": "XCN", "longName": "Attested By", "hl7Table": ""},
  "PEO.21": {
    "dataType": "XTN",
    "longName": "Primary Observer Telephone",
    "hl7Table": ""
  },
  "UB1.3": {
    "dataType": "NM",
    "longName": "Blood Furnished-Pints Of (40)",
    "hl7Table": ""
  },
  "ILT.10": {
    "dataType": "CWE",
    "longName": "Inventory On Hand Quantity Unit",
    "hl7Table": ""
  },
  "PDA.5": {
    "dataType": "XCN",
    "longName": "Death Certified By",
    "hl7Table": ""
  },
  "STF.16": {
    "dataType": "CE",
    "longName": "Preferred Method of Contact",
    "hl7Table": "HL70185"
  },
  "IN2.33": {
    "dataType": "CE",
    "longName": "Citizenship",
    "hl7Table": "HL70171"
  },
  "OM1.5": {"dataType": "CE", "longName": "Producer ID", "hl7Table": "HL79999"},
  "LOC.7": {
    "dataType": "CE",
    "longName": "License Number",
    "hl7Table": "HL70461"
  },
  "FAC.3": {"dataType": "XAD", "longName": "Facility Address", "hl7Table": ""},
  "VAR.3": {
    "dataType": "TS",
    "longName": "Stated Variance Date/Time",
    "hl7Table": ""
  },
  "NSC.2": {"dataType": "ST", "longName": "Current CPU", "hl7Table": ""},
  "BPO.11": {
    "dataType": "PL",
    "longName": "BP Requested Dispense To Location",
    "hl7Table": ""
  },
  "RXO.21": {
    "dataType": "ST",
    "longName": "Requested Give Rate Amount",
    "hl7Table": ""
  },
  "OM7.18": {
    "dataType": "CE",
    "longName": "Consent Waiting Period Units",
    "hl7Table": "HL70414"
  },
  "IVT.25": {
    "dataType": "NM",
    "longName": "Recommended Order Amount",
    "hl7Table": ""
  },
  "BHS.6": {
    "dataType": "HD",
    "longName": "Batch Receiving Facility",
    "hl7Table": ""
  },
  "IN1.23": {
    "dataType": "ID",
    "longName": "Notice Of Admission Flag",
    "hl7Table": "HL70136"
  },
  "OBX.5": {
    "dataType": "varies",
    "longName": "Observation Value",
    "hl7Table": ""
  },
  "APR.5": {
    "dataType": "SCV",
    "longName": "Filler Override Criteria",
    "hl7Table": ""
  },
  "NK1.3": {
    "dataType": "CE",
    "longName": "Relationship",
    "hl7Table": "HL70063"
  },
  "RXD.29": {
    "dataType": "CWE",
    "longName": "Actual Drug Strength Volume Units",
    "hl7Table": ""
  },
  "PID.18": {
    "dataType": "CX",
    "longName": "Patient Account Number",
    "hl7Table": ""
  },
  "BPX.15": {"dataType": "NM", "longName": "BP Amount", "hl7Table": ""},
  "CDM.12": {
    "dataType": "XON",
    "longName": "Contract Organization",
    "hl7Table": ""
  },
  "GT1.37": {
    "dataType": "IS",
    "longName": "Living Arrangement",
    "hl7Table": "HL70220"
  },
  "CM0.9": {"dataType": "XCN", "longName": "Contact for Study", "hl7Table": ""},
  "PRB.5": {"dataType": "EI", "longName": "Episode of Care ID", "hl7Table": ""},
  "URS.8": {
    "dataType": "ID",
    "longName": "R/U Date/Time Selection Qualifier",
    "hl7Table": "HL70158"
  },
  "AIL.10": {"dataType": "CE", "longName": "Duration Units", "hl7Table": ""},
  "MSH.21": {
    "dataType": "EI",
    "longName": "Message Profile Identifier",
    "hl7Table": ""
  },
  "RXO.2": {
    "dataType": "NM",
    "longName": "Requested Give Amount - Minimum",
    "hl7Table": ""
  },
  "CON.18": {
    "dataType": "ID",
    "longName": "Language Translated To",
    "hl7Table": "HL70296"
  },
  "ORG.7": {
    "dataType": "CE",
    "longName": "Health Care Provider Classification Code",
    "hl7Table": "HL70453"
  },
  "PSH.2": {
    "dataType": "ST",
    "longName": "Report Form Identifier",
    "hl7Table": ""
  },
  "SCH.23": {
    "dataType": "EI",
    "longName": "Parent Placer Appointment ID",
    "hl7Table": ""
  },
  "GOL.20": {"dataType": "CE", "longName": "Goal Target Type", "hl7Table": ""},
  "BPX.9": {"dataType": "XON", "longName": "CP Manufacturer", "hl7Table": ""},
  "ILT.9": {
    "dataType": "NM",
    "longName": "Inventory On Hand Quantity",
    "hl7Table": ""
  },
  "PTH.6": {
    "dataType": "TS",
    "longName": "Change Pathway Life Cycle Status Date/Time",
    "hl7Table": ""
  },
  "NK1.29": {
    "dataType": "CE",
    "longName": "Contact Reason",
    "hl7Table": "HL70222"
  },
  "DG1.13": {"dataType": "CP", "longName": "Outlier Cost", "hl7Table": ""},
  "QRF.2": {
    "dataType": "TS",
    "longName": "When Data Start Date/Time",
    "hl7Table": ""
  },
  "ERR.11": {
    "dataType": "CWE",
    "longName": "Override Reason Code",
    "hl7Table": "HL70519"
  },
  "DB1.3": {
    "dataType": "CX",
    "longName": "Disabled Person Identifier",
    "hl7Table": ""
  },
  "ORC.18": {"dataType": "CE", "longName": "Entering Device", "hl7Table": ""},
  "RXA.10": {
    "dataType": "XCN",
    "longName": "Administering Provider",
    "hl7Table": ""
  },
  "PES.1": {
    "dataType": "XON",
    "longName": "Sender Organization Name",
    "hl7Table": ""
  },
  "TXA.4": {"dataType": "TS", "longName": "Activity Date/Time", "hl7Table": ""},
  "UB2.5": {
    "dataType": "ST",
    "longName": "Non-Covered Days (8)",
    "hl7Table": ""
  },
  "OBR.35": {"dataType": "NDL", "longName": "Transcriptionist", "hl7Table": ""},
  "OM2.3": {
    "dataType": "NM",
    "longName": "Range of Decimal Precision",
    "hl7Table": ""
  },
  "PCR.12": {
    "dataType": "ST",
    "longName": "Product Serial/Lot Number",
    "hl7Table": ""
  },
  "PEO.18": {"dataType": "CE", "longName": "Cause Of Death", "hl7Table": ""},
  "IN1.7": {
    "dataType": "XTN",
    "longName": "Insurance Co Phone Number",
    "hl7Table": ""
  },
  "RXO.18": {
    "dataType": "NM",
    "longName": "Requested Give Strength",
    "hl7Table": ""
  },
  "RXG.5": {
    "dataType": "NM",
    "longName": "Give Amount - Minimum",
    "hl7Table": ""
  },
  "OM7.21": {
    "dataType": "PL",
    "longName": "Orderable-at Location",
    "hl7Table": ""
  },
  "TQ1.5": {
    "dataType": "CQ",
    "longName": "Relative Time and Units",
    "hl7Table": ""
  },
  "OBR.23": {
    "dataType": "MOC",
    "longName": "Charge to Practice",
    "hl7Table": ""
  },
  "PRB.12": {
    "dataType": "CE",
    "longName": "Problem Persistence",
    "hl7Table": ""
  },
  "PRC.1": {
    "dataType": "CE",
    "longName": "Primary Key Value - PRC",
    "hl7Table": "HL70132"
  },
  "ITM.20": {
    "dataType": "NM",
    "longName": "Approved To Buy Quantity",
    "hl7Table": ""
  },
  "VTQ.5": {
    "dataType": "QSC",
    "longName": "Selection Criteria",
    "hl7Table": ""
  },
  "GP2.13": {"dataType": "CP", "longName": "Co-Pay Amount", "hl7Table": ""},
  "GT1.21": {
    "dataType": "XON",
    "longName": "Guarantor Organization Name",
    "hl7Table": ""
  },
  "NTE.3": {"dataType": "FT", "longName": "Comment", "hl7Table": ""},
  "RXC.2": {"dataType": "CE", "longName": "Component Code", "hl7Table": ""},
  "UB1.18": {
    "dataType": "DT",
    "longName": "Occur Span Start Date(33)",
    "hl7Table": ""
  },
  "RXE.12": {"dataType": "NM", "longName": "Number Of Refills", "hl7Table": ""},
  "ODT.3": {"dataType": "ST", "longName": "Text Instruction", "hl7Table": ""},
  "OM3.7": {"dataType": "ID", "longName": "Value Type", "hl7Table": "HL70125"},
  "CER.18": {
    "dataType": "CWE",
    "longName": "CRL Distribution Point",
    "hl7Table": ""
  },
  "ARQ.12": {"dataType": "ST", "longName": "Priority-ARQ", "hl7Table": ""},
  "PDC.7": {
    "dataType": "ST",
    "longName": "Catalogue Identifier",
    "hl7Table": ""
  },
  "RF1.5": {
    "dataType": "CE",
    "longName": "Referral Category",
    "hl7Table": "HL70284"
  },
  "CON.2": {
    "dataType": "CWE",
    "longName": "Consent Type",
    "hl7Table": "HL70496"
  },
  "SCH.19": {
    "dataType": "PL",
    "longName": "Filler Contact Location",
    "hl7Table": ""
  },
  "NST.4": {"dataType": "TS", "longName": "Statistics Start", "hl7Table": ""},
  "OM4.5": {
    "dataType": "CE",
    "longName": "Container Units",
    "hl7Table": "HL79999"
  },
  "ODS.1": {"dataType": "ID", "longName": "Type", "hl7Table": "HL70159"},
  "PRC.13": {
    "dataType": "IS",
    "longName": "Price Override Flag",
    "hl7Table": "HL70268"
  },
  "NDS.1": {
    "dataType": "NM",
    "longName": "Notification Reference Number",
    "hl7Table": ""
  },
  "RQ1.2": {
    "dataType": "CE",
    "longName": "Manufacturer Identifier",
    "hl7Table": "HL70385"
  },
  "AL1.5": {
    "dataType": "ST",
    "longName": "Allergy Reaction Code",
    "hl7Table": ""
  },
  "IN2.26": {
    "dataType": "CX",
    "longName": "Payor Subscriber ID",
    "hl7Table": ""
  },
  "CSR.9": {
    "dataType": "TS",
    "longName": "Date/time Patient Study Consent Signed",
    "hl7Table": ""
  },
  "ARQ.4": {
    "dataType": "EI",
    "longName": "Placer Group Number",
    "hl7Table": ""
  },
  "NK1.13": {
    "dataType": "XON",
    "longName": "Organization Name - NK1",
    "hl7Table": ""
  },
  "IN2.2": {
    "dataType": "ST",
    "longName": "Insured's Social Security Number",
    "hl7Table": ""
  },
  "NST.15": {
    "dataType": "NM",
    "longName": "Application control-level Errors",
    "hl7Table": ""
  },
  "IN1.36": {"dataType": "ST", "longName": "Policy Number", "hl7Table": ""},
  "FT1.11": {
    "dataType": "CP",
    "longName": "Transaction Amount - Extended",
    "hl7Table": ""
  },
  "ORC.22": {
    "dataType": "XAD",
    "longName": "Ordering Facility Address",
    "hl7Table": ""
  },
  "SID.2": {
    "dataType": "ST",
    "longName": "Substance Lot Number",
    "hl7Table": ""
  },
  "PID.22": {
    "dataType": "CE",
    "longName": "Ethnic Group",
    "hl7Table": "HL70189"
  },
  "OVR.1": {
    "dataType": "CWE",
    "longName": "Business Rule Override Type",
    "hl7Table": "HL70518"
  },
  "QAK.3": {
    "dataType": "CE",
    "longName": "Message Query Name",
    "hl7Table": "HL70471"
  },
  "PV2.30": {
    "dataType": "CE",
    "longName": "Patient Charge Adjustment Code",
    "hl7Table": "HL70218"
  },
  "IIM.12": {
    "dataType": "NM",
    "longName": "Inventory On Hand Quantity",
    "hl7Table": ""
  },
  "QRD.3": {
    "dataType": "ID",
    "longName": "Query Priority",
    "hl7Table": "HL70091"
  },
  "IN2.71": {"dataType": "CE", "longName": "Race", "hl7Table": "HL70005"},
  "PRD.3": {"dataType": "XAD", "longName": "Provider Address", "hl7Table": ""},
  "RXR.1": {"dataType": "CE", "longName": "Route", "hl7Table": "HL70162"},
  "RXD.13": {
    "dataType": "LA2",
    "longName": "Dispense-to Location",
    "hl7Table": ""
  },
  "IAM.3": {
    "dataType": "CE",
    "longName": "Allergen Code/Mnemonic/Description",
    "hl7Table": ""
  },
  "CON.22": {
    "dataType": "CWE",
    "longName": "Consent Non-disclosure Reason",
    "hl7Table": "HL70501"
  },
  "PV1.20": {
    "dataType": "FC",
    "longName": "Financial Class",
    "hl7Table": "HL70064"
  },
  "OM1.24": {"dataType": "NM", "longName": "Processing Time", "hl7Table": ""},
  "SAC.37": {
    "dataType": "CE",
    "longName": "Icterus Index Units",
    "hl7Table": ""
  },
  "RF1.11": {
    "dataType": "EI",
    "longName": "External Referral Identifier",
    "hl7Table": ""
  },
  "PV2.26": {
    "dataType": "DT",
    "longName": "Previous Treatment Date",
    "hl7Table": ""
  },
  "PR1.14": {
    "dataType": "ID",
    "longName": "Procedure Priority",
    "hl7Table": "HL70418"
  },
  "PEO.6": {
    "dataType": "TS",
    "longName": "Event Ended Data/Time",
    "hl7Table": ""
  },
  "PID.34": {
    "dataType": "HD",
    "longName": "Last Update Facility",
    "hl7Table": ""
  },
  "SPM.10": {
    "dataType": "CWE",
    "longName": "Specimen Collection Site",
    "hl7Table": "HL70543"
  },
  "IAM.17": {
    "dataType": "CE",
    "longName": "Allergy Clinical Status Code",
    "hl7Table": "HL70438"
  },
  "PD1.10": {"dataType": "CX", "longName": "Duplicate Patient", "hl7Table": ""},
  "IN2.67": {
    "dataType": "ID",
    "longName": "Copay Limit Flag",
    "hl7Table": "HL70136"
  },
  "RXE.4": {
    "dataType": "NM",
    "longName": "Give Amount - Maximum",
    "hl7Table": ""
  },
  "OM5.1": {
    "dataType": "NM",
    "longName": "Sequence Number - Test/Observation Master File",
    "hl7Table": ""
  },
  "PV1.36": {
    "dataType": "IS",
    "longName": "Discharge Disposition",
    "hl7Table": "HL70112"
  },
  "ABS.6": {"dataType": "CE", "longName": "Triage Code", "hl7Table": "HL70422"},
  "IN3.6": {
    "dataType": "TS",
    "longName": "Certification Date/Time",
    "hl7Table": ""
  },
  "AUT.3": {
    "dataType": "ST",
    "longName": "Authorizing Payor, Company Name",
    "hl7Table": ""
  },
  "SCH.8": {
    "dataType": "CE",
    "longName": "Appointment Type",
    "hl7Table": "HL70277"
  },
  "OBX.13": {
    "dataType": "ST",
    "longName": "User Defined Access Checks",
    "hl7Table": ""
  },
  "UB1.22": {"dataType": "ST", "longName": "UB-82 Locator 27", "hl7Table": ""},
  "SAC.21": {"dataType": "NM", "longName": "Container Volume", "hl7Table": ""},
  "RXG.15": {"dataType": "ST", "longName": "Give Rate Amount", "hl7Table": ""},
  "RXE.28": {
    "dataType": "NM",
    "longName": "Dispense Package Size",
    "hl7Table": ""
  },
  "CER.22": {
    "dataType": "CWE",
    "longName": "Jurisdiction Breadth",
    "hl7Table": "HL70547"
  },
  "OM1.32": {
    "dataType": "TX",
    "longName": "Interpretation of Observations",
    "hl7Table": ""
  },
  "NSC.1": {
    "dataType": "IS",
    "longName": "Application Change Type",
    "hl7Table": "HL70409"
  },
  "LOC.4": {
    "dataType": "XON",
    "longName": "Organization Name - LOC",
    "hl7Table": ""
  },
  "RXA.3": {
    "dataType": "TS",
    "longName": "Date/Time Start of Administration",
    "hl7Table": ""
  },
  "STF.15": {"dataType": "ST", "longName": "E-Mail Address", "hl7Table": ""},
  "OM1.6": {
    "dataType": "TX",
    "longName": "Observation Description",
    "hl7Table": ""
  },
  "IN2.30": {"dataType": "DDI", "longName": "Daily Deductible", "hl7Table": ""},
  "PEO.22": {
    "dataType": "ID",
    "longName": "Primary Observer's Qualification",
    "hl7Table": "HL70242"
  },
  "PDA.6": {
    "dataType": "ID",
    "longName": "Autopsy Indicator",
    "hl7Table": "HL70136"
  },
  "OBX.6": {"dataType": "CE", "longName": "Units", "hl7Table": ""},
  "ITM.3": {
    "dataType": "CWE",
    "longName": "Item Status",
    "hl7Table": "HL70776"
  },
  "OBR.19": {"dataType": "ST", "longName": "Placer Field 2", "hl7Table": ""},
  "BHS.5": {
    "dataType": "HD",
    "longName": "Batch Receiving Application",
    "hl7Table": ""
  },
  "IN1.20": {
    "dataType": "IS",
    "longName": "Assignment Of Benefits",
    "hl7Table": "HL70135"
  },
  "RXO.22": {
    "dataType": "CE",
    "longName": "Requested Give Rate Units",
    "hl7Table": ""
  },
  "BPO.12": {
    "dataType": "XAD",
    "longName": "BP Requested Dispense To Address",
    "hl7Table": ""
  },
  "AIP.8": {
    "dataType": "CE",
    "longName": "Start Date/Time Offset Units",
    "hl7Table": ""
  },
  "IVT.26": {
    "dataType": "CNE",
    "longName": "Operating Room Par Level Indicator",
    "hl7Table": "HL70532"
  },
  "AIP.10": {"dataType": "CE", "longName": "Duration Units", "hl7Table": ""},
  "RDF.1": {
    "dataType": "NM",
    "longName": "Number of Columns per Row",
    "hl7Table": ""
  },
  "CSP.4": {
    "dataType": "CE",
    "longName": "Study Phase Evaluability",
    "hl7Table": ""
  },
  "MRG.2": {
    "dataType": "CX",
    "longName": "Prior Alternate Patient ID",
    "hl7Table": ""
  },
  "OM1.12": {
    "dataType": "ID",
    "longName": "Orderability",
    "hl7Table": "HL70136"
  },
  "PRB.9": {
    "dataType": "TS",
    "longName": "Actual Problem Resolution Date/Time",
    "hl7Table": ""
  },
  "URS.4": {
    "dataType": "ST",
    "longName": "R/U What User Qualifier",
    "hl7Table": ""
  },
  "CM0.5": {"dataType": "XCN", "longName": "Chairman of Study", "hl7Table": ""},
  "INV.3": {
    "dataType": "CE",
    "longName": "Substance Type",
    "hl7Table": "HL70384"
  },
  "PV1.16": {
    "dataType": "IS",
    "longName": "VIP Indicator",
    "hl7Table": "HL70099"
  },
  "CON.14": {
    "dataType": "TS",
    "longName": "Consent Effective Date/Time",
    "hl7Table": ""
  },
  "RXD.25": {
    "dataType": "CE",
    "longName": "Supplementary Code",
    "hl7Table": ""
  },
  "UB2.12": {
    "dataType": "ST",
    "longName": "Document Control Number",
    "hl7Table": ""
  },
  "IN2.47": {"dataType": "JCC", "longName": "Job Code/Class", "hl7Table": ""},
  "AIL.3": {
    "dataType": "PL",
    "longName": "Location Resource ID",
    "hl7Table": ""
  },
  "MFE.2": {"dataType": "ST", "longName": "MFN Control ID", "hl7Table": ""},
  "SPM.2": {"dataType": "EIP", "longName": "Specimen ID", "hl7Table": ""},
  "RCP.4": {
    "dataType": "TS",
    "longName": "Execution and Delivery Time",
    "hl7Table": ""
  },
  "BPX.19": {
    "dataType": "XAD",
    "longName": "BP Actual Dispensed To Address",
    "hl7Table": ""
  },
  "PID.14": {
    "dataType": "XTN",
    "longName": "Phone Number - Business",
    "hl7Table": ""
  },
  "ORC.14": {
    "dataType": "XTN",
    "longName": "Call Back Phone Number",
    "hl7Table": ""
  },
  "FT1.27": {
    "dataType": "CE",
    "longName": "Advanced Beneficiary Notice Code",
    "hl7Table": "HL70339"
  },
  "OM1.45": {
    "dataType": "CE",
    "longName": "Relationship Modifier",
    "hl7Table": "HL70258"
  },
  "NK1.25": {"dataType": "CE", "longName": "Religion", "hl7Table": "HL70006"},
  "GOL.1": {"dataType": "ID", "longName": "Action Code", "hl7Table": "HL70287"},
  "OBR.39": {
    "dataType": "CE",
    "longName": "Collector's Comment *",
    "hl7Table": ""
  },
  "UB2.9": {
    "dataType": "ST",
    "longName": "UB92 Locator 2 (State)",
    "hl7Table": ""
  },
  "PV1.41": {
    "dataType": "IS",
    "longName": "Account Status",
    "hl7Table": "HL70117"
  },
  "EVN.6": {"dataType": "TS", "longName": "Event Occurred", "hl7Table": ""},
  "TXA.8": {"dataType": "TS", "longName": "Edit Date/Time", "hl7Table": ""},
  "STF.35": {
    "dataType": "DT",
    "longName": "Expected Return Date",
    "hl7Table": ""
  },
  "IN2.10": {
    "dataType": "ST",
    "longName": "Military ID Number",
    "hl7Table": ""
  },
  "FHS.7": {
    "dataType": "TS",
    "longName": "File Creation Date/Time",
    "hl7Table": ""
  },
  "IIM.2": {"dataType": "CWE", "longName": "Service Item Code", "hl7Table": ""},
  "BPX.5": {"dataType": "EI", "longName": "BC Donation ID", "hl7Table": ""},
  "ILT.5": {
    "dataType": "NM",
    "longName": "Inventory Received Quantity",
    "hl7Table": ""
  },
  "MFA.5": {
    "dataType": "varies",
    "longName": "Primary Key Value - MFA",
    "hl7Table": "HL79999"
  },
  "AIS.1": {"dataType": "SI", "longName": "Set ID - AIS", "hl7Table": ""},
  "IVT.10": {
    "dataType": "EI",
    "longName": "Default Inventory Asset Account",
    "hl7Table": ""
  },
  "NK1.33": {
    "dataType": "CX",
    "longName": "Next of Kin/Associated Party's Identifiers",
    "hl7Table": ""
  },
  "SAC.40": {
    "dataType": "CE",
    "longName": "System Induced Contaminants",
    "hl7Table": "HL70374"
  },
  "GP1.2": {
    "dataType": "IS",
    "longName": "Revenue Code",
    "hl7Table": "HL70456"
  },
  "RXG.9": {
    "dataType": "CE",
    "longName": "Administration Notes",
    "hl7Table": ""
  },
  "RXO.14": {
    "dataType": "XCN",
    "longName": "Ordering Provider's DEA Number",
    "hl7Table": ""
  },
  "IN1.16": {"dataType": "XPN", "longName": "Name Of Insured", "hl7Table": ""},
  "FT1.31": {
    "dataType": "SI",
    "longName": "Transaction Reference Key",
    "hl7Table": ""
  },
  "CM1.1": {"dataType": "SI", "longName": "Set ID - CM1", "hl7Table": ""},
  "LDP.1": {
    "dataType": "PL",
    "longName": "Primary Key Value - LDP",
    "hl7Table": ""
  },
  "TQ1.9": {"dataType": "CWE", "longName": "Priority", "hl7Table": "HL70485"},
  "EDU.7": {
    "dataType": "CE",
    "longName": "School Type Code",
    "hl7Table": "HL70402"
  },
  "PEO.14": {
    "dataType": "FT",
    "longName": "Event From Original Reporter",
    "hl7Table": ""
  },
  "STF.23": {
    "dataType": "ID",
    "longName": "Copy Auto Ins",
    "hl7Table": "HL70136"
  },
  "INV.11": {"dataType": "CE", "longName": "Quantity Units", "hl7Table": ""},
  "PV2.47": {
    "dataType": "TS",
    "longName": "Expected LOA Return Date/Time",
    "hl7Table": ""
  },
  "MSA.5": {
    "dataType": "NUL",
    "longName": "Delayed Acknowledgment Type",
    "hl7Table": ""
  },
  "IN1.41": {
    "dataType": "CP",
    "longName": "Room Rate - Private",
    "hl7Table": ""
  },
  "CER.14": {
    "dataType": "CWE",
    "longName":
        "Subject Directory Attribute Extension (Health Professional Data)",
    "hl7Table": ""
  },
  "MSH.6": {
    "dataType": "HD",
    "longName": "Receiving Facility",
    "hl7Table": "HL70362"
  },
  "VND.4": {
    "dataType": "EI",
    "longName": "Vendor Catalog Number",
    "hl7Table": ""
  },
  "FHS.11": {"dataType": "ST", "longName": "File Control ID", "hl7Table": ""},
  "URD.1": {"dataType": "TS", "longName": "R/U Date/Time", "hl7Table": ""},
  "RXG.23": {
    "dataType": "NM",
    "longName": "Give Drug Strength Volume",
    "hl7Table": ""
  },
  "SAC.17": {
    "dataType": "NM",
    "longName": "Container Diameter",
    "hl7Table": ""
  },
  "UB1.14": {
    "dataType": "DT",
    "longName": "PSRO/UR Approved Stay-Fm (88)",
    "hl7Table": ""
  },
  "DRG.7": {"dataType": "CP", "longName": "Outlier Cost", "hl7Table": ""},
  "OBX.25": {
    "dataType": "XCN",
    "longName": "Performing Organization Medical Director",
    "hl7Table": ""
  },
  "RF1.9": {"dataType": "TS", "longName": "Process Date", "hl7Table": ""},
  "CSR.10": {
    "dataType": "CE",
    "longName": "Patient Study Eligibility Status",
    "hl7Table": ""
  },
  "PSH.14": {
    "dataType": "NM",
    "longName": "Number of Product Experience Reports Filed by Distributor",
    "hl7Table": ""
  },
  "TXA.11": {
    "dataType": "XCN",
    "longName": "Transcriptionist Code/Name",
    "hl7Table": ""
  },
  "PV2.6": {
    "dataType": "ST",
    "longName": "Patient Valuables Location",
    "hl7Table": ""
  },
  "IN2.51": {
    "dataType": "IS",
    "longName": "Employer Contact Reason",
    "hl7Table": "HL70222"
  },
  "MFI.2": {
    "dataType": "HD",
    "longName": "Master File Application Identifier",
    "hl7Table": "HL70361"
  },
  "SPM.26": {
    "dataType": "NM",
    "longName": "Number of Specimen Containers",
    "hl7Table": ""
  },
  "RXD.33": {
    "dataType": "CWE",
    "longName": "Dispense Type",
    "hl7Table": "HL70484"
  },
  "TCD.3": {
    "dataType": "SN",
    "longName": "Rerun Dilution Factor",
    "hl7Table": ""
  },
  "EQP.4": {"dataType": "TS", "longName": "End Date/Time", "hl7Table": ""},
  "PV2.10": {
    "dataType": "NM",
    "longName": "Estimated Length of Inpatient Stay",
    "hl7Table": ""
  },
  "BTX.7": {"dataType": "EI", "longName": "CP Lot Number", "hl7Table": ""},
  "PID.7": {"dataType": "TS", "longName": "Date/Time of Birth", "hl7Table": ""},
  "EQL.3": {"dataType": "CE", "longName": "EQL Query Name", "hl7Table": ""},
  "RXA.26": {
    "dataType": "ID",
    "longName": "Pharmacy Order Type",
    "hl7Table": "HL70480"
  },
  "TCC.1": {
    "dataType": "CE",
    "longName": "Universal Service Identifier",
    "hl7Table": ""
  },
  "AIG.1": {"dataType": "SI", "longName": "Set ID - AIG", "hl7Table": ""},
  "RGS.3": {"dataType": "CE", "longName": "Resource Group ID", "hl7Table": ""},
  "ECR.1": {
    "dataType": "CE",
    "longName": "Command Response",
    "hl7Table": "HL70387"
  },
  "GOL.16": {"dataType": "CE", "longName": "Goal Evaluation", "hl7Table": ""},
  "GT1.56": {
    "dataType": "ST",
    "longName": "Guarantor Birth Place",
    "hl7Table": ""
  },
  "DSC.1": {
    "dataType": "ST",
    "longName": "Continuation Pointer",
    "hl7Table": ""
  },
  "NST.8": {"dataType": "NM", "longName": "Messages Received", "hl7Table": ""},
  "OM4.9": {
    "dataType": "TX",
    "longName": "Special Handling Requirements",
    "hl7Table": ""
  },
  "SCH.15": {
    "dataType": "PL",
    "longName": "Placer Contact Location",
    "hl7Table": ""
  },
  "ERR.3": {
    "dataType": "CWE",
    "longName": "HL7 Error Code",
    "hl7Table": "HL70357"
  },
  "GP2.7": {
    "dataType": "CE",
    "longName": "Ambulatory Payment Classification Code",
    "hl7Table": "HL70466"
  },
  "ARQ.8": {
    "dataType": "CE",
    "longName": "Appointment Type",
    "hl7Table": "HL70277"
  },
  "CSR.5": {
    "dataType": "CX",
    "longName": "Alternate Patient ID - CSR",
    "hl7Table": ""
  },
  "OM4.11": {
    "dataType": "CQ",
    "longName": "Minimum Collection Volume",
    "hl7Table": ""
  },
  "CM2.4": {
    "dataType": "CE",
    "longName": "Events Scheduled This Time Point",
    "hl7Table": ""
  },
  "MSH.17": {
    "dataType": "ID",
    "longName": "Country Code",
    "hl7Table": "HL70399"
  },
  "LCH.5": {
    "dataType": "CE",
    "longName": "Location Characteristic Value-LCH",
    "hl7Table": "HL70136"
  },
  "PV1.3": {
    "dataType": "PL",
    "longName": "Assigned Patient Location",
    "hl7Table": ""
  },
  "RXE.32": {
    "dataType": "TS",
    "longName": "Original Order Date/Time",
    "hl7Table": ""
  },
  "OM1.28": {
    "dataType": "XAD",
    "longName": "Address of Outside Site(s)",
    "hl7Table": ""
  },
  "LAN.4": {
    "dataType": "CE",
    "longName": "Language Proficiency Code",
    "hl7Table": "HL70404"
  },
  "CER.3": {"dataType": "ST", "longName": "Version", "hl7Table": ""},
  "STF.2": {
    "dataType": "CX",
    "longName": "Staff Identifier List",
    "hl7Table": ""
  },
  "SCH.4": {
    "dataType": "EI",
    "longName": "Placer Group Number",
    "hl7Table": ""
  },
  "OBR.42": {
    "dataType": "ID",
    "longName": "Escort Required",
    "hl7Table": "HL70225"
  },
  "BTX.17": {
    "dataType": "TS",
    "longName": "BP Transfusion End Date/Time of Status",
    "hl7Table": ""
  },
  "ARQ.24": {
    "dataType": "EI",
    "longName": "Placer Order Number",
    "hl7Table": ""
  },
  "PD1.7": {
    "dataType": "IS",
    "longName": "Living Will Code",
    "hl7Table": "HL70315"
  },
  "RXE.24": {"dataType": "CE", "longName": "Give Rate Units", "hl7Table": ""},
  "RXG.19": {
    "dataType": "ST",
    "longName": "Substance Lot Number",
    "hl7Table": ""
  },
  "PID.38": {
    "dataType": "CE",
    "longName": "Production Class Code",
    "hl7Table": "HL70429"
  },
  "GT1.17": {
    "dataType": "XAD",
    "longName": "Guarantor Employer Address",
    "hl7Table": ""
  },
  "PR1.18": {
    "dataType": "CE",
    "longName": "Tissue Type Code",
    "hl7Table": "HL70417"
  },
  "DSP.3": {"dataType": "TX", "longName": "Data Line", "hl7Table": ""},
  "CSS.1": {
    "dataType": "CE",
    "longName": "Study Scheduled Time Point",
    "hl7Table": ""
  },
  "RXE.8": {
    "dataType": "LA1",
    "longName": "Deliver-To Location",
    "hl7Table": ""
  },
  "ITM.16": {
    "dataType": "XON",
    "longName": "Approving Regulatory Agency",
    "hl7Table": "HL70790"
  },
  "PR1.1": {"dataType": "SI", "longName": "Set ID - PR1", "hl7Table": ""},
  "PRB.24": {
    "dataType": "ST",
    "longName": "Family/Significant Other Awareness of Problem/Prognosis",
    "hl7Table": ""
  },
  "OBR.15": {"dataType": "SPS", "longName": "Specimen Source", "hl7Table": ""},
  "AIP.4": {
    "dataType": "CE",
    "longName": "Resource Type",
    "hl7Table": "HL70182"
  },
  "OM7.17": {
    "dataType": "NM",
    "longName": "Consent Waiting Period Quantity",
    "hl7Table": ""
  },
  "IN3.11": {"dataType": "DTN", "longName": "Days", "hl7Table": ""},
  "BHS.9": {"dataType": "ST", "longName": "Batch Name/ID/Type", "hl7Table": ""},
  "TQ1.14": {
    "dataType": "NM",
    "longName": "Total occurrence's",
    "hl7Table": ""
  },
  "LOC.8": {
    "dataType": "IS",
    "longName": "Location Equipment",
    "hl7Table": "HL70261"
  },
  "GT1.40": {
    "dataType": "IS",
    "longName": "Student Indicator",
    "hl7Table": "HL70231"
  },
  "SAC.1": {
    "dataType": "EI",
    "longName": "External Accession Identifier",
    "hl7Table": ""
  },
  "QRD.11": {
    "dataType": "VR",
    "longName": "What Data Code Value Qual.",
    "hl7Table": ""
  },
  "PKG.5": {"dataType": "CP", "longName": "Price", "hl7Table": ""},
  "STF.19": {"dataType": "JCC", "longName": "Job Code/Class", "hl7Table": ""},
  "LOC.9": {
    "dataType": "IS",
    "longName": "Location Service Code",
    "hl7Table": "HL70442"
  },
  "GT1.41": {"dataType": "CE", "longName": "Religion", "hl7Table": "HL70006"},
  "QRD.10": {
    "dataType": "CE",
    "longName": "What Department Data Code",
    "hl7Table": ""
  },
  "PKG.4": {"dataType": "NM", "longName": "Package Quantity", "hl7Table": ""},
  "STF.18": {"dataType": "ST", "longName": "Job Title", "hl7Table": ""},
  "PRB.25": {
    "dataType": "CE",
    "longName": "Security/Sensitivity",
    "hl7Table": ""
  },
  "OBR.14": {
    "dataType": "TS",
    "longName": "Specimen Received Date/Time",
    "hl7Table": ""
  },
  "AIP.5": {"dataType": "CE", "longName": "Resource Group", "hl7Table": ""},
  "OM7.16": {
    "dataType": "CE",
    "longName": "Consent Interval Units",
    "hl7Table": "HL70414"
  },
  "BHS.8": {"dataType": "ST", "longName": "Batch Security", "hl7Table": ""},
  "IN3.10": {
    "dataType": "DT",
    "longName": "Certification End Date",
    "hl7Table": ""
  },
  "PID.39": {
    "dataType": "CWE",
    "longName": "Tribal Citizenship",
    "hl7Table": "HL70171"
  },
  "PR1.19": {
    "dataType": "EI",
    "longName": "Procedure Identifier",
    "hl7Table": ""
  },
  "GT1.16": {
    "dataType": "XPN",
    "longName": "Guarantor Employer Name",
    "hl7Table": ""
  },
  "DSP.2": {"dataType": "SI", "longName": "Display Level", "hl7Table": ""},
  "RXE.9": {
    "dataType": "ID",
    "longName": "Substitution Status",
    "hl7Table": "HL70167"
  },
  "ITM.17": {
    "dataType": "CNE",
    "longName": "Latex Indicator",
    "hl7Table": "HL70532"
  },
  "STF.3": {"dataType": "XPN", "longName": "Staff Name", "hl7Table": ""},
  "SCH.5": {"dataType": "CE", "longName": "Schedule ID", "hl7Table": ""},
  "OBR.43": {
    "dataType": "CE",
    "longName": "Planned Patient Transport Comment",
    "hl7Table": ""
  },
  "RQD.1": {
    "dataType": "SI",
    "longName": "Requisition Line Number",
    "hl7Table": ""
  },
  "BTX.16": {
    "dataType": "TS",
    "longName": "BP Transfusion Start Date/Time of Status",
    "hl7Table": ""
  },
  "PD1.6": {"dataType": "IS", "longName": "Handicap", "hl7Table": "HL70295"},
  "ARQ.25": {
    "dataType": "EI",
    "longName": "Filler Order Number",
    "hl7Table": ""
  },
  "RXG.18": {
    "dataType": "CE",
    "longName": "Give Strength Units",
    "hl7Table": ""
  },
  "RXE.25": {"dataType": "NM", "longName": "Give Strength", "hl7Table": ""},
  "CER.2": {"dataType": "ST", "longName": "Serial Number", "hl7Table": ""},
  "ECD.1": {
    "dataType": "NM",
    "longName": "Reference Command Number",
    "hl7Table": ""
  },
  "MSH.16": {
    "dataType": "ID",
    "longName": "Application Acknowledgment Type",
    "hl7Table": "HL70155"
  },
  "SFT.1": {
    "dataType": "XON",
    "longName": "Software Vendor Organization",
    "hl7Table": ""
  },
  "LCH.4": {
    "dataType": "CE",
    "longName": "Location Characteristic ID",
    "hl7Table": "HL70324"
  },
  "PV1.2": {
    "dataType": "IS",
    "longName": "Patient Class",
    "hl7Table": "HL70004"
  },
  "RXE.33": {
    "dataType": "NM",
    "longName": "Give Drug Strength Volume",
    "hl7Table": ""
  },
  "OM1.29": {
    "dataType": "XTN",
    "longName": "Phone Number of Outside Site",
    "hl7Table": ""
  },
  "GT1.57": {
    "dataType": "IS",
    "longName": "VIP Indicator",
    "hl7Table": "HL70099"
  },
  "GOL.17": {
    "dataType": "ST",
    "longName": "Goal Evaluation Comment",
    "hl7Table": ""
  },
  "NST.9": {"dataType": "NM", "longName": "Messages Sent", "hl7Table": ""},
  "OM4.8": {"dataType": "TX", "longName": "Preparation", "hl7Table": ""},
  "ERR.2": {"dataType": "ERL", "longName": "Error Location", "hl7Table": ""},
  "SCH.14": {
    "dataType": "XAD",
    "longName": "Placer Contact Address",
    "hl7Table": ""
  },
  "GP2.6": {
    "dataType": "IS",
    "longName": "OCE Edit Code",
    "hl7Table": "HL70458"
  },
  "ARQ.9": {
    "dataType": "NM",
    "longName": "Appointment Duration",
    "hl7Table": ""
  },
  "CSR.4": {"dataType": "CX", "longName": "Sponsor Patient ID", "hl7Table": ""},
  "LRL.1": {
    "dataType": "PL",
    "longName": "Primary Key Value - LRL",
    "hl7Table": ""
  },
  "OM4.10": {
    "dataType": "CQ",
    "longName": "Normal Collection Volume",
    "hl7Table": ""
  },
  "PID.6": {
    "dataType": "XPN",
    "longName": "Mother's Maiden Name",
    "hl7Table": ""
  },
  "CTD.1": {
    "dataType": "CE",
    "longName": "Contact Role",
    "hl7Table": "HL70131"
  },
  "EQL.2": {
    "dataType": "ID",
    "longName": "Query/Response Format Code",
    "hl7Table": "HL70106"
  },
  "RGS.2": {
    "dataType": "ID",
    "longName": "Segment Action Code",
    "hl7Table": "HL70206"
  },
  "PV2.7": {
    "dataType": "IS",
    "longName": "Visit User Code",
    "hl7Table": "HL70130"
  },
  "IN2.50": {
    "dataType": "XTN",
    "longName": "Employer Contact Person Phone Number",
    "hl7Table": ""
  },
  "MFI.3": {
    "dataType": "ID",
    "longName": "File-Level Event Code",
    "hl7Table": "HL70178"
  },
  "IAM.20": {
    "dataType": "TS",
    "longName": "Statused at Date/Time",
    "hl7Table": ""
  },
  "SPM.27": {"dataType": "CWE", "longName": "Container Type", "hl7Table": ""},
  "RXD.32": {
    "dataType": "ID",
    "longName": "Pharmacy Order Type",
    "hl7Table": "HL70480"
  },
  "TCD.2": {
    "dataType": "SN",
    "longName": "Auto-Dilution Factor",
    "hl7Table": ""
  },
  "EQP.5": {"dataType": "FT", "longName": "Transaction Data", "hl7Table": ""},
  "PV2.11": {
    "dataType": "NM",
    "longName": "Actual Length of Inpatient Stay",
    "hl7Table": ""
  },
  "BTX.6": {"dataType": "XON", "longName": "CP Manufacturer", "hl7Table": ""},
  "MSA.4": {
    "dataType": "NM",
    "longName": "Expected Sequence Number",
    "hl7Table": ""
  },
  "IN1.40": {
    "dataType": "CP",
    "longName": "Room Rate - Semi-Private",
    "hl7Table": ""
  },
  "CER.15": {
    "dataType": "CWE",
    "longName": "Subject Public Key Info",
    "hl7Table": ""
  },
  "MSH.7": {
    "dataType": "TS",
    "longName": "Date/Time Of Message",
    "hl7Table": ""
  },
  "VND.5": {
    "dataType": "CNE",
    "longName": "Primary Vendor Indicator",
    "hl7Table": ""
  },
  "FHS.10": {
    "dataType": "ST",
    "longName": "File Header Comment",
    "hl7Table": ""
  },
  "RXG.22": {"dataType": "CE", "longName": "Indication", "hl7Table": ""},
  "UB1.15": {
    "dataType": "DT",
    "longName": "PSRO/UR Approved Stay-To (89)",
    "hl7Table": ""
  },
  "SAC.16": {"dataType": "NM", "longName": "Container Height", "hl7Table": ""},
  "OBX.24": {
    "dataType": "XAD",
    "longName": "Performing Organization Address",
    "hl7Table": ""
  },
  "DRG.6": {"dataType": "NM", "longName": "Outlier Days", "hl7Table": ""},
  "RF1.8": {"dataType": "TS", "longName": "Expiration Date", "hl7Table": ""},
  "CSR.11": {
    "dataType": "TS",
    "longName": "Study Randomization Date/time",
    "hl7Table": ""
  },
  "TXA.10": {
    "dataType": "XCN",
    "longName": "Assigned Document Authenticator",
    "hl7Table": ""
  },
  "PEO.15": {
    "dataType": "FT",
    "longName": "Event Description From Patient",
    "hl7Table": ""
  },
  "STF.22": {
    "dataType": "DLN",
    "longName": "Driver's License Number - Staff",
    "hl7Table": ""
  },
  "INV.10": {
    "dataType": "NM",
    "longName": "Consumption Quantity",
    "hl7Table": ""
  },
  "BPO.1": {"dataType": "SI", "longName": "Set ID - BPO", "hl7Table": ""},
  "PV2.46": {
    "dataType": "DT",
    "longName": "Patient Status Effective Date",
    "hl7Table": ""
  },
  "IVT.11": {
    "dataType": "CNE",
    "longName": "Patient Chargeable Indicator",
    "hl7Table": "HL70532"
  },
  "NK1.32": {
    "dataType": "XAD",
    "longName": "Contact Person's Address",
    "hl7Table": ""
  },
  "SAC.41": {
    "dataType": "CE",
    "longName": "Drug Interference",
    "hl7Table": "HL70382"
  },
  "GP1.3": {
    "dataType": "IS",
    "longName": "Overall Claim Disposition Code",
    "hl7Table": "HL70457"
  },
  "RXG.8": {"dataType": "CE", "longName": "Give Dosage Form", "hl7Table": ""},
  "RXO.15": {
    "dataType": "XCN",
    "longName": "Pharmacist/Treatment Supplier's Verifier ID",
    "hl7Table": ""
  },
  "IN1.17": {
    "dataType": "CE",
    "longName": "Insured's Relationship To Patient",
    "hl7Table": "HL70063"
  },
  "FT1.30": {
    "dataType": "CX",
    "longName": "Payment Reference ID",
    "hl7Table": ""
  },
  "CDM.1": {
    "dataType": "CE",
    "longName": "Primary Key Value - CDM",
    "hl7Table": "HL70132"
  },
  "EDU.6": {"dataType": "XON", "longName": "School", "hl7Table": ""},
  "TQ1.8": {"dataType": "TS", "longName": "End date/time", "hl7Table": ""},
  "SPR.1": {"dataType": "ST", "longName": "Query Tag", "hl7Table": ""},
  "STF.34": {
    "dataType": "DR",
    "longName": "Institution Relationship Period",
    "hl7Table": ""
  },
  "IN2.11": {
    "dataType": "CE",
    "longName": "Dependent Of Military Recipient",
    "hl7Table": "HL70342"
  },
  "IIM.3": {
    "dataType": "ST",
    "longName": "Inventory Lot Number",
    "hl7Table": ""
  },
  "FHS.6": {
    "dataType": "HD",
    "longName": "File Receiving Facility",
    "hl7Table": ""
  },
  "BPX.4": {
    "dataType": "TS",
    "longName": "BP Date/Time of Status",
    "hl7Table": ""
  },
  "ILT.4": {
    "dataType": "DTM",
    "longName": "Inventory Received Date",
    "hl7Table": ""
  },
  "STZ.4": {
    "dataType": "CWE",
    "longName": "Maintenance Type",
    "hl7Table": "HL70811"
  },
  "MFA.4": {
    "dataType": "CE",
    "longName": "MFN Record Level Error Return",
    "hl7Table": "HL70181"
  },
  "FT1.26": {
    "dataType": "CE",
    "longName": "Procedure Code Modifier",
    "hl7Table": "HL70340"
  },
  "ORC.15": {
    "dataType": "TS",
    "longName": "Order Effective Date/Time",
    "hl7Table": ""
  },
  "OM1.44": {
    "dataType": "TX",
    "longName": "Challenge Information",
    "hl7Table": "HL70256"
  },
  "NK1.24": {
    "dataType": "IS",
    "longName": "Student Indicator",
    "hl7Table": "HL70231"
  },
  "OBR.38": {
    "dataType": "CE",
    "longName": "Transport Logistics of Collected Sample",
    "hl7Table": ""
  },
  "UB2.8": {
    "dataType": "OSP",
    "longName": "Occurrence Span Code/Dates (36)",
    "hl7Table": ""
  },
  "PV1.40": {"dataType": "IS", "longName": "Bed Status", "hl7Table": "HL70116"},
  "EVN.7": {"dataType": "HD", "longName": "Event Facility", "hl7Table": ""},
  "TXA.9": {
    "dataType": "XCN",
    "longName": "Originator Code/Name",
    "hl7Table": ""
  },
  "RXD.24": {
    "dataType": "ID",
    "longName": "Dispense Package Method",
    "hl7Table": "HL70321"
  },
  "UB2.13": {
    "dataType": "ST",
    "longName": "UB92 Locator 49 (National)",
    "hl7Table": ""
  },
  "IN2.46": {"dataType": "ST", "longName": "Job Title", "hl7Table": ""},
  "AIL.2": {
    "dataType": "ID",
    "longName": "Segment Action Code",
    "hl7Table": "HL70206"
  },
  "MFE.3": {
    "dataType": "TS",
    "longName": "Effective Date/Time",
    "hl7Table": ""
  },
  "SPM.3": {
    "dataType": "EIP",
    "longName": "Specimen Parent IDs",
    "hl7Table": ""
  },
  "RCP.5": {
    "dataType": "ID",
    "longName": "Modify Indicator",
    "hl7Table": "HL70395"
  },
  "BPX.18": {
    "dataType": "PL",
    "longName": "BP Actual Dispensed To Location",
    "hl7Table": ""
  },
  "PID.15": {
    "dataType": "CE",
    "longName": "Primary Language",
    "hl7Table": "HL70296"
  },
  "FT1.1": {"dataType": "SI", "longName": "Set ID - FT1", "hl7Table": ""},
  "AIP.11": {
    "dataType": "IS",
    "longName": "Allow Substitution Code",
    "hl7Table": "HL70279"
  },
  "MRG.3": {
    "dataType": "CX",
    "longName": "Prior Patient Account Number",
    "hl7Table": ""
  },
  "GT1.1": {"dataType": "SI", "longName": "Set ID - GT1", "hl7Table": ""},
  "OM1.13": {
    "dataType": "CE",
    "longName": "Identity of Instrument Used to Perform this Study",
    "hl7Table": "HL79999"
  },
  "PRB.8": {
    "dataType": "TS",
    "longName": "Anticipated Problem Resolution Date/Time",
    "hl7Table": ""
  },
  "URS.5": {
    "dataType": "ST",
    "longName": "R/U Other Results Subject Definition",
    "hl7Table": ""
  },
  "CM0.4": {"dataType": "ST", "longName": "Title of Study", "hl7Table": ""},
  "INV.2": {
    "dataType": "CE",
    "longName": "Substance Status",
    "hl7Table": "HL70383"
  },
  "CON.15": {
    "dataType": "TS",
    "longName": "Consent End Date/Time",
    "hl7Table": ""
  },
  "PV1.17": {
    "dataType": "XCN",
    "longName": "Admitting Doctor",
    "hl7Table": "HL70010"
  },
  "OBX.7": {"dataType": "ST", "longName": "References Range", "hl7Table": ""},
  "OBR.18": {"dataType": "ST", "longName": "Placer Field 1", "hl7Table": ""},
  "ITM.2": {"dataType": "ST", "longName": "Item Description", "hl7Table": ""},
  "IN1.21": {
    "dataType": "IS",
    "longName": "Coordination Of Benefits",
    "hl7Table": "HL70173"
  },
  "BHS.4": {
    "dataType": "HD",
    "longName": "Batch Sending Facility",
    "hl7Table": ""
  },
  "PCE.4": {
    "dataType": "CP",
    "longName": "Transaction Amount - Unit",
    "hl7Table": ""
  },
  "RXO.23": {"dataType": "CQ", "longName": "Total Daily Dose", "hl7Table": ""},
  "BPO.13": {
    "dataType": "CWE",
    "longName": "BP Indication for Use",
    "hl7Table": "HL70509"
  },
  "AIP.9": {"dataType": "NM", "longName": "Duration", "hl7Table": ""},
  "FAC.1": {"dataType": "EI", "longName": "Facility ID-FAC", "hl7Table": ""},
  "VAR.1": {
    "dataType": "EI",
    "longName": "Variance Instance ID",
    "hl7Table": ""
  },
  "LOC.5": {"dataType": "XAD", "longName": "Location Address", "hl7Table": ""},
  "RXA.2": {
    "dataType": "NM",
    "longName": "Administration Sub-ID Counter",
    "hl7Table": ""
  },
  "STF.14": {"dataType": "CE", "longName": "Backup Person ID", "hl7Table": ""},
  "OM1.7": {
    "dataType": "CE",
    "longName": "Other Service/Test/Observation IDs for the Observation",
    "hl7Table": "HL79999"
  },
  "IN2.31": {
    "dataType": "IS",
    "longName": "Living Dependency",
    "hl7Table": "HL70223"
  },
  "PEO.23": {
    "dataType": "ID",
    "longName": "Confirmation Provided By",
    "hl7Table": "HL70242"
  },
  "UB1.1": {"dataType": "SI", "longName": "Set ID - UB1", "hl7Table": ""},
  "PDA.7": {
    "dataType": "DR",
    "longName": "Autopsy Start and End Date/Time",
    "hl7Table": ""
  },
  "PV1.37": {
    "dataType": "DLD",
    "longName": "Discharged to Location",
    "hl7Table": "HL70113"
  },
  "ABS.7": {
    "dataType": "TS",
    "longName": "Abstract Completion Date/Time",
    "hl7Table": ""
  },
  "IN3.7": {
    "dataType": "TS",
    "longName": "Certification Modify Date/Time",
    "hl7Table": ""
  },
  "AUT.2": {
    "dataType": "CE",
    "longName": "Authorizing Payor, Company ID",
    "hl7Table": "HL70285"
  },
  "SCH.9": {
    "dataType": "NM",
    "longName": "Appointment Duration",
    "hl7Table": ""
  },
  "OBX.12": {
    "dataType": "TS",
    "longName": "Effective Date of Reference Range Values",
    "hl7Table": ""
  },
  "SAC.20": {
    "dataType": "CE",
    "longName": "Container Height/Diameter/Delta Units",
    "hl7Table": ""
  },
  "UB1.23": {"dataType": "ST", "longName": "UB-82 Locator 45", "hl7Table": ""},
  "RXE.29": {
    "dataType": "CE",
    "longName": "Dispense Package Size Unit",
    "hl7Table": ""
  },
  "RXG.14": {
    "dataType": "ST",
    "longName": "Give Per (Time Unit)",
    "hl7Table": ""
  },
  "CER.23": {"dataType": "TS", "longName": "Granting Date", "hl7Table": ""},
  "OM1.33": {
    "dataType": "CE",
    "longName": "Contraindications to Observations",
    "hl7Table": "HL79999"
  },
  "PV2.27": {
    "dataType": "IS",
    "longName": "Expected Discharge Disposition",
    "hl7Table": "HL70112"
  },
  "PRA.1": {
    "dataType": "CE",
    "longName": "Primary Key Value - PRA",
    "hl7Table": "HL79999"
  },
  "PEO.7": {
    "dataType": "XAD",
    "longName": "Event Location Occurred Address",
    "hl7Table": ""
  },
  "PR1.15": {
    "dataType": "CE",
    "longName": "Associated Diagnosis Code",
    "hl7Table": "HL70051"
  },
  "PID.35": {
    "dataType": "CE",
    "longName": "Species Code",
    "hl7Table": "HL70446"
  },
  "SPM.11": {
    "dataType": "CWE",
    "longName": "Specimen Role",
    "hl7Table": "HL70369"
  },
  "IAM.16": {
    "dataType": "CE",
    "longName": "Alert Device Code",
    "hl7Table": "HL70437"
  },
  "PD1.11": {
    "dataType": "CE",
    "longName": "Publicity Code",
    "hl7Table": "HL70215"
  },
  "IN2.66": {
    "dataType": "ID",
    "longName": "Suspend Flag",
    "hl7Table": "HL70136"
  },
  "RXE.5": {"dataType": "CE", "longName": "Give Units", "hl7Table": ""},
  "IVT.1": {"dataType": "SI", "longName": "Set Id", "hl7Table": ""},
  "PV1.21": {
    "dataType": "IS",
    "longName": "Charge Price Indicator",
    "hl7Table": "HL70032"
  },
  "CON.23": {
    "dataType": "CWE",
    "longName": "Non-subject Consenter Reason",
    "hl7Table": "HL70502"
  },
  "OM1.25": {
    "dataType": "ID",
    "longName": "Processing Priority",
    "hl7Table": "HL70168"
  },
  "RF1.10": {
    "dataType": "CE",
    "longName": "Referral Reason",
    "hl7Table": "HL70336"
  },
  "SAC.36": {"dataType": "NM", "longName": "Icterus Index", "hl7Table": ""},
  "PID.23": {"dataType": "ST", "longName": "Birth Place", "hl7Table": ""},
  "QAK.2": {
    "dataType": "ID",
    "longName": "Query Response Status",
    "hl7Table": "HL70208"
  },
  "IIM.13": {
    "dataType": "CWE",
    "longName": "Inventory On Hand Quantity Unit",
    "hl7Table": ""
  },
  "PV2.31": {
    "dataType": "IS",
    "longName": "Recurring Service Code",
    "hl7Table": "HL70219"
  },
  "QRD.2": {
    "dataType": "ID",
    "longName": "Query Format Code",
    "hl7Table": "HL70106"
  },
  "IN2.70": {
    "dataType": "XON",
    "longName": "Insured Employer Organization Name and ID",
    "hl7Table": ""
  },
  "DG1.1": {"dataType": "SI", "longName": "Set ID - DG1", "hl7Table": ""},
  "PRD.2": {"dataType": "XPN", "longName": "Provider Name", "hl7Table": ""},
  "RXD.12": {"dataType": "CQ", "longName": "Total Daily Dose", "hl7Table": ""},
  "IAM.2": {
    "dataType": "CE",
    "longName": "Allergen Type Code",
    "hl7Table": "HL70127"
  },
  "NK1.12": {
    "dataType": "CX",
    "longName": "Next of Kin / Associated Parties Employee Number",
    "hl7Table": ""
  },
  "IN2.3": {
    "dataType": "XCN",
    "longName": "Insured's Employer's Name and ID",
    "hl7Table": ""
  },
  "PCR.1": {"dataType": "CE", "longName": "Implicated Product", "hl7Table": ""},
  "ACC.1": {"dataType": "TS", "longName": "Accident Date/Time", "hl7Table": ""},
  "NST.14": {"dataType": "NM", "longName": "Receive Timeouts", "hl7Table": ""},
  "IN1.37": {"dataType": "CP", "longName": "Policy Deductible", "hl7Table": ""},
  "ORC.23": {
    "dataType": "XTN",
    "longName": "Ordering Facility Phone Number",
    "hl7Table": ""
  },
  "FT1.10": {
    "dataType": "NM",
    "longName": "Transaction Quantity",
    "hl7Table": ""
  },
  "SID.3": {
    "dataType": "ST",
    "longName": "Substance Container Identifier",
    "hl7Table": ""
  },
  "RXD.1": {
    "dataType": "NM",
    "longName": "Dispense Sub-ID Counter",
    "hl7Table": ""
  },
  "SCH.18": {
    "dataType": "XAD",
    "longName": "Filler Contact Address",
    "hl7Table": ""
  },
  "NST.5": {"dataType": "TS", "longName": "Statistics End", "hl7Table": ""},
  "OM4.4": {"dataType": "NM", "longName": "Container Volume", "hl7Table": ""},
  "PRC.12": {
    "dataType": "TS",
    "longName": "Effective End Date",
    "hl7Table": ""
  },
  "RQ1.3": {
    "dataType": "ST",
    "longName": "Manufacturer's Catalog",
    "hl7Table": ""
  },
  "AL1.4": {
    "dataType": "CE",
    "longName": "Allergy Severity Code",
    "hl7Table": "HL70128"
  },
  "IN2.27": {
    "dataType": "IS",
    "longName": "Eligibility Source",
    "hl7Table": "HL70144"
  },
  "TQ2.1": {"dataType": "SI", "longName": "Set ID - TQ2", "hl7Table": ""},
  "CSR.8": {
    "dataType": "XCN",
    "longName": "Study Authorizing Provider",
    "hl7Table": ""
  },
  "ARQ.5": {"dataType": "CE", "longName": "Schedule ID", "hl7Table": ""},
  "RXC.3": {"dataType": "NM", "longName": "Component Amount", "hl7Table": ""},
  "UB1.19": {
    "dataType": "DT",
    "longName": "Occur Span End Date (33)",
    "hl7Table": ""
  },
  "RXE.13": {
    "dataType": "XCN",
    "longName": "Ordering Provider's DEA Number",
    "hl7Table": ""
  },
  "OM3.6": {
    "dataType": "CE",
    "longName": "Critical Text/Codes for Categorical Observations",
    "hl7Table": "HL79999"
  },
  "ODT.2": {"dataType": "CE", "longName": "Service Period", "hl7Table": ""},
  "CER.19": {
    "dataType": "ID",
    "longName": "Jurisdiction Country",
    "hl7Table": "HL70399"
  },
  "ARQ.13": {
    "dataType": "RI",
    "longName": "Repeating Interval",
    "hl7Table": ""
  },
  "PDC.6": {"dataType": "ST", "longName": "Model Identifier", "hl7Table": ""},
  "RF1.4": {
    "dataType": "CE",
    "longName": "Referral Disposition",
    "hl7Table": "HL70282"
  },
  "CON.3": {"dataType": "ST", "longName": "Consent Form ID", "hl7Table": ""},
  "ITM.21": {
    "dataType": "MO",
    "longName": "Approved To Buy Price",
    "hl7Table": ""
  },
  "VTQ.4": {"dataType": "CE", "longName": "Virtual Table Name", "hl7Table": ""},
  "GP2.12": {
    "dataType": "IS",
    "longName": "Reimbursement Type Code",
    "hl7Table": "HL70470"
  },
  "AFF.1": {"dataType": "SI", "longName": "Set ID - AFF", "hl7Table": ""},
  "GT1.20": {
    "dataType": "IS",
    "longName": "Guarantor Employment Status",
    "hl7Table": "HL70066"
  },
  "TCC.14": {
    "dataType": "CE",
    "longName": "Processing Type",
    "hl7Table": "HL70388"
  },
  "NTE.2": {
    "dataType": "ID",
    "longName": "Source of Comment",
    "hl7Table": "HL70105"
  },
  "RXO.19": {
    "dataType": "CE",
    "longName": "Requested Give Strength Units",
    "hl7Table": ""
  },
  "OM7.20": {"dataType": "XCN", "longName": "Entered By", "hl7Table": ""},
  "RXG.4": {"dataType": "CE", "longName": "Give Code", "hl7Table": "HL70292"},
  "OM7.1": {
    "dataType": "NM",
    "longName": "Sequence Number - Test/Observation Master File",
    "hl7Table": ""
  },
  "RXE.44": {
    "dataType": "ID",
    "longName": "Pharmacy Order Type",
    "hl7Table": "HL70480"
  },
  "TQ1.4": {"dataType": "TM", "longName": "Explicit Time", "hl7Table": ""},
  "OBR.22": {
    "dataType": "TS",
    "longName": "Results Rpt/Status Chng - Date/Time",
    "hl7Table": ""
  },
  "PRB.13": {
    "dataType": "CE",
    "longName": "Problem Confirmation Status",
    "hl7Table": ""
  },
  "IPC.1": {
    "dataType": "EI",
    "longName": "Accession Identifier",
    "hl7Table": ""
  },
  "PCR.13": {
    "dataType": "IS",
    "longName": "Product Available For Inspection",
    "hl7Table": "HL70246"
  },
  "PEO.19": {
    "dataType": "XPN",
    "longName": "Primary Observer Name",
    "hl7Table": ""
  },
  "IN1.6": {
    "dataType": "XPN",
    "longName": "Insurance Co Contact Person",
    "hl7Table": ""
  },
  "DG1.12": {"dataType": "NM", "longName": "Outlier Days", "hl7Table": ""},
  "NK1.28": {
    "dataType": "CE",
    "longName": "Ethnic Group",
    "hl7Table": "HL70189"
  },
  "QRF.3": {
    "dataType": "TS",
    "longName": "When Data End Date/Time",
    "hl7Table": ""
  },
  "ERR.10": {
    "dataType": "CWE",
    "longName": "Override Type",
    "hl7Table": "HL70518"
  },
  "DB1.2": {
    "dataType": "IS",
    "longName": "Disabled Person Code",
    "hl7Table": "HL70334"
  },
  "RXA.11": {
    "dataType": "LA2",
    "longName": "Administered-at Location",
    "hl7Table": ""
  },
  "ORC.19": {"dataType": "XCN", "longName": "Action By", "hl7Table": ""},
  "ORC.1": {
    "dataType": "ID",
    "longName": "Order Control",
    "hl7Table": "HL70119"
  },
  "TXA.5": {
    "dataType": "XCN",
    "longName": "Primary Activity Provider Code/Name",
    "hl7Table": ""
  },
  "UB2.4": {"dataType": "ST", "longName": "Covered Days (7)", "hl7Table": ""},
  "ROL.1": {"dataType": "EI", "longName": "Role Instance ID", "hl7Table": ""},
  "OBR.34": {"dataType": "NDL", "longName": "Technician", "hl7Table": ""},
  "OM2.2": {
    "dataType": "CE",
    "longName": "Units of Measure",
    "hl7Table": "HL79999"
  },
  "OBR.1": {"dataType": "SI", "longName": "Set ID - OBR", "hl7Table": ""},
  "STF.38": {
    "dataType": "CWE",
    "longName": "Inactive Reason Code",
    "hl7Table": "HL70540"
  },
  "SCH.22": {
    "dataType": "PL",
    "longName": "Entered By Location",
    "hl7Table": ""
  },
  "GOL.21": {"dataType": "XPN", "longName": "Goal Target Name", "hl7Table": ""},
  "BLC.1": {
    "dataType": "CE",
    "longName": "Blood Product Code",
    "hl7Table": "HL70426"
  },
  "BPX.8": {
    "dataType": "CWE",
    "longName": "CP Commercial Product",
    "hl7Table": "HL70512"
  },
  "ILT.8": {
    "dataType": "DTM",
    "longName": "Inventory On Hand Date",
    "hl7Table": ""
  },
  "CM0.8": {"dataType": "DT", "longName": "Last Accrual Date", "hl7Table": ""},
  "CNS.1": {
    "dataType": "NM",
    "longName": "Starting Notification Reference Number",
    "hl7Table": ""
  },
  "PRB.4": {
    "dataType": "EI",
    "longName": "Problem Instance ID",
    "hl7Table": ""
  },
  "URS.9": {
    "dataType": "TQ",
    "longName": "R/U Quantity/Timing Qualifier",
    "hl7Table": ""
  },
  "AIL.11": {
    "dataType": "IS",
    "longName": "Allow Substitution Code",
    "hl7Table": "HL70279"
  },
  "RXO.3": {
    "dataType": "NM",
    "longName": "Requested Give Amount - Maximum",
    "hl7Table": ""
  },
  "MSH.20": {
    "dataType": "ID",
    "longName": "Alternate Character Set Handling Scheme",
    "hl7Table": "HL70356"
  },
  "ORG.6": {
    "dataType": "CE",
    "longName": "Health Care Provider Type Code",
    "hl7Table": "HL70452"
  },
  "CON.19": {
    "dataType": "ID",
    "longName": "Informational Material Supplied Indicator",
    "hl7Table": "HL70136"
  },
  "PSH.3": {"dataType": "TS", "longName": "Report Date", "hl7Table": ""},
  "NK1.2": {"dataType": "XPN", "longName": "Name", "hl7Table": ""},
  "RXD.28": {
    "dataType": "NM",
    "longName": "Actual Drug Strength Volume",
    "hl7Table": ""
  },
  "PID.19": {
    "dataType": "ST",
    "longName": "SSN Number - Patient",
    "hl7Table": ""
  },
  "CDM.13": {
    "dataType": "ID",
    "longName": "Room Fee Indicator",
    "hl7Table": "HL70136"
  },
  "BPX.14": {"dataType": "NM", "longName": "BP Quantity", "hl7Table": ""},
  "GT1.36": {
    "dataType": "CE",
    "longName": "Primary Language",
    "hl7Table": "HL70296"
  },
  "OM1.14": {
    "dataType": "CE",
    "longName": "Coded Representation of Method",
    "hl7Table": "HL79999"
  },
  "IN1.51": {
    "dataType": "DT",
    "longName": "Signature Code Date",
    "hl7Table": ""
  },
  "GT1.6": {
    "dataType": "XTN",
    "longName": "Guarantor Ph Num - Home",
    "hl7Table": ""
  },
  "CM0.3": {"dataType": "EI", "longName": "Alternate Study ID", "hl7Table": ""},
  "URS.2": {
    "dataType": "TS",
    "longName": "R/U When Data Start Date/Time",
    "hl7Table": ""
  },
  "FT1.6": {
    "dataType": "IS",
    "longName": "Transaction Type",
    "hl7Table": "HL70017"
  },
  "MRG.4": {"dataType": "CX", "longName": "Prior Patient ID", "hl7Table": ""},
  "CSP.2": {
    "dataType": "TS",
    "longName": "Date/time Study Phase Began",
    "hl7Table": ""
  },
  "PSH.8": {
    "dataType": "ID",
    "longName": "Quantity Distributed Method",
    "hl7Table": "HL70329"
  },
  "RDT.1": {"dataType": "varies", "longName": "Column Value", "hl7Table": ""},
  "INV.5": {
    "dataType": "CE",
    "longName": "Container Carrier Identifier",
    "hl7Table": ""
  },
  "RXO.8": {
    "dataType": "LA1",
    "longName": "Deliver-To Location",
    "hl7Table": ""
  },
  "PV1.10": {
    "dataType": "IS",
    "longName": "Hospital Service",
    "hl7Table": "HL70069"
  },
  "CON.12": {
    "dataType": "TS",
    "longName": "Consent Discussion Date/Time",
    "hl7Table": ""
  },
  "IN2.41": {
    "dataType": "CE",
    "longName": "Nationality",
    "hl7Table": "HL70212"
  },
  "AIL.5": {"dataType": "CE", "longName": "Location Group", "hl7Table": ""},
  "NK1.9": {"dataType": "DT", "longName": "End Date", "hl7Table": ""},
  "UB2.14": {
    "dataType": "ST",
    "longName": "UB92 Locator 56 (State)",
    "hl7Table": ""
  },
  "RXD.23": {
    "dataType": "CE",
    "longName": "Dispense Package Size Unit",
    "hl7Table": ""
  },
  "EQU.1": {
    "dataType": "EI",
    "longName": "Equipment Instance Identifier",
    "hl7Table": ""
  },
  "RCP.2": {
    "dataType": "CQ",
    "longName": "Quantity Limited Request",
    "hl7Table": "HL70126"
  },
  "PID.12": {
    "dataType": "IS",
    "longName": "County Code",
    "hl7Table": "HL70289"
  },
  "MFE.4": {
    "dataType": "varies",
    "longName": "Primary Key Value - MFE",
    "hl7Table": "HL79999"
  },
  "SPM.4": {
    "dataType": "CWE",
    "longName": "Specimen Type",
    "hl7Table": "HL70487"
  },
  "DG1.19": {
    "dataType": "TS",
    "longName": "Attestation Date/Time",
    "hl7Table": ""
  },
  "NK1.23": {
    "dataType": "ID",
    "longName": "Protection Indicator",
    "hl7Table": "HL70136"
  },
  "QRF.8": {
    "dataType": "ID",
    "longName": "Date/Time Selection Qualifier",
    "hl7Table": "HL70158"
  },
  "ORC.12": {
    "dataType": "XCN",
    "longName": "Ordering Provider",
    "hl7Table": ""
  },
  "FT1.21": {"dataType": "XCN", "longName": "Ordered By Code", "hl7Table": ""},
  "DRG.11": {
    "dataType": "IS",
    "longName": "DRG Transfer Type",
    "hl7Table": "HL70415"
  },
  "OM1.43": {
    "dataType": "CE",
    "longName": "Point Versus Interval",
    "hl7Table": "HL70255"
  },
  "PV1.47": {"dataType": "NM", "longName": "Total Charges", "hl7Table": ""},
  "OM2.9": {
    "dataType": "DLT",
    "longName": "Delta Check Criteria",
    "hl7Table": ""
  },
  "GOL.7": {
    "dataType": "TS",
    "longName": "Goal Established Date/Time",
    "hl7Table": ""
  },
  "FHS.1": {
    "dataType": "ST",
    "longName": "File Field Separator",
    "hl7Table": ""
  },
  "IIM.4": {
    "dataType": "TS",
    "longName": "Inventory Expiration Date",
    "hl7Table": ""
  },
  "IN2.16": {
    "dataType": "IS",
    "longName": "Military Status",
    "hl7Table": "HL70142"
  },
  "STF.33": {
    "dataType": "CWE",
    "longName": "Institution Relationship Type Code",
    "hl7Table": "HL70538"
  },
  "MFA.3": {
    "dataType": "TS",
    "longName": "Event Completion Date/Time",
    "hl7Table": ""
  },
  "STZ.3": {
    "dataType": "CWE",
    "longName": "Maintenance Cycle",
    "hl7Table": "HL70809"
  },
  "AIS.7": {"dataType": "NM", "longName": "Duration", "hl7Table": ""},
  "ROL.10": {
    "dataType": "CE",
    "longName": "Organization Unit Type",
    "hl7Table": "HL70406"
  },
  "LCC.1": {
    "dataType": "PL",
    "longName": "Primary Key Value - LCC",
    "hl7Table": ""
  },
  "BPX.3": {"dataType": "ID", "longName": "BP Status", "hl7Table": "HL70511"},
  "ILT.3": {
    "dataType": "DTM",
    "longName": "Inventory Expiration Date",
    "hl7Table": ""
  },
  "IN1.10": {
    "dataType": "CX",
    "longName": "Insured's Group Emp ID",
    "hl7Table": ""
  },
  "CDM.6": {"dataType": "CE", "longName": "Exploding Charges", "hl7Table": ""},
  "IVT.16": {
    "dataType": "CNE",
    "longName": "Consignment Item Indicator",
    "hl7Table": "HL70532"
  },
  "NK1.35": {"dataType": "CE", "longName": "Race", "hl7Table": "HL70005"},
  "RXO.12": {
    "dataType": "CE",
    "longName": "Requested Dispense Units",
    "hl7Table": ""
  },
  "GP1.4": {
    "dataType": "IS",
    "longName": "OCE Edits per Visit Code",
    "hl7Table": "HL70458"
  },
  "OBR.29": {"dataType": "EIP", "longName": "Parent", "hl7Table": ""},
  "LDP.7": {
    "dataType": "TS",
    "longName": "Activation Date  LDP",
    "hl7Table": ""
  },
  "PRB.18": {"dataType": "CE", "longName": "Problem Ranking", "hl7Table": ""},
  "EDU.1": {"dataType": "SI", "longName": "Set ID - EDU", "hl7Table": ""},
  "PV1.51": {
    "dataType": "IS",
    "longName": "Visit Indicator",
    "hl7Table": "HL70326"
  },
  "STF.25": {
    "dataType": "DT",
    "longName": "Date Last DMV Review",
    "hl7Table": ""
  },
  "BHS.12": {
    "dataType": "ST",
    "longName": "Reference Batch Control ID",
    "hl7Table": ""
  },
  "QRF.10": {
    "dataType": "NM",
    "longName": "Search Confidence Threshold",
    "hl7Table": ""
  },
  "PCR.18": {
    "dataType": "TS",
    "longName": "Date Product Returned To Manufacturer",
    "hl7Table": ""
  },
  "PEO.12": {
    "dataType": "ID",
    "longName": "Patient Outcome",
    "hl7Table": "HL70241"
  },
  "INV.17": {
    "dataType": "CE",
    "longName": "Manufacturer Identifier",
    "hl7Table": "HL70385"
  },
  "BPO.6": {"dataType": "CE", "longName": "BP Units", "hl7Table": ""},
  "PV2.41": {
    "dataType": "CE",
    "longName": "Precaution Code",
    "hl7Table": "HL70433"
  },
  "VND.2": {"dataType": "EI", "longName": "Vendor Identifier", "hl7Table": ""},
  "SAC.11": {
    "dataType": "NA",
    "longName": "Position in Carrier",
    "hl7Table": ""
  },
  "RXC.8": {
    "dataType": "NM",
    "longName": "Component Drug Strength Volume",
    "hl7Table": ""
  },
  "UB1.12": {
    "dataType": "CE",
    "longName": "Special Program Indicator (44)",
    "hl7Table": "HL70348"
  },
  "RXE.18": {
    "dataType": "TS",
    "longName": "D/T of Most Recent Refill or Dose Dispensed",
    "hl7Table": ""
  },
  "URD.7": {
    "dataType": "ID",
    "longName": "R/U Results Level",
    "hl7Table": "HL70108"
  },
  "ORG.10": {
    "dataType": "CE",
    "longName": "Employment Status Code",
    "hl7Table": "HL70066"
  },
  "RXG.25": {
    "dataType": "CWE",
    "longName": "Give Barcode Identifier",
    "hl7Table": ""
  },
  "MSA.3": {"dataType": "ST", "longName": "Text Message", "hl7Table": ""},
  "ARQ.18": {
    "dataType": "PL",
    "longName": "Placer Contact Location",
    "hl7Table": ""
  },
  "CER.12": {"dataType": "ID", "longName": "Subject ID", "hl7Table": ""},
  "IN1.47": {
    "dataType": "IS",
    "longName": "Coverage Type",
    "hl7Table": "HL70309"
  },
  "TXA.17": {
    "dataType": "ID",
    "longName": "Document Completion Status",
    "hl7Table": "HL70271"
  },
  "CSR.16": {
    "dataType": "CE",
    "longName": "Reason Ended Study",
    "hl7Table": ""
  },
  "PSH.12": {
    "dataType": "FT",
    "longName": "Quantity in Use Comment",
    "hl7Table": ""
  },
  "DRG.1": {
    "dataType": "CE",
    "longName": "Diagnostic Related Group",
    "hl7Table": "HL70055"
  },
  "CON.8": {
    "dataType": "FT",
    "longName": "Subject-specific Consent Background",
    "hl7Table": ""
  },
  "OBX.23": {
    "dataType": "XON",
    "longName": "Performing Organization Name",
    "hl7Table": ""
  },
  "PD1.20": {
    "dataType": "IS",
    "longName": "Military Rank/Grade",
    "hl7Table": "HL70141"
  },
  "MFI.4": {"dataType": "TS", "longName": "Entered Date/Time", "hl7Table": ""},
  "AIS.10": {
    "dataType": "CE",
    "longName": "Filler Status Code",
    "hl7Table": "HL70278"
  },
  "SPM.20": {
    "dataType": "ID",
    "longName": "Specimen Availability",
    "hl7Table": "HL70136"
  },
  "IN2.57": {
    "dataType": "IS",
    "longName": "Insurance Co. Contact Reason",
    "hl7Table": "HL70232"
  },
  "PV2.16": {
    "dataType": "IS",
    "longName": "Purge Status Code",
    "hl7Table": "HL70213"
  },
  "BTX.1": {"dataType": "SI", "longName": "Set ID - BTX", "hl7Table": ""},
  "TCD.5": {
    "dataType": "SN",
    "longName": "Endogenous Content of Pre-Dilution Diluent",
    "hl7Table": ""
  },
  "EQP.2": {"dataType": "ST", "longName": "File Name", "hl7Table": ""},
  "PID.1": {"dataType": "SI", "longName": "Set ID - PID", "hl7Table": ""},
  "CTD.6": {
    "dataType": "CE",
    "longName": "Preferred Method of Contact",
    "hl7Table": "HL70185"
  },
  "QID.1": {"dataType": "ST", "longName": "Query Tag", "hl7Table": ""},
  "NK1.19": {
    "dataType": "CE",
    "longName": "Citizenship",
    "hl7Table": "HL70171"
  },
  "IN2.8": {
    "dataType": "ST",
    "longName": "Medicaid Case Number",
    "hl7Table": ""
  },
  "RXA.20": {
    "dataType": "ID",
    "longName": "Completion Status",
    "hl7Table": "HL70322"
  },
  "TCC.7": {
    "dataType": "SN",
    "longName": "Endogenous Content of Pre-Dilution Diluent",
    "hl7Table": ""
  },
  "ORC.28": {
    "dataType": "CWE",
    "longName": "Confidentiality Code",
    "hl7Table": "HL70177"
  },
  "AIG.7": {
    "dataType": "CE",
    "longName": "Resource Quantity Units",
    "hl7Table": ""
  },
  "SCH.13": {
    "dataType": "XTN",
    "longName": "Placer Contact Phone Number",
    "hl7Table": ""
  },
  "ERR.5": {
    "dataType": "CWE",
    "longName": "Application Error Code",
    "hl7Table": "HL70533"
  },
  "GP2.1": {
    "dataType": "IS",
    "longName": "Revenue Code",
    "hl7Table": "HL70456"
  },
  "GOL.10": {
    "dataType": "CE",
    "longName": "Goal Management Discipline",
    "hl7Table": ""
  },
  "GT1.50": {"dataType": "JCC", "longName": "Job Code/Class", "hl7Table": ""},
  "CM2.2": {
    "dataType": "CE",
    "longName": "Scheduled Time Point",
    "hl7Table": ""
  },
  "LRL.6": {
    "dataType": "PL",
    "longName": "Patient Location Relationship Value",
    "hl7Table": ""
  },
  "CSR.3": {
    "dataType": "CE",
    "longName": "Institution Registering the Patient",
    "hl7Table": ""
  },
  "LCH.3": {"dataType": "EI", "longName": "Segment Unique Key", "hl7Table": ""},
  "SFT.6": {
    "dataType": "TS",
    "longName": "Software Install Date",
    "hl7Table": ""
  },
  "CTI.2": {
    "dataType": "CE",
    "longName": "Study Phase Identifier",
    "hl7Table": ""
  },
  "PV1.5": {"dataType": "CX", "longName": "Preadmit Number", "hl7Table": ""},
  "MSH.11": {"dataType": "PT", "longName": "Processing ID", "hl7Table": ""},
  "RXE.34": {
    "dataType": "CWE",
    "longName": "Give Drug Strength Volume Units",
    "hl7Table": ""
  },
  "PID.28": {
    "dataType": "CE",
    "longName": "Nationality",
    "hl7Table": "HL70212"
  },
  "CER.5": {"dataType": "XCN", "longName": "Issuing Authority", "hl7Table": ""},
  "LAN.2": {
    "dataType": "CE",
    "longName": "Language Code",
    "hl7Table": "HL70296"
  },
  "QRD.9": {
    "dataType": "CE",
    "longName": "What Subject Filter",
    "hl7Table": "HL70048"
  },
  "RXD.19": {
    "dataType": "TS",
    "longName": "Substance Expiration Date",
    "hl7Table": ""
  },
  "IAM.9": {
    "dataType": "CE",
    "longName": "Sensitivity to Causative Agent Code",
    "hl7Table": "HL70436"
  },
  "PRD.9": {
    "dataType": "TS",
    "longName": "Effective End Date of Provider Role",
    "hl7Table": ""
  },
  "LDP.11": {"dataType": "XTN", "longName": "Contact Phone", "hl7Table": ""},
  "RQD.6": {
    "dataType": "CE",
    "longName": "Requisition Unit of Measure",
    "hl7Table": ""
  },
  "BTX.11": {
    "dataType": "CWE",
    "longName": "BP Transfusion/Disposition Status",
    "hl7Table": "HL70513"
  },
  "AUT.9": {
    "dataType": "NM",
    "longName": "Authorized Number of Treatments",
    "hl7Table": ""
  },
  "SCH.2": {
    "dataType": "EI",
    "longName": "Filler Appointment ID",
    "hl7Table": ""
  },
  "STF.4": {"dataType": "IS", "longName": "Staff Type", "hl7Table": "HL70182"},
  "OBX.19": {
    "dataType": "TS",
    "longName": "Date/Time of the Analysis",
    "hl7Table": ""
  },
  "OBR.44": {
    "dataType": "CE",
    "longName": "Procedure Code",
    "hl7Table": "HL70088"
  },
  "RXE.22": {
    "dataType": "ST",
    "longName": "Give Per (Time Unit)",
    "hl7Table": ""
  },
  "ARQ.22": {
    "dataType": "EI",
    "longName": "Parent Placer Appointment ID",
    "hl7Table": ""
  },
  "CER.28": {"dataType": "TS", "longName": "Renewal Date", "hl7Table": ""},
  "PD1.1": {
    "dataType": "IS",
    "longName": "Living Dependency",
    "hl7Table": "HL70223"
  },
  "FAC.11": {
    "dataType": "XAD",
    "longName": "Signature Authority Address",
    "hl7Table": ""
  },
  "OM1.38": {
    "dataType": "CE",
    "longName": "Procedure Medication",
    "hl7Table": "HL79999"
  },
  "DSP.5": {"dataType": "TX", "longName": "Result ID", "hl7Table": ""},
  "GT1.11": {
    "dataType": "CE",
    "longName": "Guarantor Relationship",
    "hl7Table": "HL70063"
  },
  "ITM.10": {
    "dataType": "CWE",
    "longName": "Manufacturer Labeler Identification Code",
    "hl7Table": ""
  },
  "OBR.13": {
    "dataType": "ST",
    "longName": "Relevant Clinical Information",
    "hl7Table": ""
  },
  "ITM.9": {
    "dataType": "ST",
    "longName": "Manufacturer Catalog Number",
    "hl7Table": ""
  },
  "PRB.22": {"dataType": "CE", "longName": "Problem Prognosis", "hl7Table": ""},
  "PR1.7": {"dataType": "NM", "longName": "Procedure Minutes", "hl7Table": ""},
  "BTS.3": {"dataType": "NM", "longName": "Batch Totals", "hl7Table": ""},
  "IN3.17": {
    "dataType": "CE",
    "longName": "Appeal Reason",
    "hl7Table": "HL70345"
  },
  "TQ1.12": {
    "dataType": "ID",
    "longName": "Conjunction",
    "hl7Table": "HL70427"
  },
  "RXO.28": {
    "dataType": "NM",
    "longName": "Dispensing Interval",
    "hl7Table": ""
  },
  "AIP.2": {
    "dataType": "ID",
    "longName": "Segment Action Code",
    "hl7Table": "HL70206"
  },
  "OM7.11": {
    "dataType": "ID",
    "longName": "Consent Indicator",
    "hl7Table": "HL70136"
  },
  "GT1.46": {
    "dataType": "XTN",
    "longName": "Contact Person's Telephone Number",
    "hl7Table": ""
  },
  "SAC.7": {
    "dataType": "TS",
    "longName": "Registration Date/Time",
    "hl7Table": ""
  },
  "AIG.11": {"dataType": "NM", "longName": "Duration", "hl7Table": ""},
  "RXA.9": {
    "dataType": "CE",
    "longName": "Administration Notes",
    "hl7Table": ""
  },
  "PKG.3": {
    "dataType": "CNE",
    "longName": "Default Order Unit Of Measure Indicator",
    "hl7Table": "HL70532"
  },
  "PCR.22": {
    "dataType": "ID",
    "longName": "Event Causality Observations",
    "hl7Table": "HL70252"
  },
  "QPD.2": {"dataType": "ST", "longName": "Query Tag", "hl7Table": ""},
  "AIL.9": {"dataType": "NM", "longName": "Duration", "hl7Table": ""},
  "NK1.5": {"dataType": "XTN", "longName": "Phone Number", "hl7Table": ""},
  "ABS.10": {
    "dataType": "ID",
    "longName": "Caesarian Section Indicator",
    "hl7Table": "HL70136"
  },
  "SPM.8": {
    "dataType": "CWE",
    "longName": "Specimen Source Site",
    "hl7Table": ""
  },
  "BPX.13": {
    "dataType": "TS",
    "longName": "BP Expiration Date/Time",
    "hl7Table": ""
  },
  "BLG.1": {
    "dataType": "CCD",
    "longName": "When to Charge",
    "hl7Table": "HL70100"
  },
  "GT1.31": {
    "dataType": "DT",
    "longName": "Guarantor Hire Effective Date",
    "hl7Table": ""
  },
  "PRB.3": {"dataType": "CE", "longName": "Problem ID", "hl7Table": ""},
  "CNS.6": {
    "dataType": "CE",
    "longName": "Ending Notification Code",
    "hl7Table": ""
  },
  "OM1.18": {
    "dataType": "IS",
    "longName": "Nature of Service/Test/Observation",
    "hl7Table": "HL70174"
  },
  "ORG.1": {"dataType": "SI", "longName": "Set ID - ORG", "hl7Table": ""},
  "RXO.4": {
    "dataType": "CE",
    "longName": "Requested Give Units",
    "hl7Table": ""
  },
  "INV.9": {"dataType": "NM", "longName": "Available Quantity", "hl7Table": ""},
  "PSH.4": {
    "dataType": "TS",
    "longName": "Report Interval Start Date",
    "hl7Table": ""
  },
  "OM6.2": {"dataType": "TX", "longName": "Derivation Rule", "hl7Table": ""},
  "OBR.6": {
    "dataType": "TS",
    "longName": "Requested Date/Time",
    "hl7Table": ""
  },
  "IIM.8": {
    "dataType": "NM",
    "longName": "Inventory Received Quantity",
    "hl7Table": ""
  },
  "PRA.12": {"dataType": "SI", "longName": "Set ID - PRA", "hl7Table": ""},
  "FTS.1": {"dataType": "NM", "longName": "File Batch Count", "hl7Table": ""},
  "SCH.25": {
    "dataType": "CE",
    "longName": "Filler Status Code",
    "hl7Table": "HL70278"
  },
  "DB1.5": {
    "dataType": "DT",
    "longName": "Disability Start Date",
    "hl7Table": ""
  },
  "RXA.16": {
    "dataType": "TS",
    "longName": "Substance Expiration Date",
    "hl7Table": ""
  },
  "QRF.4": {
    "dataType": "ST",
    "longName": "What User Qualifier",
    "hl7Table": ""
  },
  "DG1.15": {
    "dataType": "ID",
    "longName": "Diagnosis Priority",
    "hl7Table": "HL70359"
  },
  "OBR.33": {
    "dataType": "NDL",
    "longName": "Assistant Result Interpreter",
    "hl7Table": ""
  },
  "ROL.6": {"dataType": "TS", "longName": "Role End Date/Time", "hl7Table": ""},
  "OM2.5": {
    "dataType": "TX",
    "longName": "SI Conversion Factor",
    "hl7Table": ""
  },
  "PES.7": {
    "dataType": "FT",
    "longName": "Sender Event Description",
    "hl7Table": ""
  },
  "TXA.2": {
    "dataType": "IS",
    "longName": "Document Type",
    "hl7Table": "HL70270"
  },
  "AUT.10": {"dataType": "TS", "longName": "Process Date", "hl7Table": ""},
  "ORC.6": {
    "dataType": "ID",
    "longName": "Response Flag",
    "hl7Table": "HL70121"
  },
  "UB2.3": {
    "dataType": "IS",
    "longName": "Condition Code (24-30)",
    "hl7Table": "HL70043"
  },
  "PCR.14": {
    "dataType": "CE",
    "longName": "Product Evaluation Performed",
    "hl7Table": ""
  },
  "IPC.6": {"dataType": "CE", "longName": "Protocol Code", "hl7Table": ""},
  "STF.29": {
    "dataType": "ID",
    "longName": "Re-activation Approval Indicator",
    "hl7Table": "HL70136"
  },
  "IN1.1": {"dataType": "SI", "longName": "Set ID - IN1", "hl7Table": ""},
  "PES.12": {
    "dataType": "ID",
    "longName": "Event Report Source",
    "hl7Table": "HL70235"
  },
  "RXG.3": {"dataType": "TQ", "longName": "Quantity/Timing", "hl7Table": ""},
  "NK1.39": {
    "dataType": "IS",
    "longName": "VIP Indicator",
    "hl7Table": "HL70099"
  },
  "OM7.6": {
    "dataType": "TS",
    "longName": "Effective Test/Service Start Date/Time",
    "hl7Table": ""
  },
  "RXE.43": {
    "dataType": "XAD",
    "longName": "Deliver-to Address",
    "hl7Table": ""
  },
  "IN3.21": {"dataType": "ST", "longName": "Case Manager", "hl7Table": ""},
  "PRC.7": {"dataType": "NM", "longName": "Minimum Quantity", "hl7Table": ""},
  "TQ1.3": {
    "dataType": "RPT",
    "longName": "Repeat Pattern",
    "hl7Table": "HL70335"
  },
  "PRB.14": {
    "dataType": "CE",
    "longName": "Problem Life Cycle Status",
    "hl7Table": ""
  },
  "OBR.25": {
    "dataType": "ID",
    "longName": "Result Status",
    "hl7Table": "HL70123"
  },
  "ITM.26": {
    "dataType": "CNE",
    "longName": "Track Department Usage Indicator",
    "hl7Table": "HL70532"
  },
  "GT1.27": {
    "dataType": "CP",
    "longName": "Guarantor Household Annual Income",
    "hl7Table": ""
  },
  "TCC.13": {"dataType": "CE", "longName": "Units", "hl7Table": ""},
  "VTQ.3": {"dataType": "CE", "longName": "VT Query Name", "hl7Table": ""},
  "ARQ.14": {
    "dataType": "ST",
    "longName": "Repeating Interval Duration",
    "hl7Table": ""
  },
  "PDC.1": {
    "dataType": "XON",
    "longName": "Manufacturer/Distributor",
    "hl7Table": ""
  },
  "RXE.14": {
    "dataType": "XCN",
    "longName": "Pharmacist/Treatment Supplier's Verifier ID",
    "hl7Table": ""
  },
  "RXC.4": {"dataType": "CE", "longName": "Component Units", "hl7Table": ""},
  "OM3.1": {
    "dataType": "NM",
    "longName": "Sequence Number - Test/Observation Master File",
    "hl7Table": ""
  },
  "RF1.3": {
    "dataType": "CE",
    "longName": "Referral Type",
    "hl7Table": "HL70281"
  },
  "CON.4": {
    "dataType": "EI",
    "longName": "Consent Form Number",
    "hl7Table": ""
  },
  "PRC.15": {
    "dataType": "ID",
    "longName": "Chargeable Flag",
    "hl7Table": "HL70136"
  },
  "RXD.6": {"dataType": "CE", "longName": "Actual Dosage Form", "hl7Table": ""},
  "NST.2": {"dataType": "ST", "longName": "Source Identifier", "hl7Table": ""},
  "OM4.3": {
    "dataType": "TX",
    "longName": "Container Description",
    "hl7Table": ""
  },
  "ERR.9": {
    "dataType": "IS",
    "longName": "Inform Person Indicator",
    "hl7Table": "HL70517"
  },
  "IN2.20": {
    "dataType": "ID",
    "longName": "Combine Baby Bill",
    "hl7Table": "HL70136"
  },
  "TQ2.6": {
    "dataType": "ID",
    "longName": "Sequence Condition Code",
    "hl7Table": "HL70504"
  },
  "ARQ.2": {
    "dataType": "EI",
    "longName": "Filler Appointment ID",
    "hl7Table": ""
  },
  "QRI.1": {
    "dataType": "NM",
    "longName": "Candidate Confidence",
    "hl7Table": ""
  },
  "RQ1.4": {"dataType": "CE", "longName": "Vendor ID", "hl7Table": ""},
  "AL1.3": {
    "dataType": "CE",
    "longName": "Allergen Code/Mnemonic/Description",
    "hl7Table": ""
  },
  "PDC.11": {
    "dataType": "ST",
    "longName": "Marketing Approval ID",
    "hl7Table": ""
  },
  "ACC.6": {
    "dataType": "ID",
    "longName": "Accident Death Indicator",
    "hl7Table": "HL70136"
  },
  "NST.13": {"dataType": "NM", "longName": "Connect Timeouts", "hl7Table": ""},
  "IN1.30": {"dataType": "XCN", "longName": "Verification By", "hl7Table": ""},
  "SID.4": {
    "dataType": "CE",
    "longName": "Substance Manufacturer Identifier",
    "hl7Table": "HL70385"
  },
  "FT1.17": {
    "dataType": "IS",
    "longName": "Fee Schedule",
    "hl7Table": "HL70024"
  },
  "ORC.24": {
    "dataType": "XAD",
    "longName": "Ordering Provider Address",
    "hl7Table": ""
  },
  "IN2.4": {
    "dataType": "IS",
    "longName": "Employer Information Data",
    "hl7Table": "HL70139"
  },
  "NK1.15": {
    "dataType": "IS",
    "longName": "Administrative Sex",
    "hl7Table": "HL70001"
  },
  "PCR.6": {
    "dataType": "TS",
    "longName": "Product Expiration Date",
    "hl7Table": ""
  },
  "PV2.36": {
    "dataType": "ID",
    "longName": "Newborn Baby Indicator",
    "hl7Table": "HL70136"
  },
  "IIM.14": {
    "dataType": "CE",
    "longName": "Procedure Code",
    "hl7Table": "HL70088"
  },
  "CER.9": {
    "dataType": "CWE",
    "longName": "Granting County/Parish",
    "hl7Table": "HL70289"
  },
  "PID.24": {
    "dataType": "ID",
    "longName": "Multiple Birth Indicator",
    "hl7Table": "HL70136"
  },
  "QAK.5": {"dataType": "NM", "longName": "This payload", "hl7Table": ""},
  "PRD.5": {
    "dataType": "XTN",
    "longName": "Provider Communication Information",
    "hl7Table": ""
  },
  "DG1.6": {
    "dataType": "IS",
    "longName": "Diagnosis Type",
    "hl7Table": "HL70052"
  },
  "RXD.15": {
    "dataType": "CE",
    "longName": "Pharmacy/Treatment Supplier's Special Dispensing Instructions",
    "hl7Table": ""
  },
  "IAM.5": {
    "dataType": "ST",
    "longName": "Allergy Reaction Code",
    "hl7Table": ""
  },
  "QRD.5": {
    "dataType": "ID",
    "longName": "Deferred Response Type",
    "hl7Table": "HL70107"
  },
  "CON.24": {"dataType": "XPN", "longName": "Consenter ID", "hl7Table": ""},
  "PV1.26": {"dataType": "NM", "longName": "Contract Amount", "hl7Table": ""},
  "PV1.9": {
    "dataType": "XCN",
    "longName": "Consulting Doctor",
    "hl7Table": "HL70010"
  },
  "SAC.31": {"dataType": "SN", "longName": "Temperature", "hl7Table": ""},
  "RXE.38": {
    "dataType": "CWE",
    "longName": "Pharmacy of Most Recent Fill",
    "hl7Table": ""
  },
  "OM1.22": {
    "dataType": "TS",
    "longName": "Effective Date/Time of Change",
    "hl7Table": ""
  },
  "PR1.12": {
    "dataType": "XCN",
    "longName": "Procedure Practitioner",
    "hl7Table": "HL70010"
  },
  "RQD.10": {"dataType": "DT", "longName": "Date Needed", "hl7Table": ""},
  "PRA.6": {
    "dataType": "PLN",
    "longName": "Practitioner ID Numbers",
    "hl7Table": "HL70338"
  },
  "PID.32": {
    "dataType": "IS",
    "longName": "Identity Reliability Code",
    "hl7Table": "HL70445"
  },
  "ISD.2": {
    "dataType": "CE",
    "longName": "Interaction Type Identifier",
    "hl7Table": "HL70368"
  },
  "PV2.20": {
    "dataType": "NM",
    "longName": "Expected Number of Insurance Plans",
    "hl7Table": ""
  },
  "RXE.2": {"dataType": "CE", "longName": "Give Code", "hl7Table": "HL70292"},
  "IN2.61": {
    "dataType": "CX",
    "longName": "Patient Member Number",
    "hl7Table": ""
  },
  "IVT.6": {
    "dataType": "CWE",
    "longName": "Item Status",
    "hl7Table": "HL70625"
  },
  "SPM.16": {
    "dataType": "CWE",
    "longName": "Specimen Risk Code",
    "hl7Table": "HL70489"
  },
  "IAM.11": {"dataType": "DT", "longName": "Onset Date", "hl7Table": ""},
  "PD1.16": {
    "dataType": "IS",
    "longName": "Immunization Registry Status",
    "hl7Table": "HL70441"
  },
  "OBR.48": {
    "dataType": "CWE",
    "longName": "Medically Necessary Duplicate Procedure Reason.",
    "hl7Table": "HL70476"
  },
  "OBX.15": {
    "dataType": "CE",
    "longName": "Producer's Reference",
    "hl7Table": ""
  },
  "STF.8": {"dataType": "CE", "longName": "Department", "hl7Table": "HL70184"},
  "AUT.5": {
    "dataType": "TS",
    "longName": "Authorization Expiration Date",
    "hl7Table": ""
  },
  "PV1.30": {
    "dataType": "DT",
    "longName": "Transfer to Bad Debt Date",
    "hl7Table": ""
  },
  "TXA.21": {
    "dataType": "ST",
    "longName": "Document Change Reason",
    "hl7Table": ""
  },
  "OM1.34": {
    "dataType": "CE",
    "longName": "Reflex Tests/Observations",
    "hl7Table": "HL79999"
  },
  "CER.24": {"dataType": "TS", "longName": "Issuing Date", "hl7Table": ""},
  "RXG.13": {
    "dataType": "CE",
    "longName":
        "Pharmacy/Treatment Supplier's Special Administration Instructions",
    "hl7Table": ""
  },
  "SAC.27": {"dataType": "CWE", "longName": "Additive", "hl7Table": "HL70371"},
  "LOC.2": {
    "dataType": "ST",
    "longName": "Location Description",
    "hl7Table": ""
  },
  "FAC.6": {"dataType": "ST", "longName": "Contact Title", "hl7Table": ""},
  "NSC.7": {"dataType": "ST", "longName": "New Fileserver", "hl7Table": ""},
  "VAR.6": {
    "dataType": "ST",
    "longName": "Variance Description",
    "hl7Table": ""
  },
  "PEO.24": {
    "dataType": "TS",
    "longName": "Primary Observer Aware Date/Time",
    "hl7Table": ""
  },
  "UB1.6": {
    "dataType": "NM",
    "longName": "Co-Insurance Days (25)",
    "hl7Table": ""
  },
  "RXA.5": {
    "dataType": "CE",
    "longName": "Administered Code",
    "hl7Table": "HL70292"
  },
  "IN2.36": {
    "dataType": "CE",
    "longName": "Publicity Code",
    "hl7Table": "HL70215"
  },
  "STF.13": {
    "dataType": "DIN",
    "longName": "Institution Inactivation Date",
    "hl7Table": "HL70537"
  },
  "ITM.5": {"dataType": "CWE", "longName": "Item Category", "hl7Table": ""},
  "RMI.2": {"dataType": "TS", "longName": "Date/Time Incident", "hl7Table": ""},
  "RXO.24": {
    "dataType": "CE",
    "longName": "Supplementary Code",
    "hl7Table": ""
  },
  "BPO.14": {
    "dataType": "ID",
    "longName": "BP Informed Consent Indicator",
    "hl7Table": "HL70136"
  },
  "IVT.20": {
    "dataType": "EI",
    "longName": "Latex-Free Substitute Item Identifier",
    "hl7Table": ""
  },
  "PCE.3": {
    "dataType": "CWE",
    "longName": "Transaction Code",
    "hl7Table": "HL70132"
  },
  "BHS.3": {
    "dataType": "HD",
    "longName": "Batch Sending Application",
    "hl7Table": ""
  },
  "IN1.26": {
    "dataType": "DT",
    "longName": "Report Of Eligibility Date",
    "hl7Table": ""
  },
  "OBX.1": {"dataType": "SI", "longName": "Set ID - OBX", "hl7Table": ""},
  "APR.1": {
    "dataType": "SCV",
    "longName": "Time Selection Criteria",
    "hl7Table": "HL70294"
  },
  "ITM.4": {"dataType": "CWE", "longName": "Item Type", "hl7Table": "HL70778"},
  "RMI.3": {
    "dataType": "CE",
    "longName": "Incident Type Code",
    "hl7Table": "HL70428"
  },
  "RXO.25": {
    "dataType": "NM",
    "longName": "Requested Drug Strength Volume",
    "hl7Table": ""
  },
  "IVT.21": {
    "dataType": "CWE",
    "longName": "Recommended Reorder Theory",
    "hl7Table": "HL70642"
  },
  "PCE.2": {
    "dataType": "IS",
    "longName": "Cost Center Account Number",
    "hl7Table": "HL70319"
  },
  "IN1.27": {
    "dataType": "IS",
    "longName": "Release Information Code",
    "hl7Table": "HL70093"
  },
  "BHS.2": {
    "dataType": "ST",
    "longName": "Batch Encoding Characters",
    "hl7Table": ""
  },
  "LOC.3": {
    "dataType": "IS",
    "longName": "Location Type - LOC",
    "hl7Table": "HL70260"
  },
  "INV.20": {"dataType": "CQ", "longName": "Target Value", "hl7Table": ""},
  "FAC.7": {"dataType": "XAD", "longName": "Contact Address", "hl7Table": ""},
  "NSC.6": {"dataType": "ST", "longName": "New CPU", "hl7Table": ""},
  "PEO.25": {
    "dataType": "ID",
    "longName": "Primary Observer's identity May Be Divulged",
    "hl7Table": "HL70243"
  },
  "PDA.1": {"dataType": "CE", "longName": "Death Cause Code", "hl7Table": ""},
  "UB1.7": {
    "dataType": "IS",
    "longName": "Condition Code (35-39)",
    "hl7Table": "HL70043"
  },
  "RXA.4": {
    "dataType": "TS",
    "longName": "Date/Time End of Administration",
    "hl7Table": ""
  },
  "OM1.1": {
    "dataType": "NM",
    "longName": "Sequence Number - Test/Observation Master File",
    "hl7Table": ""
  },
  "IN2.37": {
    "dataType": "ID",
    "longName": "Protection Indicator",
    "hl7Table": "HL70136"
  },
  "STF.12": {
    "dataType": "DIN",
    "longName": "Institution Activation Date",
    "hl7Table": "HL70537"
  },
  "OBR.49": {
    "dataType": "IS",
    "longName": "Result Handling",
    "hl7Table": "HL70507"
  },
  "IN3.1": {"dataType": "SI", "longName": "Set ID - IN3", "hl7Table": ""},
  "OBX.14": {
    "dataType": "TS",
    "longName": "Date/Time of the Observation",
    "hl7Table": ""
  },
  "STF.9": {
    "dataType": "CE",
    "longName": "Hospital Service - STF",
    "hl7Table": "HL70069"
  },
  "AUT.4": {
    "dataType": "TS",
    "longName": "Authorization Effective Date",
    "hl7Table": ""
  },
  "ABS.1": {
    "dataType": "XCN",
    "longName": "Discharge Care Provider",
    "hl7Table": "HL70010"
  },
  "PV1.31": {
    "dataType": "IS",
    "longName": "Bad Debt Agency Code",
    "hl7Table": "HL70021"
  },
  "TXA.20": {
    "dataType": "ID",
    "longName": "Document Storage Status",
    "hl7Table": "HL70275"
  },
  "OM1.35": {
    "dataType": "TX",
    "longName": "Rules that Trigger Reflex Testing",
    "hl7Table": ""
  },
  "CER.25": {"dataType": "TS", "longName": "Activation Date", "hl7Table": ""},
  "RXG.12": {
    "dataType": "ID",
    "longName": "Needs Human Review",
    "hl7Table": "HL70136"
  },
  "SAC.26": {"dataType": "CE", "longName": "Cap Type", "hl7Table": "HL70381"},
  "PEO.1": {
    "dataType": "CE",
    "longName": "Event Identifiers Used",
    "hl7Table": ""
  },
  "PR1.13": {
    "dataType": "CE",
    "longName": "Consent Code",
    "hl7Table": "HL70059"
  },
  "PRA.7": {"dataType": "PIP", "longName": "Privileges", "hl7Table": ""},
  "ISD.3": {
    "dataType": "CE",
    "longName": "Interaction Active State",
    "hl7Table": "HL70387"
  },
  "PID.33": {
    "dataType": "TS",
    "longName": "Last Update Date/Time",
    "hl7Table": ""
  },
  "PV2.21": {
    "dataType": "IS",
    "longName": "Visit Publicity Code",
    "hl7Table": "HL70215"
  },
  "RXE.3": {
    "dataType": "NM",
    "longName": "Give Amount - Minimum",
    "hl7Table": ""
  },
  "IN2.60": {
    "dataType": "IS",
    "longName": "Policy Source",
    "hl7Table": "HL70313"
  },
  "IVT.7": {
    "dataType": "EI",
    "longName": "Bin Location Identifier",
    "hl7Table": ""
  },
  "SPM.17": {
    "dataType": "DR",
    "longName": "Specimen Collection Date/Time",
    "hl7Table": ""
  },
  "IAM.10": {
    "dataType": "CE",
    "longName": "Allergen Group Code/Mnemonic/Description",
    "hl7Table": ""
  },
  "PD1.17": {
    "dataType": "DT",
    "longName": "Immunization Registry Status Effective Date",
    "hl7Table": ""
  },
  "PV1.27": {"dataType": "NM", "longName": "Contract Period", "hl7Table": ""},
  "CON.25": {
    "dataType": "IS",
    "longName": "Relationship to Subject Table",
    "hl7Table": "HL70548"
  },
  "PV1.8": {
    "dataType": "XCN",
    "longName": "Referring Doctor",
    "hl7Table": "HL70010"
  },
  "SAC.30": {"dataType": "CE", "longName": "Treatment", "hl7Table": "HL70373"},
  "RXE.39": {
    "dataType": "NM",
    "longName": "Initial Dispense Amount",
    "hl7Table": ""
  },
  "NPU.1": {"dataType": "PL", "longName": "Bed Location", "hl7Table": ""},
  "OM1.23": {
    "dataType": "NM",
    "longName": "Typical Turn-Around Time",
    "hl7Table": ""
  },
  "IIM.15": {
    "dataType": "CE",
    "longName": "Procedure Code Modifier",
    "hl7Table": "HL70340"
  },
  "PV2.37": {
    "dataType": "ID",
    "longName": "Baby Detained Indicator",
    "hl7Table": "HL70136"
  },
  "CER.8": {
    "dataType": "CWE",
    "longName": "Granting State/Province",
    "hl7Table": "HL70347"
  },
  "PID.25": {"dataType": "NM", "longName": "Birth Order", "hl7Table": ""},
  "QAK.4": {"dataType": "NM", "longName": "Hit Count", "hl7Table": ""},
  "RXR.6": {
    "dataType": "CWE",
    "longName": "Administration Site Modifier",
    "hl7Table": "HL70495"
  },
  "DG1.7": {
    "dataType": "CE",
    "longName": "Major Diagnostic Category",
    "hl7Table": "HL70118"
  },
  "PRD.4": {"dataType": "PL", "longName": "Provider Location", "hl7Table": ""},
  "RXD.14": {
    "dataType": "ID",
    "longName": "Needs Human Review",
    "hl7Table": "HL70136"
  },
  "IAM.4": {
    "dataType": "CE",
    "longName": "Allergy Severity Code",
    "hl7Table": "HL70128"
  },
  "QRD.4": {"dataType": "ST", "longName": "Query ID", "hl7Table": ""},
  "NST.12": {
    "dataType": "NM",
    "longName": "Other Errors Received",
    "hl7Table": ""
  },
  "ACC.7": {"dataType": "XCN", "longName": "Entered By", "hl7Table": ""},
  "IN1.31": {
    "dataType": "IS",
    "longName": "Type Of Agreement Code",
    "hl7Table": "HL70098"
  },
  "ORC.25": {
    "dataType": "CWE",
    "longName": "Order Status Modifier",
    "hl7Table": ""
  },
  "FT1.16": {
    "dataType": "PL",
    "longName": "Assigned Patient Location",
    "hl7Table": ""
  },
  "IN2.5": {
    "dataType": "IS",
    "longName": "Mail Claim Party",
    "hl7Table": "HL70137"
  },
  "NK1.14": {
    "dataType": "CE",
    "longName": "Marital Status",
    "hl7Table": "HL70002"
  },
  "PCR.7": {
    "dataType": "TS",
    "longName": "Product Implantation Date",
    "hl7Table": ""
  },
  "PRC.14": {
    "dataType": "CE",
    "longName": "Billing Category",
    "hl7Table": "HL70293"
  },
  "RXD.7": {
    "dataType": "ST",
    "longName": "Prescription Number",
    "hl7Table": ""
  },
  "NST.3": {"dataType": "ID", "longName": "Source Type", "hl7Table": "HL70332"},
  "OM4.2": {
    "dataType": "ID",
    "longName": "Derived Specimen",
    "hl7Table": "HL70170"
  },
  "ERR.8": {"dataType": "TX", "longName": "User Message", "hl7Table": ""},
  "IN2.21": {"dataType": "ST", "longName": "Blood Deductible", "hl7Table": ""},
  "TQ2.7": {
    "dataType": "ID",
    "longName": "Cyclic Entry/Exit Indicator",
    "hl7Table": "HL70505"
  },
  "ARQ.3": {"dataType": "NM", "longName": "Occurrence Number", "hl7Table": ""},
  "RQ1.5": {"dataType": "ST", "longName": "Vendor Catalog", "hl7Table": ""},
  "AL1.2": {
    "dataType": "CE",
    "longName": "Allergen Type Code",
    "hl7Table": "HL70127"
  },
  "PDC.10": {
    "dataType": "ID",
    "longName": "Marketing Basis",
    "hl7Table": "HL70330"
  },
  "ARQ.15": {
    "dataType": "XCN",
    "longName": "Placer Contact Person",
    "hl7Table": ""
  },
  "RXE.15": {
    "dataType": "ST",
    "longName": "Prescription Number",
    "hl7Table": ""
  },
  "RXC.5": {"dataType": "NM", "longName": "Component Strength", "hl7Table": ""},
  "RF1.2": {
    "dataType": "CE",
    "longName": "Referral Priority",
    "hl7Table": "HL70280"
  },
  "CON.5": {"dataType": "FT", "longName": "Consent Text", "hl7Table": ""},
  "ITM.27": {
    "dataType": "CNE",
    "longName": "Procedure Code",
    "hl7Table": "HL70088"
  },
  "GT1.26": {
    "dataType": "CE",
    "longName": "Guarantor Charge Adjustment Code",
    "hl7Table": "HL70218"
  },
  "NTE.4": {
    "dataType": "CE",
    "longName": "Comment Type",
    "hl7Table": "HL70364"
  },
  "TCD.8": {
    "dataType": "CE",
    "longName": "Analyte Repeat Status",
    "hl7Table": "HL70389"
  },
  "TCC.12": {
    "dataType": "SN",
    "longName": "Equipment Dynamic Range",
    "hl7Table": ""
  },
  "GP2.14": {
    "dataType": "NM",
    "longName": "Pay Rate per Service Unit",
    "hl7Table": ""
  },
  "VTQ.2": {
    "dataType": "ID",
    "longName": "Query/Response Format Code",
    "hl7Table": "HL70106"
  },
  "RXG.2": {
    "dataType": "NM",
    "longName": "Dispense Sub-ID Counter",
    "hl7Table": ""
  },
  "NK1.38": {
    "dataType": "ST",
    "longName": "Next of Kin Birth Place",
    "hl7Table": ""
  },
  "OM7.7": {
    "dataType": "TS",
    "longName": "Effective Test/Service End Date/Time",
    "hl7Table": ""
  },
  "RXE.42": {
    "dataType": "PL",
    "longName": "Deliver-to Patient Location",
    "hl7Table": ""
  },
  "IN3.20": {
    "dataType": "ICD",
    "longName": "Pre-Certification Requirement",
    "hl7Table": ""
  },
  "ADD.1": {
    "dataType": "ST",
    "longName": "Addendum Continuation Pointer",
    "hl7Table": ""
  },
  "PRC.6": {"dataType": "ST", "longName": "Formula", "hl7Table": ""},
  "TQ1.2": {"dataType": "CQ", "longName": "Quantity", "hl7Table": ""},
  "PRB.15": {
    "dataType": "TS",
    "longName": "Problem Life Cycle Status Date/Time",
    "hl7Table": ""
  },
  "OBR.24": {
    "dataType": "ID",
    "longName": "Diagnostic Serv Sect ID",
    "hl7Table": "HL70074"
  },
  "PCR.15": {
    "dataType": "CE",
    "longName": "Product Evaluation Status",
    "hl7Table": "HL70247"
  },
  "IPC.7": {
    "dataType": "EI",
    "longName": "Scheduled Station Name",
    "hl7Table": ""
  },
  "STF.28": {
    "dataType": "CE",
    "longName": "Ethnic Group",
    "hl7Table": "HL70189"
  },
  "PES.13": {
    "dataType": "ID",
    "longName": "Event Reported To",
    "hl7Table": "HL70236"
  },
  "DB1.4": {
    "dataType": "ID",
    "longName": "Disabled Indicator",
    "hl7Table": "HL70136"
  },
  "RXA.17": {
    "dataType": "CE",
    "longName": "Substance Manufacturer Name",
    "hl7Table": "HL70227"
  },
  "QRF.5": {
    "dataType": "ST",
    "longName": "Other QRY Subject Filter",
    "hl7Table": ""
  },
  "DG1.14": {
    "dataType": "ST",
    "longName": "Grouper Version And Type",
    "hl7Table": ""
  },
  "OBR.32": {
    "dataType": "NDL",
    "longName": "Principal Result Interpreter",
    "hl7Table": ""
  },
  "ROL.7": {"dataType": "CE", "longName": "Role Duration", "hl7Table": ""},
  "OM2.4": {
    "dataType": "CE",
    "longName": "Corresponding SI Units of Measure",
    "hl7Table": "HL79999"
  },
  "TXA.3": {
    "dataType": "ID",
    "longName": "Document Content Presentation",
    "hl7Table": "HL70191"
  },
  "PES.6": {
    "dataType": "NM",
    "longName": "Sender Sequence Number",
    "hl7Table": ""
  },
  "ORC.7": {"dataType": "TQ", "longName": "Quantity/Timing", "hl7Table": ""},
  "UB2.2": {
    "dataType": "ST",
    "longName": "Co-Insurance Days (9)",
    "hl7Table": ""
  },
  "OBR.7": {
    "dataType": "TS",
    "longName": "Observation Date/Time",
    "hl7Table": ""
  },
  "IIM.9": {
    "dataType": "CWE",
    "longName": "Inventory Received Quantity Unit",
    "hl7Table": ""
  },
  "PTH.1": {"dataType": "ID", "longName": "Action Code", "hl7Table": "HL70287"},
  "SCH.24": {
    "dataType": "EI",
    "longName": "Parent Filler Appointment ID",
    "hl7Table": ""
  },
  "PRB.2": {"dataType": "TS", "longName": "Action Date/Time", "hl7Table": ""},
  "OM1.19": {
    "dataType": "CE",
    "longName": "Report Subheader",
    "hl7Table": "HL79999"
  },
  "RXO.5": {
    "dataType": "CE",
    "longName": "Requested Dosage Form",
    "hl7Table": ""
  },
  "INV.8": {"dataType": "NM", "longName": "Current Quantity", "hl7Table": ""},
  "PSH.5": {
    "dataType": "TS",
    "longName": "Report Interval End Date",
    "hl7Table": ""
  },
  "AIL.8": {
    "dataType": "CE",
    "longName": "Start Date/Time Offset Units",
    "hl7Table": ""
  },
  "QPD.3": {
    "dataType": "varies",
    "longName": "User Parameters (in successive fields)",
    "hl7Table": ""
  },
  "NK1.4": {"dataType": "XAD", "longName": "Address", "hl7Table": ""},
  "ABS.11": {
    "dataType": "CE",
    "longName": "Gestation Category Code",
    "hl7Table": "HL70424"
  },
  "SPM.9": {
    "dataType": "CWE",
    "longName": "Specimen Source Site Modifier",
    "hl7Table": "HL70542"
  },
  "BPX.12": {
    "dataType": "CNE",
    "longName": "BC Special Testing",
    "hl7Table": ""
  },
  "GT1.30": {
    "dataType": "CE",
    "longName": "Guarantor Marital Status Code",
    "hl7Table": "HL70002"
  },
  "SAC.6": {"dataType": "SPS", "longName": "Specimen Source", "hl7Table": ""},
  "GT1.47": {
    "dataType": "CE",
    "longName": "Contact Reason",
    "hl7Table": "HL70222"
  },
  "AIG.10": {
    "dataType": "CE",
    "longName": "Start Date/Time Offset Units",
    "hl7Table": ""
  },
  "RXA.8": {
    "dataType": "CE",
    "longName": "Administered Dosage Form",
    "hl7Table": ""
  },
  "PKG.2": {
    "dataType": "CWE",
    "longName": "Packaging Units",
    "hl7Table": "HL70818"
  },
  "PCR.23": {
    "dataType": "ID",
    "longName": "Indirect Exposure Mechanism",
    "hl7Table": "HL70253"
  },
  "ITM.8": {"dataType": "ST", "longName": "Manufacturer Name", "hl7Table": ""},
  "OBR.12": {"dataType": "CE", "longName": "Danger Code", "hl7Table": ""},
  "PRB.23": {
    "dataType": "CE",
    "longName": "Individual Awareness of Prognosis",
    "hl7Table": ""
  },
  "PR1.6": {
    "dataType": "IS",
    "longName": "Procedure Functional Type",
    "hl7Table": "HL70230"
  },
  "BTS.2": {"dataType": "ST", "longName": "Batch Comment", "hl7Table": ""},
  "IN3.16": {
    "dataType": "XTN",
    "longName": "Certification Contact Phone Number",
    "hl7Table": ""
  },
  "TQ1.13": {
    "dataType": "CQ",
    "longName": "Occurrence duration",
    "hl7Table": ""
  },
  "AIP.3": {
    "dataType": "XCN",
    "longName": "Personnel Resource ID",
    "hl7Table": ""
  },
  "OM7.10": {
    "dataType": "IS",
    "longName": "Test/Service Default Frequency",
    "hl7Table": "HL70335"
  },
  "DSP.4": {
    "dataType": "ST",
    "longName": "Logical Break Point",
    "hl7Table": ""
  },
  "GT1.10": {
    "dataType": "IS",
    "longName": "Guarantor Type",
    "hl7Table": "HL70068"
  },
  "ITM.11": {
    "dataType": "CNE",
    "longName": "Patient Chargeable Indicator",
    "hl7Table": "HL70532"
  },
  "RQD.7": {
    "dataType": "IS",
    "longName": "Dept. Cost Center",
    "hl7Table": "HL70319"
  },
  "BTX.10": {"dataType": "CE", "longName": "BP Units", "hl7Table": ""},
  "AUT.8": {
    "dataType": "NM",
    "longName": "Requested Number of Treatments",
    "hl7Table": ""
  },
  "SCH.3": {"dataType": "NM", "longName": "Occurrence Number", "hl7Table": ""},
  "STF.5": {
    "dataType": "IS",
    "longName": "Administrative Sex",
    "hl7Table": "HL70001"
  },
  "OBX.18": {
    "dataType": "EI",
    "longName": "Equipment Instance Identifier",
    "hl7Table": ""
  },
  "OBR.45": {
    "dataType": "CE",
    "longName": "Procedure Code Modifier",
    "hl7Table": "HL70340"
  },
  "RXE.23": {"dataType": "ST", "longName": "Give Rate Amount", "hl7Table": ""},
  "ARQ.23": {
    "dataType": "EI",
    "longName": "Parent Filler Appointment ID",
    "hl7Table": ""
  },
  "CER.29": {"dataType": "TS", "longName": "Revocation Date", "hl7Table": ""},
  "FAC.10": {
    "dataType": "ST",
    "longName": "Signature Authority Title",
    "hl7Table": ""
  },
  "OM1.39": {
    "dataType": "TX",
    "longName": "Factors that may Affect the Observation",
    "hl7Table": ""
  },
  "PID.29": {
    "dataType": "TS",
    "longName": "Patient Death Date and Time",
    "hl7Table": ""
  },
  "CER.4": {
    "dataType": "XON",
    "longName": "Granting Authority",
    "hl7Table": ""
  },
  "LAN.3": {
    "dataType": "CE",
    "longName": "Language Ability Code",
    "hl7Table": "HL70403"
  },
  "QRD.8": {
    "dataType": "XCN",
    "longName": "Who Subject Filter",
    "hl7Table": ""
  },
  "RXD.18": {
    "dataType": "ST",
    "longName": "Substance Lot Number",
    "hl7Table": ""
  },
  "IAM.8": {"dataType": "ST", "longName": "Action Reason", "hl7Table": ""},
  "LDP.10": {
    "dataType": "VH",
    "longName": "Visiting Hours",
    "hl7Table": "HL70267"
  },
  "PRD.8": {
    "dataType": "TS",
    "longName": "Effective Start Date of Provider Role",
    "hl7Table": ""
  },
  "LCH.2": {
    "dataType": "ID",
    "longName": "Segment Action Code",
    "hl7Table": "HL70206"
  },
  "PV1.4": {
    "dataType": "IS",
    "longName": "Admission Type",
    "hl7Table": "HL70007"
  },
  "CTI.3": {
    "dataType": "CE",
    "longName": "Study Scheduled Time Point",
    "hl7Table": ""
  },
  "MSH.10": {
    "dataType": "ST",
    "longName": "Message Control ID",
    "hl7Table": ""
  },
  "RXE.35": {
    "dataType": "CWE",
    "longName": "Controlled Substance Schedule",
    "hl7Table": "HL70477"
  },
  "ERR.4": {"dataType": "ID", "longName": "Severity", "hl7Table": "HL70516"},
  "SCH.12": {
    "dataType": "XCN",
    "longName": "Placer Contact Person",
    "hl7Table": ""
  },
  "GT1.51": {
    "dataType": "XON",
    "longName": "Guarantor Employer's Organization Name",
    "hl7Table": ""
  },
  "PRC.18": {
    "dataType": "IS",
    "longName": "Charge On Indicator",
    "hl7Table": "HL70269"
  },
  "GOL.11": {
    "dataType": "CE",
    "longName": "Current Goal Review Status",
    "hl7Table": ""
  },
  "CM2.3": {
    "dataType": "ST",
    "longName": "Description of Time Point",
    "hl7Table": ""
  },
  "CSR.2": {"dataType": "EI", "longName": "Alternate Study ID", "hl7Table": ""},
  "EQL.4": {
    "dataType": "ST",
    "longName": "EQL Query Statement",
    "hl7Table": ""
  },
  "CTD.7": {
    "dataType": "PLN",
    "longName": "Contact Identifiers",
    "hl7Table": ""
  },
  "NK1.18": {
    "dataType": "IS",
    "longName": "Ambulatory Status",
    "hl7Table": "HL70009"
  },
  "IN2.9": {
    "dataType": "XPN",
    "longName": "Military Sponsor Name",
    "hl7Table": ""
  },
  "TCC.6": {
    "dataType": "SN",
    "longName": "Pre-Dilution Factor Default",
    "hl7Table": ""
  },
  "ORC.29": {
    "dataType": "CWE",
    "longName": "Order Type",
    "hl7Table": "HL70482"
  },
  "RXA.21": {
    "dataType": "ID",
    "longName": "Action Code - RXA",
    "hl7Table": "HL70323"
  },
  "AIG.6": {"dataType": "NM", "longName": "Resource Quantity", "hl7Table": ""},
  "PD1.21": {
    "dataType": "IS",
    "longName": "Military Status",
    "hl7Table": "HL70142"
  },
  "MFI.5": {
    "dataType": "TS",
    "longName": "Effective Date/Time",
    "hl7Table": ""
  },
  "AIS.11": {
    "dataType": "CE",
    "longName": "Placer Supplemental Service Information",
    "hl7Table": "HL70411"
  },
  "SPM.21": {
    "dataType": "CWE",
    "longName": "Specimen Reject Reason",
    "hl7Table": "HL70490"
  },
  "IN2.56": {
    "dataType": "DT",
    "longName": "Relationship to the Patient Stop Date",
    "hl7Table": ""
  },
  "PV2.1": {
    "dataType": "PL",
    "longName": "Prior Pending Location",
    "hl7Table": ""
  },
  "PV2.17": {"dataType": "DT", "longName": "Purge Status Date", "hl7Table": ""},
  "TCD.4": {
    "dataType": "SN",
    "longName": "Pre-Dilution Factor",
    "hl7Table": ""
  },
  "EQP.3": {"dataType": "TS", "longName": "Start Date/Time", "hl7Table": ""},
  "VND.3": {"dataType": "ST", "longName": "Vendor Name", "hl7Table": ""},
  "MSH.1": {"dataType": "ST", "longName": "Field Separator", "hl7Table": ""},
  "RXC.9": {
    "dataType": "CWE",
    "longName": "Component Drug Strength Volume Units",
    "hl7Table": ""
  },
  "UB1.13": {
    "dataType": "CE",
    "longName": "PSRO/UR Approval Indicator (87)",
    "hl7Table": "HL70349"
  },
  "SAC.10": {
    "dataType": "EI",
    "longName": "Carrier Identifier",
    "hl7Table": ""
  },
  "URD.6": {
    "dataType": "ST",
    "longName": "R/U Display/Print Locations",
    "hl7Table": ""
  },
  "ORG.11": {
    "dataType": "ID",
    "longName": "Board Approval Indicator",
    "hl7Table": "HL70136"
  },
  "RXG.24": {
    "dataType": "CWE",
    "longName": "Give Drug Strength Volume Units",
    "hl7Table": ""
  },
  "RXE.19": {"dataType": "CQ", "longName": "Total Daily Dose", "hl7Table": ""},
  "MSA.2": {"dataType": "ST", "longName": "Message Control ID", "hl7Table": ""},
  "ARQ.19": {
    "dataType": "XCN",
    "longName": "Entered By Person",
    "hl7Table": ""
  },
  "CER.13": {"dataType": "ST", "longName": "Subject Name", "hl7Table": ""},
  "IN1.46": {
    "dataType": "IS",
    "longName": "Prior Insurance Plan ID",
    "hl7Table": "HL70072"
  },
  "TXA.16": {
    "dataType": "ST",
    "longName": "Unique Document File Name",
    "hl7Table": ""
  },
  "PSH.13": {
    "dataType": "NM",
    "longName": "Number of Product Experience Reports Filed by Facility",
    "hl7Table": ""
  },
  "CON.9": {
    "dataType": "FT",
    "longName": "Consenter-imposed limitations",
    "hl7Table": ""
  },
  "OBX.22": {"dataType": "CNE", "longName": "Mood Identifier", "hl7Table": ""},
  "STF.24": {"dataType": "DT", "longName": "Auto Ins. Expires", "hl7Table": ""},
  "PCR.19": {
    "dataType": "ID",
    "longName": "Device Operator Qualifications",
    "hl7Table": "HL70242"
  },
  "PEO.13": {
    "dataType": "FT",
    "longName": "Event Description From Others",
    "hl7Table": ""
  },
  "INV.16": {
    "dataType": "ST",
    "longName": "Manufacturer Lot Number",
    "hl7Table": ""
  },
  "BPO.7": {
    "dataType": "TS",
    "longName": "BP Intended Use Date/Time",
    "hl7Table": ""
  },
  "PV2.40": {
    "dataType": "CE",
    "longName": "Admission Level of Care Code",
    "hl7Table": "HL70432"
  },
  "IN1.11": {
    "dataType": "XON",
    "longName": "Insured's Group Emp Name",
    "hl7Table": ""
  },
  "CDM.7": {
    "dataType": "CE",
    "longName": "Procedure Code",
    "hl7Table": "HL70088"
  },
  "ERQ.1": {"dataType": "ST", "longName": "Query Tag", "hl7Table": ""},
  "IVT.17": {
    "dataType": "CNE",
    "longName": "Reusable Item Indicator",
    "hl7Table": "HL70532"
  },
  "NK1.34": {"dataType": "IS", "longName": "Job Status", "hl7Table": "HL70311"},
  "RXO.13": {"dataType": "NM", "longName": "Number Of Refills", "hl7Table": ""},
  "GP1.5": {"dataType": "CP", "longName": "Outlier Cost", "hl7Table": ""},
  "LDP.6": {
    "dataType": "ID",
    "longName": "Active/Inactive Flag",
    "hl7Table": "HL70183"
  },
  "OBR.28": {"dataType": "XCN", "longName": "Result Copies To", "hl7Table": ""},
  "PRB.19": {
    "dataType": "CE",
    "longName": "Certainty of Problem",
    "hl7Table": ""
  },
  "PV1.50": {
    "dataType": "CX",
    "longName": "Alternate Visit ID",
    "hl7Table": "HL70203"
  },
  "IIM.5": {
    "dataType": "CWE",
    "longName": "Inventory Manufacturer Name",
    "hl7Table": ""
  },
  "IN2.17": {
    "dataType": "DT",
    "longName": "Military Retire Date",
    "hl7Table": ""
  },
  "STF.32": {
    "dataType": "ID",
    "longName": "Death Indicator",
    "hl7Table": "HL70136"
  },
  "MFA.2": {"dataType": "ST", "longName": "MFN Control ID", "hl7Table": ""},
  "STZ.2": {
    "dataType": "CWE",
    "longName": "Sterilization Cycle",
    "hl7Table": ""
  },
  "ROL.11": {
    "dataType": "XAD",
    "longName": "Office/Home Address/Birthplace",
    "hl7Table": ""
  },
  "AIS.6": {
    "dataType": "CE",
    "longName": "Start Date/Time Offset Units",
    "hl7Table": ""
  },
  "BPX.2": {
    "dataType": "CWE",
    "longName": "BP Dispense Status",
    "hl7Table": "HL70510"
  },
  "ILT.2": {
    "dataType": "ST",
    "longName": "Inventory Lot Number",
    "hl7Table": ""
  },
  "NK1.22": {
    "dataType": "CE",
    "longName": "Publicity Code",
    "hl7Table": "HL70215"
  },
  "DG1.18": {
    "dataType": "ID",
    "longName": "Confidential Indicator",
    "hl7Table": "HL70136"
  },
  "QRF.9": {
    "dataType": "TQ",
    "longName": "When Quantity/Timing Qualifier",
    "hl7Table": ""
  },
  "FT1.20": {
    "dataType": "XCN",
    "longName": "Performed By Code",
    "hl7Table": "HL70084"
  },
  "ORC.13": {
    "dataType": "PL",
    "longName": "Enterer's Location",
    "hl7Table": ""
  },
  "DRG.10": {
    "dataType": "ID",
    "longName": "Confidential Indicator",
    "hl7Table": "HL70136"
  },
  "DB1.8": {
    "dataType": "DT",
    "longName": "Disability Unable to Work Date",
    "hl7Table": ""
  },
  "OM1.42": {
    "dataType": "CE",
    "longName": "Kind of Quantity Observed",
    "hl7Table": "HL70254"
  },
  "PV1.46": {
    "dataType": "NM",
    "longName": "Current Patient Balance",
    "hl7Table": ""
  },
  "EVN.1": {
    "dataType": "ID",
    "longName": "Event Type Code",
    "hl7Table": "HL70003"
  },
  "OM2.8": {
    "dataType": "RFR",
    "longName": "Absolute Range for Ordinal and Continuous Observations",
    "hl7Table": ""
  },
  "GOL.6": {"dataType": "NM", "longName": "Goal List Priority", "hl7Table": ""},
  "IN2.40": {
    "dataType": "XPN",
    "longName": "Mother's Maiden Name",
    "hl7Table": ""
  },
  "AIL.4": {
    "dataType": "CE",
    "longName": "Location Type-AIL",
    "hl7Table": "HL70305"
  },
  "NK1.8": {"dataType": "DT", "longName": "Start Date", "hl7Table": ""},
  "UB2.15": {
    "dataType": "ST",
    "longName": "UB92 Locator 57 (National)",
    "hl7Table": ""
  },
  "RXD.22": {
    "dataType": "NM",
    "longName": "Dispense Package Size",
    "hl7Table": ""
  },
  "RCP.3": {
    "dataType": "CE",
    "longName": "Response Modality",
    "hl7Table": "HL70394"
  },
  "PID.13": {
    "dataType": "XTN",
    "longName": "Phone Number - Home",
    "hl7Table": ""
  },
  "MFE.5": {
    "dataType": "ID",
    "longName": "Primary Key Value Type",
    "hl7Table": "HL70355"
  },
  "SPM.5": {
    "dataType": "CWE",
    "longName": "Specimen Type Modifier",
    "hl7Table": "HL70541"
  },
  "IN1.50": {
    "dataType": "IS",
    "longName": "Signature Code",
    "hl7Table": "HL70535"
  },
  "GT1.7": {
    "dataType": "XTN",
    "longName": "Guarantor Ph Num - Business",
    "hl7Table": ""
  },
  "OM1.15": {
    "dataType": "ID",
    "longName": "Portable Device Indicator",
    "hl7Table": "HL70136"
  },
  "CM0.2": {"dataType": "EI", "longName": "Sponsor Study ID", "hl7Table": ""},
  "URS.3": {
    "dataType": "TS",
    "longName": "R/U When Data End Date/Time",
    "hl7Table": ""
  },
  "FT1.7": {
    "dataType": "CE",
    "longName": "Transaction Code",
    "hl7Table": "HL70132"
  },
  "MRG.5": {"dataType": "CX", "longName": "Prior Visit Number", "hl7Table": ""},
  "CSP.3": {
    "dataType": "TS",
    "longName": "Date/time Study Phase Ended",
    "hl7Table": ""
  },
  "PSH.9": {
    "dataType": "FT",
    "longName": "Quantity Distributed Comment",
    "hl7Table": ""
  },
  "INV.4": {
    "dataType": "CE",
    "longName": "Inventory Container Identifier",
    "hl7Table": ""
  },
  "RXO.9": {
    "dataType": "ID",
    "longName": "Allow Substitutions",
    "hl7Table": "HL70161"
  },
  "CON.13": {
    "dataType": "TS",
    "longName": "Consent Decision Date/Time",
    "hl7Table": ""
  },
  "PV1.11": {"dataType": "PL", "longName": "Temporary Location", "hl7Table": ""}
};
