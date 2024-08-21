const schemaMessages = <String, dynamic>{
  "SIU_S12": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"}
      ]
    },
    "SERVICE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GENERAL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "LOCATION_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PERSONNEL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "RESOURCES": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RGS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SERVICE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GENERAL_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "LOCATION_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PERSONNEL_RESOURCE"
        }
      ]
    },
    "SIU_S12": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SCH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "RESOURCES"}
      ]
    }
  },
  "MFN_M09": {
    "MF_TEST_CAT_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OM4"}
      ]
    },
    "MF_TEST_CATEGORICAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "MF_TEST_CAT_DETAIL"}
      ]
    },
    "MFN_M09": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "MF_TEST_CATEGORICAL"
        }
      ]
    }
  },
  "INR_U06": {
    "INR_U06": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "INV"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "RSP_K31": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMPONENTS": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMPONENTS"}
      ]
    },
    "TIMING_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ENCODING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "TIMING_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RSP_K31": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "RESPONSE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "MFR_M01": {
    "MF_QUERY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1"}
      ]
    },
    "MFR_M01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_QUERY"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ORD_O04": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING_DIET": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER_DIET": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_DIET"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ODS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING_TRAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER_TRAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_TRAY"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ODT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER_DIET"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER_TRAY"}
      ]
    },
    "ORD_O04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "ADT_A50": {
    "ADT_A50": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MRG"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"}
      ]
    }
  },
  "ORM_O01": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "OBRRQDRQ1RXOODSODT_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQ1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ODS"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ODT"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "group": "OBRRQDRQ1RXOODSODT_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"}
      ]
    },
    "ORM_O01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "ORN_O08": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RQD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "ORN_O08": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "MFN_M05": {
    "MF_LOC_DEPT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "LDP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LCH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LCC"}
      ]
    },
    "MF_LOCATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "LOC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LCH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LRL"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_LOC_DEPT"}
      ]
    },
    "MFN_M05": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_LOCATION"}
      ]
    }
  },
  "SRR_S01": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"}
      ]
    },
    "SERVICE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GENERAL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "LOCATION_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PERSONNEL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "RESOURCES": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RGS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SERVICE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GENERAL_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "LOCATION_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PERSONNEL_RESOURCE"
        }
      ]
    },
    "SCHEDULE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SCH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "RESOURCES"}
      ]
    },
    "SRR_S01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "SCHEDULE"}
      ]
    }
  },
  "PPT_PCL": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATHWAY_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PROBLEM_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PROBLEM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PROBLEM_OBSERVATION"
        }
      ]
    },
    "OBR_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "group": "OBR_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        }
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"}
      ]
    },
    "GOAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "GOL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GOAL_OBSERVATION"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "PATHWAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PTH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PATHWAY_ROLE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATHWAY"}
      ]
    },
    "PPT_PCL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "NMD_N02": {
    "CLOCK": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "NCK"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "APP_STATS": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "NST"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "APP_STATUS": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "NSC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "CLOCK_AND_STATS_WITH_NOTES": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "CLOCK"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "APP_STATS"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "APP_STATUS"}
      ]
    },
    "NMD_N02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "CLOCK_AND_STATS_WITH_NOTES"
        }
      ]
    }
  },
  "OMD_O03": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING_DIET": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "DIET": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "ODS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "ORDER_DIET": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_DIET"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "DIET"}
      ]
    },
    "TIMING_TRAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER_TRAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_TRAY"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "ODT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OMD_O03": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER_DIET"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER_TRAY"}
      ]
    }
  },
  "PMU_B01": {
    "PMU_B01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "STF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PRA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ORG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AFF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LAN"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "EDU"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CER"}
      ]
    }
  },
  "MFN_M13": {
    "MFN_M13": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "MFE"}
      ]
    }
  },
  "RSP_K11": {
    "ROW_DEFINITION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RDF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RDT"}
      ]
    },
    "RSP_K11": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ROW_DEFINITION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RSP_Z86": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "TIMING_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ENCODED_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "DISPENSE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "GIVE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXG"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "ADMINISTRATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXA"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "COMMON_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODED_ORDER"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "DISPENSE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "GIVE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ADMINISTRATION"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "QUERY_RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "COMMON_ORDER"}
      ]
    },
    "RSP_Z86": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "QUERY_RESPONSE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RSP_Z90": {
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "COMMON_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"}
      ]
    },
    "QUERY_RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "COMMON_ORDER"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SPECIMEN"}
      ]
    },
    "RSP_Z90": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "QUERY_RESPONSE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "PPP_PCB": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATHWAY_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GOAL_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GOAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "GOL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GOAL_OBSERVATION"
        }
      ]
    },
    "OBR_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "group": "OBR_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        }
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"}
      ]
    },
    "PROBLEM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PROBLEM_OBSERVATION"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "PATHWAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PTH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PATHWAY_ROLE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM"}
      ]
    },
    "PPP_PCB": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATHWAY"}
      ]
    }
  },
  "VXQ_V01": {
    "VXQ_V01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"}
      ]
    }
  },
  "MDM_T01": {
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMMON_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "MDM_T01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMMON_ORDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TXA"}
      ]
    }
  },
  "PPR_PC1": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PROBLEM_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PATHWAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PTH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GOAL_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GOAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "GOL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GOAL_OBSERVATION"
        }
      ]
    },
    "OBR_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "group": "OBR_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        }
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"}
      ]
    },
    "PROBLEM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM_ROLE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PATHWAY"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PROBLEM_OBSERVATION"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "PPR_PC1": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROBLEM"}
      ]
    }
  },
  "PPG_PCG": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATHWAY_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PROBLEM_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PROBLEM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PROBLEM_OBSERVATION"
        }
      ]
    },
    "OBR_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "group": "OBR_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        }
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"}
      ]
    },
    "GOAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "GOL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GOAL_OBSERVATION"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "PATHWAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PTH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PATHWAY_ROLE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL"}
      ]
    },
    "PPG_PCG": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATHWAY"}
      ]
    }
  },
  "ACK": {
    "ACK": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"}
      ]
    }
  },
  "RQC_I05": {
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "RQC_I05": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "RSP_Q11": {
    "MF_LOC_DEPT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "LDP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LCH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LCC"}
      ]
    },
    "QUERY_RESULT_CLUSTER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "LOC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LCH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LRL"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_LOC_DEPT"}
      ]
    },
    "RSP_Q11": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "QUERY_RESULT_CLUSTER"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "DSR_Q03": {
    "DSR_Q03": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "DSP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QRY_R02": {
    "QRY_R02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRF"}
      ]
    }
  },
  "OUL_R24": {
    "PIDPD1NTE_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PV1PV2_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "TQ1TQ2_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "INV"}
      ]
    },
    "SPMOBXSACINV_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "CONTAINER"}
      ]
    },
    "OBXTCDSIDNTE_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TQ1TQ2_SUPPGRP"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "SPMOBXSACINV_SUPPGRP"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "OBXTCDSIDNTE_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"}
      ]
    },
    "OUL_R24": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PIDPD1NTE_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PV1PV2_SUPPGRP"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "MFN_M12": {
    "MF_OBS_ATTRIBUTES": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OM7"}
      ]
    },
    "MFN_M12": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "MF_OBS_ATTRIBUTES"
        }
      ]
    }
  },
  "CSU_C09": {
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "TIMING_QTY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "STUDY_OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_QTY"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "OBX"}
      ]
    },
    "RXARXR_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXA"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXR"}
      ]
    },
    "ORCRXARXR_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "RXARXR_SUPPGRP"}
      ]
    },
    "STUDY_SCHEDULE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CSS"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "STUDY_OBSERVATION"
        },
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "ORCRXARXR_SUPPGRP"
        }
      ]
    },
    "STUDY_PHASE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CSP"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "STUDY_SCHEDULE"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CSR"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "STUDY_PHASE"}
      ]
    },
    "CSU_C09": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "SRM_S01": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"}
      ]
    },
    "SERVICE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIS"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GENERAL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIG"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "LOCATION_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIL"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PERSONNEL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "RESOURCES": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RGS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SERVICE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GENERAL_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "LOCATION_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PERSONNEL_RESOURCE"
        }
      ]
    },
    "SRM_S01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ARQ"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "RESOURCES"}
      ]
    }
  },
  "ORL_O36": {
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION_REQUEST": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "OBSERVATION_REQUEST"}
      ]
    },
    "SPECIMEN_CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "SPECIMEN_CONTAINER"
        }
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "SPECIMEN"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"}
      ]
    },
    "ORL_O36": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "ADT_A30": {
    "ADT_A30": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MRG"}
      ]
    }
  },
  "QBP_Q21": {
    "QBP_Q21": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "MFN_M04": {
    "MF_CDM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CDM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PRC"}
      ]
    },
    "MFN_M04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_CDM"}
      ]
    }
  },
  "EDR_R07": {
    "EDR_R07": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "DSP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "PRR_PC5": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PROBLEM_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_PATHWAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PTH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GOAL_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GOAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "GOL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GOAL_OBSERVATION"
        }
      ]
    },
    "OBRanyHL7Segment_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "group": "OBRanyHL7Segment_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        }
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"}
      ]
    },
    "PROBLEM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PROBLEM_PATHWAY"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PROBLEM_OBSERVATION"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROBLEM"}
      ]
    },
    "PRR_PC5": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "ADT_A06": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "ADT_A06": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "MRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB2"}
      ]
    }
  },
  "BPS_O29": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "PRODUCT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "BPX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "BPO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PRODUCT"}
      ]
    },
    "BPS_O29": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "ORG_O20": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SAC"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SPECIMEN"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "ORG_O20": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "BAR_P02": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"}
      ]
    },
    "BAR_P02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "VQQ_Q07": {
    "VQQ_Q07": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "VTQ"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RDF"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "MFN_M08": {
    "MF_TEST_NUMERIC": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OM2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OM3"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OM4"}
      ]
    },
    "MFN_M08": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_TEST_NUMERIC"}
      ]
    }
  },
  "ADT_A60": {
    "ADT_A60": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IAM"}
      ]
    }
  },
  "ESU_U01": {
    "ESU_U01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ISD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "EAN_U09": {
    "NOTIFICATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "NDS"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NTE"}
      ]
    },
    "EAN_U09": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "NOTIFICATION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "BTS_O31": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "PRODUCT_STATUS": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "BTX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "BPO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PRODUCT_STATUS"}
      ]
    },
    "BTS_O31": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "RTB_Z74": {
    "ROW_DEFINITION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RDF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RDT"}
      ]
    },
    "RTB_Z74": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ROW_DEFINITION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "MFN_M03": {
    "MF_TEST": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM1"},
        {"minOccurs": "1", "maxOccurs": "1"}
      ]
    },
    "MFN_M03": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_TEST"}
      ]
    }
  },
  "ADT_A37": {
    "ADT_A37": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "segment": "PID",
          "jsonKey": "PID_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PD1",
          "jsonKey": "PD1_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PV1",
          "jsonKey": "PV1_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "DB1",
          "jsonKey": "DB1_1"
        },
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "segment": "PID",
          "jsonKey": "PID_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PD1",
          "jsonKey": "PD1_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PV1",
          "jsonKey": "PV1_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "DB1",
          "jsonKey": "DB1_2"
        }
      ]
    }
  },
  "ORF_R04": {
    "PIDNTE_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TQ1TQ2_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBXNTE_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TQ1TQ2_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBXNTE_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"}
      ]
    },
    "PIDNTEORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PIDNTE_SUPPGRP"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "ORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP"
        }
      ]
    },
    "ORF_R04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "PIDNTEORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RDR_RDR": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ENCODING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "DISPENSE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODING"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "DISPENSE"}
      ]
    },
    "DEFINITION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RDR_RDR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "DEFINITION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ADT_A21": {
    "ADT_A21": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"}
      ]
    }
  },
  "PMU_B07": {
    "CERTIFICATE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CER"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "PMU_B07": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "STF"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PRA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "CERTIFICATE"}
      ]
    }
  },
  "MFN_M15": {
    "MF_INV_ITEM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IIM"}
      ]
    },
    "MFN_M15": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_INV_ITEM"}
      ]
    }
  },
  "OUL_R23": {
    "PIDPD1NTE_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PV1PV2_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "TQ1TQ2_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBXTCDSIDNTE_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TQ1TQ2_SUPPGRP"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "OBXTCDSIDNTE_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"}
      ]
    },
    "CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "INV"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "SPMOBXSACINVOBRORCNTETQ1TQ2OBXTCDSIDNTECTI_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "CONTAINER"}
      ]
    },
    "OUL_R23": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PIDPD1NTE_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PV1PV2_SUPPGRP"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "SPMOBXSACINVOBRORCNTETQ1TQ2OBXTCDSIDNTECTI_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QBP_Z73": {
    "QBP_Z73": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"}
      ]
    }
  },
  "VXX_V02": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"}
      ]
    },
    "VXX_V02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "OSR_Q06": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBRRQDRQ1RXOODSODT_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQ1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ODS"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ODT"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "group": "OBRRQDRQ1RXOODSODT_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "OSR_Q06": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "DFT_P11": {
    "TIMING_QUANTITY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "COMMON_ORDER": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "TIMING_QUANTITY"
        },
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "FINANCIAL_PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "FINANCIAL_TIMING_QUANTITY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "FINANCIAL_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "FINANCIAL_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "FINANCIAL_COMMON_ORDER": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "FINANCIAL_TIMING_QUANTITY"
        },
        {"minOccurs": "0", "maxOccurs": "1", "group": "FINANCIAL_ORDER"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "FINANCIAL_OBSERVATION"
        }
      ]
    },
    "FINANCIAL_INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "FINANCIAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "FT1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "FINANCIAL_PROCEDURE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "FINANCIAL_COMMON_ORDER"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "FINANCIAL_INSURANCE"
        }
      ]
    },
    "DFT_P11": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMMON_ORDER"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "FINANCIAL"}
      ]
    }
  },
  "RPI_I04": {
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "GUARANTOR_INSURANCE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "INSURANCE"}
      ]
    },
    "RPI_I04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "GUARANTOR_INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "RQP_I04": {
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "RQP_I04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "RER_RER": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "DEFINITION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RER_RER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "DEFINITION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RCI_I05": {
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "RESULTS": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "RESULTS"}
      ]
    },
    "RCI_I05": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "BAR_P05": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "VISIT": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ABS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "BLC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RMI"}
      ]
    },
    "BAR_P05": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "VISIT"}
      ]
    }
  },
  "RSP_K21": {
    "QUERY_RESPONSE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRI"}
      ]
    },
    "RSP_K21": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "QUERY_RESPONSE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "MFR_M07": {
    "MF_QUERY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CM0"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CM2"}
      ]
    },
    "MFR_M07": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_QUERY"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ORS_O06": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RQD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "ORS_O06": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "ADT_A01": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "ADT_A01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PDA"}
      ]
    }
  },
  "MFK_M01": {
    "MFK_M01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "MFA"}
      ]
    }
  },
  "SQR_S25": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DG1"}
      ]
    },
    "SERVICE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GENERAL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PERSONNEL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "LOCATION_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "RESOURCES": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RGS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SERVICE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GENERAL_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PERSONNEL_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "LOCATION_RESOURCE"
        }
      ]
    },
    "SCHEDULE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SCH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "RESOURCES"}
      ]
    },
    "SQR_S25": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SCHEDULE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "SUR_P09": {
    "PSHPDC_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PDC"}
      ]
    },
    "FACPDCNTE_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "FAC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PDC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "NTE"}
      ]
    },
    "FACPSHPDCPSHFACPDCNTEED_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "FAC"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PSHPDC_SUPPGRP"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PSH"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "FACPDCNTE_SUPPGRP"
        },
        {"minOccurs": "1", "maxOccurs": "1"}
      ]
    },
    "SUR_P09": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "FACPSHPDCPSHFACPDCNTEED_SUPPGRP"
        }
      ]
    }
  },
  "ADT_A17": {
    "ADT_A17": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "segment": "PID",
          "jsonKey": "PID_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PD1",
          "jsonKey": "PD1_1"
        },
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "segment": "PV1",
          "jsonKey": "PV1_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PV2",
          "jsonKey": "PV2_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "DB1",
          "jsonKey": "DB1_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "OBX",
          "jsonKey": "OBX_1"
        },
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "segment": "PID",
          "jsonKey": "PID_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PD1",
          "jsonKey": "PD1_2"
        },
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "segment": "PV1",
          "jsonKey": "PV1_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PV2",
          "jsonKey": "PV2_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "DB1",
          "jsonKey": "DB1_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "OBX",
          "jsonKey": "OBX_2"
        }
      ]
    }
  },
  "ADT_A16": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "ADT_A16": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"}
      ]
    }
  },
  "ORI_O24": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "IPC"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "ORI_O24": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "LSU_U12": {
    "LSU_U12": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "EQP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "VXR_V03": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "VXR_V03": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "SQM_S25": {
    "SERVICE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIS"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"}
      ]
    },
    "GENERAL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIG"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"}
      ]
    },
    "PERSONNEL_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"}
      ]
    },
    "LOCATION_RESOURCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AIL"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"}
      ]
    },
    "RESOURCES": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RGS"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SERVICE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GENERAL_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PERSONNEL_RESOURCE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "LOCATION_RESOURCE"
        }
      ]
    },
    "REQUEST": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ARQ"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "APR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "RESOURCES"}
      ]
    },
    "SQM_S25": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "REQUEST"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QBP_Q11": {
    "QBP_Q11": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ORB_O28": {
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BPO"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"}
      ]
    },
    "ORB_O28": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "OML_O21": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "CONTAINER"}
      ]
    },
    "PATIENT_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"}
      ]
    },
    "PATIENT_VISIT_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "TIMING_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_PRIOR": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_PRIOR"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "OBSERVATION_PRIOR"
        }
      ]
    },
    "PRIOR_RESULT": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_PRIOR"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT_PRIOR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER_PRIOR"}
      ]
    },
    "OBSERVATION_REQUEST": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SPECIMEN"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PRIOR_RESULT"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "OBSERVATION_REQUEST"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"}
      ]
    },
    "OML_O21": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "MFR_M06": {
    "MF_QUERY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CM0"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CM1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CM2"}
      ]
    },
    "MFR_M06": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_QUERY"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "BAR_P12": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "BAR_P12": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"}
      ]
    }
  },
  "VXU_V04": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "VXU_V04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "QCK_Q02": {
    "QCK_Q02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"}
      ]
    }
  },
  "RCL_I06": {
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "RCL_I06": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DSP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RQQ_Q09": {
    "RQQ_Q09": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ERQ"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "OUL_R22": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "INV"}
      ]
    },
    "TIMING_QTY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBXTCDSIDNTE_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_QTY"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "OBXTCDSIDNTE_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "CONTAINER"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "OUL_R22": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "SPECIMEN"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QRY_Q01": {
    "QRY_Q01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ADT_A20": {
    "ADT_A20": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "NPU"}
      ]
    }
  },
  "OMI_O23": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "IPC"}
      ]
    },
    "OMI_O23": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "NMR_N01": {
    "CLOCK_AND_STATS_WITH_NOTES_ALT": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NCK"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "NTE",
          "jsonKey": "NTE_1"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NST"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "NTE",
          "jsonKey": "NTE_2"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NSC"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "NTE",
          "jsonKey": "NTE_3"
        }
      ]
    },
    "NMR_N01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRD"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "CLOCK_AND_STATS_WITH_NOTES_ALT"
        }
      ]
    }
  },
  "OMP_O09": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMPONENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMPONENT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"}
      ]
    },
    "OMP_O09": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "RRA_O18": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ADMINISTRATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXA"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXR"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ADMINISTRATION"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RRA_O18": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "MFN_M02": {
    "MF_STAFF": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "STF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PRA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ORG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AFF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LAN"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "EDU"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CER"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "MFN_M02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_STAFF"}
      ]
    }
  },
  "ADT_A61": {
    "ADT_A61": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    }
  },
  "RSP_Z82": {
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "TREATMENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "TREATMENT"}
      ]
    },
    "TIMING_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ENCODED_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "COMMON_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODED_ORDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "QUERY_RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "COMMON_ORDER"}
      ]
    },
    "RSP_Z82": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "QUERY_RESPONSE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "REF_I12": {
    "AUTHORIZATION_CONTACT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AUT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"}
      ]
    },
    "PROVIDER_CONTACT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "AUTCTD_SUPPGRP2": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AUT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"}
      ]
    },
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "AUTCTD_SUPPGRP2"}
      ]
    },
    "RESULTS_NOTES": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "RESULTS_NOTES"}
      ]
    },
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "REF_I12": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RF1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "AUTHORIZATION_CONTACT"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "PROVIDER_CONTACT"
        },
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "OUL_R21": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "SID"}
      ]
    },
    "TIMING_QTY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "CONTAINER"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_QTY"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"}
      ]
    },
    "OUL_R21": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RDS_O13": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMPONENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_DETAIL_SUPPLEMENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMPONENT"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL_SUPPLEMENT"}
      ]
    },
    "TIMING_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ENCODING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "TIMING_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"}
      ]
    },
    "RDS_O13": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "PPV_PCA": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "GOAL_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_PATHWAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PTH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PROBLEM_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PROBLEM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PROBLEM_OBSERVATION"
        }
      ]
    },
    "ORDER_CHOICE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "group": "ORDER_CHOICE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        }
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"}
      ]
    },
    "GOAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "GOL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL_ROLE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL_PATHWAY"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GOAL_OBSERVATION"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "GOAL"}
      ]
    },
    "PPV_PCA": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "MFN_M01": {
    "MF": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "0", "maxOccurs": "1"}
      ]
    },
    "MFN_M01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF"}
      ]
    }
  },
  "ADT_A15": {
    "ADT_A15": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"}
      ]
    }
  },
  "INU_U05": {
    "INU_U05": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "INV"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "PTR_PCF": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATHWAY_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GOAL_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "GOAL_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GOAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "GOL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "GOAL_OBSERVATION"
        }
      ]
    },
    "OBR_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "group": "OBR_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        }
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"}
      ]
    },
    "PROBLEM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PROBLEM_OBSERVATION"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "PATHWAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PTH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PATHWAY_ROLE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATHWAY"}
      ]
    },
    "PTR_PCF": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "ADT_A54": {
    "ADT_A54": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        }
      ]
    }
  },
  "ADT_A03": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "ADT_A03": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PDA"}
      ]
    }
  },
  "TCU_U10": {
    "TEST_CONFIGURATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "TCC"}
      ]
    },
    "TCU_U10": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "TEST_CONFIGURATION"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "PEX_P07": {
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "TIMING_QTY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "RX_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "TIMING_QTY"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXR"}
      ]
    },
    "RX_ADMINISTRATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RXR"}
      ]
    },
    "NK1_TIMING_QTY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ASSOCIATED_RX_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "NK1_TIMING_QTY"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXR"}
      ]
    },
    "ASSOCIATED_RX_ADMIN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RXR"}
      ]
    },
    "ASSOCIATED_PERSON": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ASSOCIATED_RX_ORDER"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "ASSOCIATED_RX_ADMIN"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"}
      ]
    },
    "STUDY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CSR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CSP"}
      ]
    },
    "PEX_CAUSE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PCR"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RX_ORDER"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "RX_ADMINISTRATION"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ASSOCIATED_PERSON"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "STUDY"}
      ]
    },
    "PEX_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PEO"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PEX_CAUSE"}
      ]
    },
    "EXPERIENCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PES"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PEX_OBSERVATION"}
      ]
    },
    "PEX_P07": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "EXPERIENCE"}
      ]
    }
  },
  "ERP_R09": {
    "ERP_R09": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ERQ"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "MFR_M05": {
    "MF_QUERY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "LOC"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "LCH",
          "jsonKey": "LCH_1"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LRL"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "LDP"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "LCH",
          "jsonKey": "LCH_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LCC"}
      ]
    },
    "MFR_M05": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_QUERY"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "OMN_O07": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RQD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"}
      ]
    },
    "OMN_O07": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "UDM_Q05": {
    "UDM_Q05": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "URD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "URS"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "DSP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RSP_K23": {
    "QUERY_RESPONSE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"}
      ]
    },
    "RSP_K23": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "QUERY_RESPONSE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ADT_A39": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MRG"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"}
      ]
    },
    "ADT_A39": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "SSU_U03": {
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"}
      ]
    },
    "SPECIMEN_CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SPECIMEN"}
      ]
    },
    "SSU_U03": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "SPECIMEN_CONTAINER"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "BAR_P06": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"}
      ]
    },
    "BAR_P06": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "RDY_K15": {
    "RDY_K15": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DSP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RTB_Knn": {
    "RTB_Knn": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1"},
        {"minOccurs": "0", "maxOccurs": "1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ADT_A38": {
    "ADT_A38": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"}
      ]
    }
  },
  "BAR_P10": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GP2"}
      ]
    },
    "BAR_P10": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "GP1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"}
      ]
    }
  },
  "PMU_B08": {
    "PMU_B08": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "STF"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PRA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CER"}
      ]
    }
  },
  "MFR_M04": {
    "MF_QUERY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CDM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PRC"}
      ]
    },
    "MFR_M04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_QUERY"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "TBR_R08": {
    "TBR_R08": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RDF"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RDT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QBP_Q13": {
    "QBP_Q13": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RDF"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ADT_A02": {
    "ADT_A02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PDA"}
      ]
    }
  },
  "RQI_I01": {
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "GUARANTOR_INSURANCE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "INSURANCE"}
      ]
    },
    "RQI_I01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "GUARANTOR_INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "SPQ_Q08": {
    "SPQ_Q08": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RDF"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ADT_A43": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MRG"}
      ]
    },
    "ADT_A43": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "SSR_U04": {
    "SPECIMEN_CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SPM"}
      ]
    },
    "SSR_U04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "SPECIMEN_CONTAINER"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "OML_O35": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PATIENT_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"}
      ]
    },
    "PATIENT_VISIT_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "TIMING_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_PRIOR": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_PRIOR"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "OBSERVATION_PRIOR"
        }
      ]
    },
    "PRIOR_RESULT": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_PRIOR"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT_PRIOR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER_PRIOR"}
      ]
    },
    "OBSERVATION_REQUEST": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PRIOR_RESULT"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "OBSERVATION_REQUEST"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"}
      ]
    },
    "SPECIMEN_CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "SPECIMEN_CONTAINER"
        }
      ]
    },
    "OML_O35": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "SPECIMEN"}
      ]
    }
  },
  "ORU_R01": {
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"}
      ]
    },
    "TIMING_QTY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_QTY"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SPECIMEN"}
      ]
    },
    "PATIENT_RESULT": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        }
      ]
    },
    "ORU_R01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT_RESULT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "PMU_B04": {
    "PMU_B04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "STF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PRA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ORG"}
      ]
    }
  },
  "OMG_O19": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "CONTAINER"}
      ]
    },
    "PATIENT_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"}
      ]
    },
    "PATIENT_VISIT_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "TIMING_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_PRIOR": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_PRIOR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "OBSERVATION_PRIOR"
        }
      ]
    },
    "PRIOR_RESULT": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_PRIOR"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT_PRIOR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER_PRIOR"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SPECIMEN"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PRIOR_RESULT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"}
      ]
    },
    "OMG_O19": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "MFQ_M01": {
    "MFQ_M01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "MFN_M16": {
    "MATERIAL_ITEM_RECORD": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ITM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "STERILIZATION"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PURCHASING_VENDOR"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "MATERIAL_LOCATION"
        }
      ]
    },
    "STERILIZATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "STZ"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PURCHASING_VENDOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "VND"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PACKAGING"}
      ]
    },
    "PACKAGING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PKG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PCE"}
      ]
    },
    "MATERIAL_LOCATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IVT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ILT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "MFN_M16": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "MATERIAL_ITEM_RECORD"
        }
      ]
    }
  },
  "QRY_PC4": {
    "QRY_PC4": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"}
      ]
    }
  },
  "CRM_C01": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CSR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CSP"}
      ]
    },
    "CRM_C01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PATIENT"}
      ]
    }
  },
  "RQA_I08": {
    "AUTHORIZATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AUT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"}
      ]
    },
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "GUARANTOR_INSURANCE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "INSURANCE"}
      ]
    },
    "AUTCTD_SUPPGRP2": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AUT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"}
      ]
    },
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "AUTCTD_SUPPGRP2"}
      ]
    },
    "RESULTS": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "RESULTS"}
      ]
    },
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "RQA_I08": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RF1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "AUTHORIZATION"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "GUARANTOR_INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "ADT_A18": {
    "ADT_A18": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MRG"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"}
      ]
    }
  },
  "RRD_O14": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "DISPENSE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "DISPENSE"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RRD_O14": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "RRI_I12": {
    "AUTHORIZATION_CONTACT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AUT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"}
      ]
    },
    "PROVIDER_CONTACT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "AUTCTD_SUPPGRP2": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AUT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"}
      ]
    },
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "AUTCTD_SUPPGRP2"}
      ]
    },
    "RESULTS_NOTES": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "RESULTS_NOTES"}
      ]
    },
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "RRI_I12": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RF1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "AUTHORIZATION_CONTACT"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "PROVIDER_CONTACT"
        },
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "RRG_O16": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "TIMING_GIVE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "GIVE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXG"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "TIMING_GIVE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "GIVE"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RRG_O16": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "ADT_A52": {
    "ADT_A52": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    }
  },
  "RSP_Z88": {
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "ALLERGY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ALLERGY"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMPONENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "COMPONENT"}
      ]
    },
    "TIMING_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "COMMON_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXD"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "QUERY_RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "COMMON_ORDER"}
      ]
    },
    "RSP_Z88": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "QUERY_RESPONSE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RGR_RGR": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ENCODING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODING"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXG"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "DEFINITION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RGR_RGR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "DEFINITION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QRY_A19": {
    "QRY_A19": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"}
      ]
    }
  },
  "ADT_A05": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "ADT_A05": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB2"}
      ]
    }
  },
  "ORR_O02": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBRRQDRQ1RXOODSODT_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQ1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ODS"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ODT"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "group": "OBRRQDRQ1RXOODSODT_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "ORR_O02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "RGV_O15": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMPONENTS": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_DETAIL_SUPPLEMENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMPONENTS"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL_SUPPLEMENT"}
      ]
    },
    "TIMING_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ENCODING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "TIMING_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "TIMING_GIVE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "GIVE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXG"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "TIMING_GIVE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODING"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "GIVE"}
      ]
    },
    "RGV_O15": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "RAR_RAR": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ENCODING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODING"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXA"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXR"}
      ]
    },
    "DEFINITION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RAR_RAR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "DEFINITION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QVR_Q17": {
    "QBP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1"}
      ]
    },
    "QVR_Q17": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "QBP"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "RPR_I03": {
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "RPR_I03": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "RSP_K25": {
    "STAFF": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "STF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "PRA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ORG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AFF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "LAN"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "EDU"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CER"}
      ]
    },
    "RSP_K25": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "STAFF"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "NMQ_N01": {
    "QRY_WITH_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"}
      ]
    },
    "CLOCK_AND_STATISTICS": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NCK"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NST"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NSC"}
      ]
    },
    "NMQ_N01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "QRY_WITH_DETAIL"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "CLOCK_AND_STATISTICS"
        }
      ]
    }
  },
  "BAR_P01": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "VISIT": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB2"}
      ]
    },
    "BAR_P01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "VISIT"}
      ]
    }
  },
  "RPL_I02": {
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "RPL_I02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DSP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "MDM_T02": {
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMMON_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBXNTE_SUPPGRP": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "MDM_T02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMMON_ORDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TXA"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBXNTE_SUPPGRP"}
      ]
    }
  },
  "ESR_U02": {
    "ESR_U02": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "EQQ_Q04": {
    "EQQ_Q04": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQL"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ADT_A09": {
    "ADT_A09": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"}
      ]
    }
  },
  "DFT_P03": {
    "TIMING_QUANTITY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "COMMON_ORDER": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "TIMING_QUANTITY"
        },
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "FINANCIAL_PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "FINANCIAL_TIMING_QUANTITY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "FINANCIAL_ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "FINANCIAL_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "FINANCIAL_COMMON_ORDER": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "FINANCIAL_TIMING_QUANTITY"
        },
        {"minOccurs": "0", "maxOccurs": "1", "group": "FINANCIAL_ORDER"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "FINANCIAL_OBSERVATION"
        }
      ]
    },
    "FINANCIAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "NTE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "FINANCIAL_PROCEDURE"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "FINANCIAL_COMMON_ORDER"
        }
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "DFT_P03": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMMON_ORDER"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "FINANCIAL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"}
      ]
    }
  },
  "MFN_M11": {
    "MF_TEST_CALC_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM6"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM2"}
      ]
    },
    "MF_TEST_CALCULATED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "MF_TEST_CALC_DETAIL"}
      ]
    },
    "MFN_M11": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "MF_TEST_CALCULATED"
        }
      ]
    }
  },
  "RDE_O11": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMPONENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMPONENT"}
      ]
    },
    "TIMING_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "TIMING_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"}
      ]
    },
    "RDE_O11": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "ORU_R30": {
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "TIMING_QTY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORU_R30": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_QTY"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    }
  },
  "PMU_B03": {
    "PMU_B03": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "STF"}
      ]
    }
  },
  "OMS_O05": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RQD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"}
      ]
    },
    "OMS_O05": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "MFN_M07": {
    "MF_CLIN_STUDY_SCHED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CM0"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CM2"}
      ]
    },
    "MFN_M07": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "MF_CLIN_STUDY_SCHED"
        }
      ]
    }
  },
  "MFN_M06": {
    "MF_PHASE_SCHED_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CM1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CM2"}
      ]
    },
    "MF_CLIN_STUDY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "CM0"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "MF_PHASE_SCHED_DETAIL"
        }
      ]
    },
    "MFN_M06": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_CLIN_STUDY"}
      ]
    }
  },
  "ORL_O22": {
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SAC"}
      ]
    },
    "OBSERVATION_REQUEST": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SPECIMEN"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "OBSERVATION_REQUEST"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"}
      ]
    },
    "ORL_O22": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "ADR_A19": {
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "IN3"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ROL"}
      ]
    },
    "QUERY_RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_1"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "ROL",
          "jsonKey": "ROL_2"
        },
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "UB2"}
      ]
    },
    "ADR_A19": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "QUERY_RESPONSE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ORL_O34": {
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "SPMSAC_SUPPGRP2": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SAC"}
      ]
    },
    "OBSERVATION_REQUEST": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "SPMSAC_SUPPGRP2"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "OBSERVATION_REQUEST"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "SPECIMEN"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"}
      ]
    },
    "ORL_O34": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "ADT_A24": {
    "ADT_A24": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "segment": "PID",
          "jsonKey": "PID_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PD1",
          "jsonKey": "PD1_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PV1",
          "jsonKey": "PV1_1"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "DB1",
          "jsonKey": "DB1_1"
        },
        {
          "minOccurs": "1",
          "maxOccurs": "1",
          "segment": "PID",
          "jsonKey": "PID_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PD1",
          "jsonKey": "PD1_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "1",
          "segment": "PV1",
          "jsonKey": "PV1_2"
        },
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "segment": "DB1",
          "jsonKey": "DB1_2"
        }
      ]
    }
  },
  "BRP_O30": {
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BPO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "BPX"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"}
      ]
    },
    "BRP_O30": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "MFN_Znn": {
    "MF_SITE_DEFINED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1"}
      ]
    },
    "MFN_Znn": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MF_SITE_DEFINED"}
      ]
    }
  },
  "MFN_M10": {
    "MF_TEST_BATT_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM5"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OM4"}
      ]
    },
    "MF_TEST_BATTERIES": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFE"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OM1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "MF_TEST_BATT_DETAIL"}
      ]
    },
    "MFN_M10": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MFI"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "MF_TEST_BATTERIES"
        }
      ]
    }
  },
  "EAC_U07": {
    "SPECIMEN_CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SPM"}
      ]
    },
    "COMMAND": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ECD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "SPECIMEN_CONTAINER"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CNS"}
      ]
    },
    "EAC_U07": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "COMMAND"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "DSR_Q01": {
    "DSR_Q01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "DSP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QSB_Q16": {
    "QSB_Q16": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QCN_J01": {
    "QCN_J01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QID"}
      ]
    }
  },
  "RPI_I01": {
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "GUARANTOR_INSURANCE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "INSURANCE"}
      ]
    },
    "RPI_I01": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "GUARANTOR_INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "ORP_O10": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMPONENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMPONENT"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "ORP_O10": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "RRE_O12": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "TIMING_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ENCODING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "TIMING_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODING"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "RRE_O12": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "RAS_O17": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "COMPONENTS": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_DETAIL_SUPPLEMENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "COMPONENTS"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL_SUPPLEMENT"}
      ]
    },
    "TIMING_ENCODED": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ENCODING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXE"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "TIMING_ENCODED"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ADMINISTRATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXA"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ENCODING"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ADMINISTRATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"}
      ]
    },
    "RAS_O17": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "OMB_O27": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "BPO"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"}
      ]
    },
    "OMB_O27": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    }
  },
  "ROR_ROR": {
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RXO"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "segment": "RXR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RXC"}
      ]
    },
    "DEFINITION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "ROR_ROR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "DEFINITION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "PGL_PC6": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "GOAL_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PATHWAY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PTH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PROBLEM_ROLE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ROL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "PROBLEM_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PROBLEM": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRB"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM_ROLE"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "PROBLEM_OBSERVATION"
        }
      ]
    },
    "OBR_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "OBR"}
      ]
    },
    "ORDER_OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"}
      ]
    },
    "ORDER_DETAIL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "group": "OBR_SUPPGRP"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {
          "minOccurs": "0",
          "maxOccurs": "unbounded",
          "group": "ORDER_OBSERVATION"
        }
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ORDER_DETAIL"}
      ]
    },
    "GOAL": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "GOL"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "VAR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "GOAL_ROLE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PATHWAY"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PROBLEM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "PGL_PC6": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "GOAL"}
      ]
    }
  },
  "RTB_K13": {
    "ROW_DEFINITION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RDF"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "RDT"}
      ]
    },
    "RTB_K13": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "ROW_DEFINITION"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "EAR_U08": {
    "SPECIMEN_CONTAINER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SAC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SPM"}
      ]
    },
    "COMMAND_RESPONSE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ECD"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "SPECIMEN_CONTAINER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ECR"}
      ]
    },
    "EAR_U08": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EQU"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "COMMAND_RESPONSE"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ROL"}
      ]
    }
  },
  "QBP_Q15": {
    "QBP_Q15": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "BRT_O32": {
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BPO"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "BTX"}
      ]
    },
    "RESPONSE": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "BRT_O32": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "RESPONSE"}
      ]
    }
  },
  "RPA_I08": {
    "AUTHORIZATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AUT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"}
      ]
    },
    "PROVIDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PRD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTD"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "AUTCTD_SUPPGRP2": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "AUT"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "CTD"}
      ]
    },
    "PROCEDURE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PR1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "AUTCTD_SUPPGRP2"}
      ]
    },
    "RESULTS": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "RESULTS"}
      ]
    },
    "VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "RPA_I08": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RF1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "AUTHORIZATION"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROVIDER"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ACC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DRG"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "PROCEDURE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    }
  },
  "OSQ_Q06": {
    "OSQ_Q06": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ADT_A45": {
    "MERGE_INFO": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MRG"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"}
      ]
    },
    "ADT_A45": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "MERGE_INFO"}
      ]
    }
  },
  "QRY": {
    "QRY": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QRF"}
      ]
    }
  },
  "OML_O33": {
    "PATIENT_VISIT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "INSURANCE": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "IN1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN2"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "IN3"}
      ]
    },
    "PATIENT": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NK1"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "INSURANCE"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "GT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"}
      ]
    },
    "TIMING": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "PATIENT_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"}
      ]
    },
    "PATIENT_VISIT_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"}
      ]
    },
    "TIMING_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TQ1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "TQ2"}
      ]
    },
    "OBSERVATION_PRIOR": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"}
      ]
    },
    "ORDER_PRIOR": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING_PRIOR"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "OBSERVATION_PRIOR"
        }
      ]
    },
    "PRIOR_RESULT": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_PRIOR"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT_VISIT_PRIOR"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "AL1"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER_PRIOR"}
      ]
    },
    "OBSERVATION_REQUEST": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "OBR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "TCD"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DG1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "OBSERVATION"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "PRIOR_RESULT"}
      ]
    },
    "ORDER": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "ORC"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "group": "TIMING"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "OBSERVATION_REQUEST"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "FT1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "CTI"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "BLG"}
      ]
    },
    "SPECIMEN": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "SPM"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SAC"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "ORDER"}
      ]
    },
    "OML_O33": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "NTE"},
        {"minOccurs": "0", "maxOccurs": "1", "group": "PATIENT"},
        {"minOccurs": "1", "maxOccurs": "unbounded", "group": "SPECIMEN"}
      ]
    }
  },
  "DOC_T12": {
    "EVNPIDPV1TXAOBX_SUPPGRP": {
      "elements": [
        {"minOccurs": "0", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "TXA"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"}
      ]
    },
    "DOC_T12": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSA"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "ERR"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "QAK"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QRD"},
        {
          "minOccurs": "1",
          "maxOccurs": "unbounded",
          "group": "EVNPIDPV1TXAOBX_SUPPGRP"
        },
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "QBP_Qnn": {
    "QBP_Qnn": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "QPD"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "RDF"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "RCP"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DSC"}
      ]
    }
  },
  "ADT_A12": {
    "ADT_A12": {
      "elements": [
        {"minOccurs": "1", "maxOccurs": "1", "segment": "MSH"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "SFT"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "EVN"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PID"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PD1"},
        {"minOccurs": "1", "maxOccurs": "1", "segment": "PV1"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "PV2"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "DB1"},
        {"minOccurs": "0", "maxOccurs": "unbounded", "segment": "OBX"},
        {"minOccurs": "0", "maxOccurs": "1", "segment": "DG1"}
      ]
    }
  }
};
