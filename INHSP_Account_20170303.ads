!FILE_FORMAT=ADS
!VERSION=1.0

!Section=Dimensions
'Name|DimensionClass|DimensionAlias|DimDataStorage|DimTwoPassCalc|Plan1Density|Plan2Density|Plan3Density|WorkforceDensity|CapexDensity|ProjectDensity|AttributeDataType|EnumOrder1|EnumOrder2|EnumOrder3|EnumOrderWF|EnumOrderCapex|EnumOrderProject|DimValidForPlan1|DimValidForPlan2|DimValidForPlan3|DimValidForWorkforce|DimValidForCapex|DimValidForProject|Plan1PerfOrder|Plan2PerfOrder|Plan3PerfOrder|WorkforcePerfOrder|CapexPerfOrder|ProjectPerfOrder|MissingLabel|DisplayOrder|GridMissingLabelType|AutoGenId|SmartListLabel|StartValue|Increment
Account|Account|Account|LabelOnly||Dense|Dense|Dense|Dense|Dense|Dense||2|2|2|0|0|0|Y|N|N|N|N|N|0|0|0|0|0|0|||||||
Alias|Alias|Alias||||||||||||||||||||||||||||||||||

!Section=DimensionAssociations
'BaseDimension|Property|TargetDimension
Account|Alias|Alias
Account|UDA|UDA

!Hierarchies=Account
'Parent|Child|IsPrimary|DataStorage|MemberValidForPlan1|MemberValidForPlan2|MemberValidForPlan3|MemberValidForWorkforce|MemberValidForCapex|MemberValidForProject|Plan1Aggregation|Plan2Aggregation|Plan3Aggregation|WorkforceAggregation|CapexAggregation|ProjectAggregation|DataType|SourcePlanType|AccountType|ExchangeRateType|VarianceReporting|TimeBalance|SmartList|TwoPassCalc|SkipValue|Description|WeeksDistributionMember|UDA|Alias=Default|BSOMemberFormula
#root|Working Accounts|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Working Accounts|Working Accounts (Miscellaneous)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Working Accounts (Miscellaneous)|HQty|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Quantity (cl).|
Working Accounts (Miscellaneous)|HQtyBII|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Quantity (ml)|
Working Accounts (Miscellaneous)|HQtyBIO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Quantity (cl)|
Working Accounts (Miscellaneous)|HBtlpCs|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Number of Bottle(s) per Actual Case|
Working Accounts (Miscellaneous)|HST|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|SmartList|Plan1|SavedAssumption|None|NonExpense|Flow|STList|N|None||false||See-Through List|
Working Accounts (Miscellaneous)|HMonth|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false|||
Working Accounts|Volume Analysis (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Volume Analysis (Label)|HV9L|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (9L Case)|
Volume Analysis (Label)|HVL|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (Liters)|
Volume Analysis (Label)|HVAC_Total|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (Actual Case)|
HVAC_Total|HVAC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (Actual Case).|
HVAC_Total|HVAC_BONDALO|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (Actual Case)'|
HVAC_Total|HVAC_LE_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (Actual Case) for LE|
HVAC_Total|HVAC_LE|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (Actual Case) for LE.|
Volume Analysis (Label)|HVAC_K|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false|||"HVAC_Total" / 1000;
Volume Analysis (Label)|HV9L_A|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (9L Case).|
Volume Analysis (Label)|HV9L_A_DUMMY|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (9L Case). - Dummy|
Volume Analysis (Label)|HV9L_LE_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (9L Case) for LE|
Volume Analysis (Label)|HV9L_LE|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (9L Case) for LE.|
Working Accounts|Realisation Rate (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Realisation Rate (Label)|HPCurr|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|SmartList|Plan1|SavedAssumption|None|NonExpense|Balance|PCurrList|N|None||false|||
Realisation Rate (Label)|HP|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||Price per Actual Case|
Realisation Rate (Label)|HP9L|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||Price per 9L Case|
Realisation Rate (Label)|HNS|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||Local Currency Price per Case|
Working Accounts|Transfer Price (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Transfer Price (Label)|HTPCurr|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|SmartList|Plan1|SavedAssumption|None|NonExpense|Balance|TPCurrList|N|None||false||FOB Price Input Currency|
Transfer Price (Label)|HTPRAC|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||Transfer Price - Region Input (Local Currency per Actual Case)|
Transfer Price (Label)|HTPR9L|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||Transfer Price - Region  (Local Currency per 9L Case)|
Transfer Price (Label)|HTPR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||Transfer Price to Regions  (Local Currency per 9L Case)|
Transfer Price (Label)|HTPFOBPIAC|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||FOB Price - Imports (BO Currency per Actual Case)|
Transfer Price (Label)|HTPFOBPI9L|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||FOB Price - Imports (BO Currency per 9L Case)|
Transfer Price (Label)|HTPFOBPI|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||FOB Price - Imports (Local Currency per 9L Case)|
Transfer Price (Label)|HTPFOBPIL|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||FOB Price - Imports (BO Currency per Liter)|
Transfer Price (Label)|HTPFOBPI_Dummy|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false|||
Working Accounts|Allowance and Discount (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Allowance and Discount (Label)|Total Allowance and Discount.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Allowance and Discount (Local Currency per Actual Case)|
Total Allowance and Discount.|HADPSK|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Primary Schemes - Kind (Local Currency per Actual Case)|
Total Allowance and Discount.|HADPSC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Primary Schemes - Cash (Local Currency per Actual Case)|
Total Allowance and Discount.|HADSSC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Secondary Schemes - Cash (Local Currency per Actual Case)|
Total Allowance and Discount.|HADTBATB|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Turnover Bonus - ATB (Local Currency per Actual Case)|
Total Allowance and Discount.|HADSSO|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Secondary Schemes - Octroi (Local Currency per Actual Case)|
Total Allowance and Discount.|HADTBQTB|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Turnover Bonus - QTB (Local Currency per Actual Case)|
Total Allowance and Discount.|HADS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||A&D - Custom Duty (Local Currency per Actual Case)|
Allowance and Discount (Label)|Total Allowance and Discount|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Allowance and Discount (Local Currency per 9L Case)|
Total Allowance and Discount|HADPSK.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Primary Schemes - Kind (Local Currency per 9L Case)|
Total Allowance and Discount|HADPSC.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Primary Schemes - Cash (Local Currency per 9L Case)|
Total Allowance and Discount|HADSSC.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Secondary Schemes - Cash (Local Currency per 9L Case)|
Total Allowance and Discount|HADTBATB.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Turnover Bonus - ATB (Local Currency per 9L Case)|
Total Allowance and Discount|HADSSO.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Secondary Schemes - Octroi (Local Currency per 9L Case)|
Total Allowance and Discount|HADTBQTB.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Turnover Bonus - QTB (Local Currency per 9L Case)|
Total Allowance and Discount|HADS.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||A&D - Custom Duty (Local Currency per 9L Case)|
Working Accounts|Payroll (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Payroll (Label)|HHCT|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false||Headcount - Total|
HHCT|HHCE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false||Headcount - Executives|
HHCT|HHCW|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false||Headcount - Workers|
Payroll (Label)|Total Payroll Cost|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Total Payroll Cost|Basic Manpower Cost|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Basic Manpower Cost|HBMCBS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Basic Salary|
Basic Manpower Cost|HBMCHE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Housing Entitlement|
Basic Manpower Cost|HBMCSA|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Special Allowance|
Basic Manpower Cost|HBMCOSA|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Special Allowance|
Basic Manpower Cost|HBMCCA|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Conveyance Allowance|
Basic Manpower Cost|HBMCIA|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Insurance Allowance|
Basic Manpower Cost|HBMCMCP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Market Correction/Promotion|
Basic Manpower Cost|HBMCPF|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||PF - Employers Contribution|
Basic Manpower Cost|HBMCSC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Superannuation Contribution|
Total Payroll Cost|Reimbursement Adhoc Payment|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Reimbursement/Adhoc Payment|
Reimbursement Adhoc Payment|HRAPDW|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Drivers' Wages|
Reimbursement Adhoc Payment|HRAPMR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Medical Reimbursement|
Reimbursement Adhoc Payment|HRAPCR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Conveyance Reimbursement|
Reimbursement Adhoc Payment|HRAPS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Stipends|
Reimbursement Adhoc Payment|HRAPNP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Notice Pay|
Total Payroll Cost|Reterial Benefit|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Reterial Benefit|HRBG|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Gratuity|
Reterial Benefit|HRBLE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Leave Encashment|
Total Payroll Cost|Incentives|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Incentives|HIVP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Variable Pay|
Incentives|HIRS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Retention Scheme|
Incentives|HILTIP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||LTIP|
Working Accounts|Production Costs (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Production Costs (Label)|HPCDO.|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Average||N|None||false||Production Costs - Direct Overheads Input (Local Currency per Actual Case)|
Production Costs (Label)|HPCDO|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Costs - Direct Overheads (Local Currency per 9L Case)|
Production Costs (Label)|HPCIO|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Costs - Indirect Overheads Allocated Result|
HPCIO|HPCIO_O|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HPCIO|HPCIO_CORP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Production Costs (Label)|HPCDP|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Depreciation - Allocated Result|
HPCDP|HPCDP_O|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HPCDP|HPCDP_CORP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Working Accounts|Handling Costs (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Handling Costs (Label)|Handling Costs - T&D (Variable)|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Handling Costs - T&D (Variable)|HHCTDFOBPC|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||FOB Price Imports (Local Currency per 9L Case)|
Handling Costs - T&D (Variable)|HHCTDF|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs T&D (Local Currency per Actual Case)|
Handling Costs - T&D (Variable)|HHCTDF.|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs T&D (Local Currency per 9L Case)|
Handling Costs - T&D (Variable)|HHCTDIR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Insurance Rate (% Input)|
Handling Costs - T&D (Variable)|HHCTDCDR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Custom Duty Rate (% Input)|
Handling Costs - T&D (Variable)|HHCEDD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs T&D EDD (Local Currency per Actual Case)|
Handling Costs - T&D (Variable)|HHCEDD.|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs T&D EDD (Local Currency per 9L Case)|
Handling Costs - T&D (Variable)|HHCICD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs T&D - (Int. on CD) (Local Currency per Actual Case)|
Handling Costs - T&D (Variable)|HHCICD.|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs T&D - (Int. on CD)(Local Currency per 9L Case)|
Handling Costs - T&D (Variable)|HHCTDINPUT|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||T&D Input (Local Currency per Actual Case)|
Handling Costs (Label)|Total Handling Costs - T&D.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Handling Costs - T&D (Local Currency per Actual Case)|
Total Handling Costs - T&D.|HHCTDIFG.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Import Duties - Imported FG (Local Currency per Actual Case)|
Total Handling Costs - T&D.|HHCTDCAB.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Import Duties - CAB (Local Currency per Actual Case)|
Handling Costs (Label)|Total Handling Costs - T&D|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Handling Costs - T&D (Local Currency per 9L Case)|
Total Handling Costs - T&D|HHCTDIFG|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Import Duties - Imported FG (Local Currency per 9L Case)|
Total Handling Costs - T&D|HHCTDCAB|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Import Duties - CAB (Local Currency per 9L Case)|
Handling Costs (Label)|Total Handling Costs - Others.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Handling Costs - Others (Local Currency per Actual Case)|
Total Handling Costs - Others.|HHCOIF.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Import Freight (Local Currency per Actual Case)|
Total Handling Costs - Others.|HHCOII.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Import Insurance (Local Currency per Actual Case)|
Handling Costs (Label)|Total Handling Costs - Others|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Handling Costs - Others (Local Currency per 9L Case)|
Total Handling Costs - Others|HHCOIF|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Import Freight (Local Currency per 9L Case)|
Total Handling Costs - Others|HHCOII|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Import Insurance (Local Currency per 9L Case)|


Working Accounts|Distribution Costs (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Distribution Costs (Label)|Total Distribution Costs - Region.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Distribution Costs - Region (Local Currency per Actual Case)|
Distribution Costs (Label)|Total Distribution Costs - SCN.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Distribution Costs - SCN (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCBE.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Fixed (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCBEV.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Variable (Local Currency per Actual Case)|
Total Distribution Costs - Region.|HDCBR.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Brand Registration (Local Currency per Actual Case)|
Total Distribution Costs - Region.|HDCTD.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Taxes & Duties (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCF.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Primary (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCS.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Secondary (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCTSP.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Primary (Local Currency per Actual Cases)|
Total Distribution Costs - SCN.|HDCTS.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Secondary (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCTSS.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages at Bond (Local Currency per Actual Case)|
Total Distribution Costs - Region.|HDCO.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Manpower (Local Currency per Actual Case)|
Total Distribution Costs - Region.|HDCPC.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Promoters Commission (Local Currency per Actual Case)|
Total Distribution Costs - Region.|HDCV.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Veritas / Other Handling (Local Currency per Actual Case)|
Total Distribution Costs - Region.|HDCDM.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Demurrage (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCDTN.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Detention (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCIPM.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Insurance Premium - Marine (FG) (Local Currency per Actual Case)|

Total Distribution Costs - Region.|HDCRTS.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Secondary RGN (Local Currency per Actual Case)|
Total Distribution Costs - Region.|HDCTDC.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Taxes on Distribution Cost (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCPF.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Permits Fees (Local Currency per Actual Case)|
Total Distribution Costs - Region.|HDCODC.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overdue EVC Customer / 'C' forms (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCODB.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overdue EVC Bond / 'F' forms (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCBS.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||EVC Breakages / Shoratges (Local Currency per Actual Case)|
Total Distribution Costs - SCN.|HDCVBE.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond VBE / Duty - Others (Local Currency per Actual Case)|

Distribution Costs (Label)|Total Distribution Costs - Region|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Distribution Costs - Region (Local Currency per 9L Case)|
Distribution Costs (Label)|Total Distribution Costs - SCN|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total Distribution Costs - SCN (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCBE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Fixed (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCBEV|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Variable (Local Currency per 9L Case)|
Total Distribution Costs - Region|HDCBR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Brand Registration (Local Currency per 9L Case)|
Total Distribution Costs - Region|HDCTD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Taxes & Duties (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCF|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Primary (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Secondary (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCTSP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Primary (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCTS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Secondary (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCTSS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages at Bond (Local Currency per 9L Case)|
Total Distribution Costs - Region|HDCO|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Manpower (Local Currency per 9L Case)|
Total Distribution Costs - Region|HDCPC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Promoters Commission (Local Currency per 9L Case)|
Total Distribution Costs - Region|HDCDM|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Demurrage (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCDTN|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Detention (Local Currency per 9L Case)|
Total Distribution Costs - Region|HDCV|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Veritas / Others Handling (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCIPM|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Insurance Premium - Marine (FG) (Local Currency per 9L Case)|

Total Distribution Costs - Region|HDCRTS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Secondary RGN (Local Currency per 9L Case)|
Total Distribution Costs - Region|HDCTDC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Taxes on Distribution Cost (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCPF|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Permits Fees (Local Currency per 9L Case)|
Total Distribution Costs - Region|HDCODC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overdue EVC Customer / 'C' forms (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCODB|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overdue EVC Bond / 'F' forms (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCBS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||EVC Breakages / Shortages (Local Currency per 9L Case)|
Total Distribution Costs - SCN|HDCVBE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond VBE / Duty - Others (Local Currency per 9L Case)|

Distribution Costs (Label)|HDCTPAC|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||Distribution Costs - Region TP Input (Local Currency per Actual Case)|
Distribution Costs (Label)|HDCTP9L|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||Distribution Costs - Region TP (Local Currency per 9L Case)|
Distribution Costs (Label)|HDCTP|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|SavedAssumption|Average|NonExpense|Balance||N|None||false||Distribution Costs TP to Regions  (Local Currency per 9L Case)|


Working Accounts|Cost of Goods Sold (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Cost of Goods Sold (Label)|HCOGSNONST|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||COG Non-ST Input (Local Currency per Actual Case)|
Cost of Goods Sold (Label)|HCOGSST|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||COG ST Input (Local Currency per Actual Case)|
Cost of Goods Sold (Label)|HSTI_SC|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||ST Brand Indicator (Standard Cost)|
Working Accounts|Standard Cost (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Standard Cost (Label)|HSC.|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Standard Cost at BO Currency (per Liter)|
Standard Cost (Label)|HSC|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Standard Cost at Local Currency (per Liter)|
Standard Cost (Label)|HSC_Dummy|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Standard Cost (Label)|HSCCurr|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|SmartList|Plan1|SavedAssumption|None|NonExpense|Balance|SCCurrList|N|None||false||BO Currency|
Standard Cost (Label)|HSC_B|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Historical|Expense|Flow||N|None||false||Standard Cost at Local Currency (per Liter) - Budget Rate|
Standard Cost (Label)|HSC_Dummy_B|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Standard Cost (Label)|HSC_A|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Standard Cost at Local Currency (per Liter) - Actual Rate|
Standard Cost (Label)|HSC_Dummy_A|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Working Accounts|Total A&P (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Total A&P (Label)|HTAP|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Trade A&P.|
HTAP|HTAP_TE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||CUSTOMER & TRADE EVENTS EXP.|
HTAP|HTAP_CTSE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||CUSTOMER & TRADE-SUPPORT EXP.|
HTAP|HTAP_TP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||CUSTOMER & TRADE PROM-EXP.|
HTAP|HTAP_DCPP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Display - Tieup On-Trad.|
HTAP|HTAP_DCSOP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-DISPLAY-TIEUP.|
HTAP|HTAP_DCSS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Display - Shop Front Rent.|
Total A&P (Label)|HCAPM|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Media.|
HCAPM|HCAPM_C|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Cinema.|
HCAPM|HCAPM_O|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD OOH/OUTDOOR.|
HCAPM|HCAPM_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Ad Internet/Digital.|
HCAPM|HCAPM_P|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Press.|
HCAPM|HCAPM_R|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Radio.|
HCAPM|HCAPM_TV|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD TV.|
HCAPM|HCAPM_OC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Outdoor Cricket.|
HCAPM|HCAPM_MATU|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Ad Line Extension .|
HCAPM|HCAPM_DCO|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD DTH/CABLE .|
HCAPM|HCAPM_AC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||MEDIA AGENCY COST.|
Total A&P (Label)|HCAPOAP|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other A&P.|
HCAPOAP|HCAPOAP_DME|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AMBASSADOR PROGRAM.|
HCAPOAP|HCAPOAP_PARF|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Pr Agency Retainership Fee.|
HCAPOAP|HCAPOAP_OPE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OTHER PR AGENCY EXPENSES.|
HCAPOAP|HCAPOAP_CE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Consumer Events.|
HCAPOAP|HCAPOAP_CPE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-CONSUMER_PROM.|
HCAPOAP|HCAPOAP_DB|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE -SIGNAGE FABRICATION .|
HCAPOAP|HCAPOAP_ODM|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-OTHER DISPLAY EXP.|
HCAPOAP|HCAPOAP_PPM|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-PAPER POS MATERIAL.|
HCAPOAP|HCAPOAP_ADOP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD_PROD DIGITAL/ONLINE.|
HCAPOAP|HCAPOAP_PVGE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||PACKAGING/VAP/GWP_EXP.|
HCAPOAP|HCAPOAP_OSF|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-SIGNAGE FABRICATION.|
HCAPOAP|HCAPOAP_OODE|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-OTHER_DISPLAY EXP.|
HCAPOAP|HCAPOAP_OPPM|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-PAPER POS MATERIAL.|
HCAPOAP|HCAPOAP_ECRM|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||E-CONSUMER RELATION_MGT.|
HCAPOAP|HCAPOAP_OCP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-CONSUMER PROMOTION.|
HCAPOAP|HCAPOAP_MI|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Merchandising Manpower .|
HCAPOAP|HCAPOAP_TS|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Tasting And Sampling.|
HCAPOAP|HCAPOAP_MR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Market Research.|
HCAPOAP|HCAPOAP_PD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Packaging & Development.|
HCAPOAP|HCAPOAP_ADPTV|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Ad Prod. TV/Press/Radio .|
HCAPOAP|HCAPOAP_ADPO|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Production Others.|
HCAPOAP|HCAPOAP_BC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bar Collaterals.|
HCAPOAP|HCAPOAP_CET|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Celebrity Endorsement .|
HCAPOAP|HCAPOAP_EP|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Event Production .|
HCAPOAP|HCAPOAP_EC|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Event Celebrity .|
HCAPOAP|HCAPOAP_GR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Godown Rent .|
Working Accounts|Structure Cost (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Structure Cost (Label)|Structure Cost - Grand Total|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Structure Cost - Grand Total|Total Operating Expenses|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Total Operating Expenses|Building Occupancy Costs Total|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Building Occupancy Costs Total|6211|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Rent - Office|
Building Occupancy Costs Total|6212|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Godown Rent|
Building Occupancy Costs Total|6214|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Flat- Rent & Other Exps|
Building Occupancy Costs Total|6231|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Security Charges|
Building Occupancy Costs Total|6232|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Electricity & Water Charges|
Building Occupancy Costs Total|6251|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Admn.Maintenance & Repairs|
Total Operating Expenses|Communication Total|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Communication Total|6311|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Telephone & Fax Expenses|
Communication Total|6312|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Cellphone & Pager Expenses|
Communication Total|6314|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Postage & Courier Exps.|
Total Operating Expenses|Employee Related Total|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Employee Related Total|6152|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Staff Transfer|
Employee Related Total|6154|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Training Exp.|
Employee Related Total|6162|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Recruitment Expenses|
Employee Related Total|6163|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Car Maintainence|
Total Operating Expenses|Audit Fee & Other Exps.|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp||
Audit Fee & Other Exps.|6514|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Licence & Fees|
Audit Fee & Other Exps.|6401|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Audit Fee & Other Exps|
Audit Fee & Other Exps.|6402|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Internal Audit Expense|
Audit Fee & Other Exps.|6421|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Legal Charges|
Audit Fee & Other Exps.|6442|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Professional Fees|
Audit Fee & Other Exps.|6443|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Prof. Fees - Outsourced Work|
Audit Fee & Other Exps.|6444|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Prof. Fees - Outsourced Staffing|
Total Operating Expenses|Meetings & Staff Welfare Total|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Meetings & Staff Welfare Total|6192|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Staff Welfare/Canteen Exps.|
Meetings & Staff Welfare Total|6194|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Meetings & Seminar Exps.|
Total Operating Expenses|MIS & IT Total|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp||
MIS & IT Total|6331|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Computer Maint & Consumables|
MIS & IT Total|6332|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Software & Licences|
MIS & IT Total|6333|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Data Communication Expenses|
Total Operating Expenses|Misc. Total|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Misc. Total|6381|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Insurance Premium|
Misc. Total|6503|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Printing & Stationery|
Misc. Total|6504|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Books & Periodicals|
Misc. Total|6513|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bank Charges|
Misc. Total|6515|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Membership & Subscription|
Misc. Total|6516|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Misc.Godown Rentals & Exps|
Misc. Total|6518|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Gifts & Presentation|
Misc. Total|6521|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Lab Expenses|
Misc. Total|6522|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||One rupee fund|
Misc. Total|6523|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Wealth Tax|
Misc. Total|6524|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Miscellaneous exp.|
Total Operating Expenses|Travel Total|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp||
Travel Total|6171|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Travelling Exps.- Domestic|
Travel Total|6173|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Travelling Exps.- Foreign|
Travel Total|6182|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Conveyance/Car Hire expenses|
Structure Cost - Grand Total|3536|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||PR-Gulf Recovery|
Structure Cost - Grand Total|3537|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Prv. Yr. Reversals / Adj|
Structure Cost - Grand Total|3538|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Corporate Social Responsibility.|
Structure Cost - Grand Total|6110|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Payroll|
Structure Cost - Grand Total|Depreciation Total|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Depreciation Total|9212_Dummy|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|SavedAssumption|Average|Expense|Balance||N|None||false|||
Depreciation Total|9212|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Depreciation|
Structure Cost (Label)|Structure Cost - Grand Total W/O Payroll|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Structure Cost (Label)|Indirect Overheads Total W/O Payroll|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Structure Cost (Label)|Indirect Overheads Total W/ Payroll|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Structure Cost (Label)|Indirect Overheads Grand Total|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
#root|P&L|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
P&L|3010.K9L|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (K 9L)|
3010.K9L|3010.K9L_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false|||
3010.K9L|3010.K9L_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false|||
P&L|3010.KL|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false||Volume (K Liters.)|
3010.KL|3010.KL_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false|||
3010.KL|3010.KL_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false|||
P&L|3010.L_Dummy|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Flow||N|None||false|||
P&L|Business Profit ST|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Business Profit ST|CAAP ST|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
CAAP ST|Cont. Margin ST|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Gross Margin After Logistic Costs ST|
Cont. Margin ST|Gross Margin ST|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Gross Margin ST|Net Sales Excl. T&D|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|PRI_Rev||
Net Sales Excl. T&D|3010.GS|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|PRI_Rev|Gross Sales Excl. T&D|
3010.GS|3010.GS_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3010.GS_BONDALO|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Gross Sales Excl. T&D.|
3010.GS|3010.GS_BONDALO_ALO|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Gross Sales Excl. T&D-|
3010.GS|3010.GS_CAL_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3010.GS_CAL_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3010.GS_CAL_EUR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3010.GS_CAL_GBP|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3010.GS_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Gross Sales Excl. T&D '|
3010.GS|3010.GS_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3010.GS_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3010.GS_ACT_EUR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3010.GS_ACT_GBP|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3030.GS_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
3010.GS|3030.GS_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Net Sales Excl. T&D|5210|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Allowances & Discounts|
5210|5210_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Allowance & Discounts '|
5210|5210_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5210|5203.KIND|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Primary Schemes Kind|
5203.KIND|5203.KIND_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5203.KIND|5203.KIND_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5203.KIND|5203.KIND_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Primary Schemes Kind.|
5210|5203.PRIMARY|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Primary Schemes Cash|
5203.PRIMARY|5203.PRIMARY_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5203.PRIMARY|5203.PRIMARY_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5203.PRIMARY|5203.PRIMARY_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Primary Schemes Cash.|
5210|5203.SECOND|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Secondary Schemes Cash|
5203.SECOND|5203.SECOND_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5203.SECOND|5203.SECOND_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5203.SECOND|5203.SECOND_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Secondary Schemes Cash.|
5210|5204.ATB|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Turnover Bonus - ATB|
5204.ATB|5204.ATB_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5204.ATB|5204.ATB_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5204.ATB|5204.ATB_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Turnover Bonus - ATB.|
5210|5204.OCTROI|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Secondary Schemes - Octroi|
5204.OCTROI|5204.OCTROI_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5204.OCTROI|5204.OCTROI_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5204.OCTROI|5204.OCTROI_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Secondary Schemes - Octroi.|
5210|5204.QTB|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Turnover Bonus - QTB|
5204.QTB|5204.QTB_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5204.QTB|5204.QTB_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5204.QTB|5204.QTB_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Turnover Bonus - QTB.|
5210|5204.SONARY|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||A&D - Custom Duty|
5204.SONARY|5204.SONARY_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5204.SONARY|5204.SONARY_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5204.SONARY|5204.SONARY_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||A&D - Custom Duty.|
5210|5270|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Early Payment Discount|
5270|5270_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5270|5270_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5270|5270_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Early Payment Discount.|
Net Sales Excl. T&D|5275|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Service Paid to Distributor|
5275|5275_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5275|5275_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Gross Margin ST|4010.ST|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Transfer Price - Imports|
4010.ST|4010.ST_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transfer Price - Imports '|
4010.ST|4010.ST_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Gross Margin ST|HSTDC|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Standard Costs @ Current Year Budget Rate|
HSTDC|HSTDC_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HSTDC|HSTDC_CAL_YTD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HSTDC|HSTDC_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Standard Costs @ Current Year Budget Rate '|
HSTDC|HSTDC_ACT_ORG|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HSTDC|HSTDC_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HSTDC|HSTDC_ACT_GBP|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HSTDC|HSTDC_ACT_AUD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HSTDC|HSTDC_ACT_SEK|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HSTDC|HSTDC_ACT_NZD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HSTDC|HSTDC_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
HSTDC|HSTDC_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Standard Costs @ Current Year Budget Rate.|
Gross Margin ST|HFXSTDC|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||FX on Standard Costs|
HFXSTDC|HFXSTDC_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||FX on Standard Costs '|
HFXSTDC|HFXSTDC_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||FX on Standard Costs.|
HFXSTDC|HFXSTDC_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
HFXSTDC|HFXSTDC_CAL_YTD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Gross Margin ST|4010.NST|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|COG Non-ST|
4010.NST|4010.NST_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||COGS Non - ST '|
4010.NST|4010.NST_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Gross Margin ST|4010.STR|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transfer Price - Regions|
4010.STR|4010.STR_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4010.STR|4010.STR_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Gross Margin ST|4011.DUT|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Handling Costs - (T&D)|
4011.DUT|4011.DUT_IFG|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (T&D Import FG)|
4011.DUT_IFG|4011.DUT_IFG_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4011.DUT|4011.DUT_CAB|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (T&D CAB)|
4011.DUT_CAB|4011.DUT_CAB_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4011.DUT|4011.DUT_HCEDD|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Cost-(EDD)|
4011.DUT_HCEDD|4011.DUT_HCEDD_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4011.DUT|4011.DUT_HCICD|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Cost-(Int. on CD)|
4011.DUT_HCICD|4011.DUT_HCICD_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4011.DUT|4011.DUT_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4011.DUT|4011.DUT_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (T&D) '|
4011.DUT|4011.DUT_HCEDD_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (T&D) HCEDD '|
4011.DUT|4011.DUT_HCICD_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (T&D) HCICD '|
4011.DUT|4011.DUT_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (T&D).|
Gross Margin ST|4011.HAN|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Handling Costs - (Others)|
4011.HAN|4011.HAN_IF|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (Others Import Freight)|
4011.HAN_IF|4011.HAN_IF_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4011.HAN|4011.HAN_II|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (Others Import Insurance)|
4011.HAN_II|4011.HAN_II_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4011.HAN|4011.HAN_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4011.HAN|4011.HAN_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (Others) '|
4011.HAN|4011.HAN_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs - (Others).|
Gross Margin ST|6000|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Production Costs|
6000|9212.DP|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Depreciation|
9212.DP|9212.DP_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
9212.DP|9212.DP_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Depreciation '|
6000|6000.PCIO|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Costs (Indirect Overheads)|
6000.PCIO|6000.PCIO_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
6000.PCIO|6000.PCIO_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Costs (Indirect Overheads) '|
6000|4010.PCDO|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Costs (Direct Overheads)|
4010.PCDO|4010.PCDO_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
4010.PCDO|4010.PCDO_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Costs (Direct Overheads) '|
Gross Margin ST|Brand Owner Margin|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Brand Owner Margin|4010.ST|N|ShareData|Y|N|N|N|N|N|-|-|-|-|-|-|Currency|||||||N|None||false|PRI_Exp||
Brand Owner Margin|HSTDC|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|||
Cont. Margin ST|Total COGS After Logistic Costs - ST|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Total COGS After Logistic Costs - ST|HSTDC|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|||
Total COGS After Logistic Costs - ST|HFXSTDC|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|||
Total COGS After Logistic Costs - ST|4010.NST|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Total COGS After Logistic Costs - ST|6000|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Total COGS After Logistic Costs - ST|4011.HAN|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Total COGS After Logistic Costs - ST|4011.DUT|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Cont. Margin ST|5301|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Distribution Costs|

5301|Distribution Cost - Region|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301|Distribution Cost - SCN|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Distribution Cost - Region|5301_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Distribution Costs '|
Distribution Cost - Region|5301_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Distribution Costs.|
Distribution Cost - Region|5301_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Distribution Cost - Region|5301.BR|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Brand Registration|
5301.BR|5301.BR_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BR|5301.BR_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BR|5305_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BR|5305_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BR|5301.BR_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Brand Registration.|
Distribution Cost - Region|5301.DT|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Duties & Taxes|
5301.DT|5301.DT_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5301.DT_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5362_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5363_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5364_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5366_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5382_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5362_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond VBE/Duty- Botfee|
5301.DT|5363_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5364_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond VBE/Duty- Exp Duty|
5301.DT|5366_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5382_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DT|5301.DT_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Duties & Taxes.|
Distribution Cost - Region|5301.OTH|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Distribution Cost - Region|
5301.OTH|5301.OTH_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.OTH|5301.OTH_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.OTH|5380_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.OTH|5380_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Distr Cost-Region|
5301.OTH|5301.OTH_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Distribution Cost - Region.|
Distribution Cost - Region|5301.O|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Manpower|
5301.O|5301.O_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.O|5301.O_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.O|5371_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.O|5371_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.O|5301.O_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Manpower.|
Distribution Cost - Region|5301.PC|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Promoters Commissions|
5301.PC|5301.PC_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.PC|5301.PC_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.PC|5321_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.PC|5321_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Brokerage & Commision-Sales|
5301.PC|5301.PC_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Promoters Commissions.|
Distribution Cost - Region|5301.DM|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Demurrage|
5301.DM|5301.DM_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DM|5301.DM_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DM|5384_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DM|5384_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DM|5301.DM_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Demurrage.|

Distribution Cost - Region|5342R.TS|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortage / Breakages Secondary RGN|
5342R.TS|5342R.TS_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5342R.TS|5342R.TS_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5342R.TS|5342R.TS_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortage / Breakages Secondary RGN.|
Distribution Cost - Region|5380.TD|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Taxes on Distribution Cost|
5380.TD|5380.TD_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5380.TD|5380.TD_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5380.TD|5380.TD_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Taxes on Distribution Cost.|
Distribution Cost - Region|5378.ODC|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overdue EVC Customer / 'C' forms|
5378.ODC|5378_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5378.ODC|5378_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5378.ODC|5378_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overdue EVC Customer / 'C' forms.|


Distribution Cost - SCN|5301.BE|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Fixed|
5301.BE|5301.BE_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BE|5301.BE_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BE|5352_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BE|5352_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Fixed / Rent, Others|
5301.BE|5301.BE_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Fixed.|
5301.BE|5302_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BE|5302_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Fixed / License Fee|


Distribution Cost - SCN|5301.BEV|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Variable|
5301.BEV|5353_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BEV|5353_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.BEV|5353_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond Expenses Variable.|

Distribution Cost - SCN|5301.F|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Primary|
5301.F|5301.F_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.F|5301.F_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.F|5331_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.F|5332_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.F|5331_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Cartage Sales|
5301.F|5332_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Cartage Sales (Pool)|
5301.F|5301.F_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Primary.|
Distribution Cost - SCN|5301.S|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Secondary|
5301.S|5301.S_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.S|5301.S_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.S|5301.S_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Freight Secondary.|
Distribution Cost - SCN|5301.TSP|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Primary|
5301.TSP|5301.TSP_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.TSP|5301.TSP_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.TSP|5301.TSP_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Primary.|
Distribution Cost - SCN|5301.TSB|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Secondary|
5301.TSB|5301.TSB_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.TSB|5301.TSB_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.TSB|5342_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.TSB|5343_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.TSB|5342_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Brakage/Short- Cost|
5301.TSB|5343_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Brakage/Short- Excise|
5301.TSB|5301.TSB_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages Secondary.|
Distribution Cost - SCN|5301.TSS|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages at Bond|
5301.TSS|5301.TSS_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.TSS|5301.TSS_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.TSS|5301.TSS_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Transit Shortages / Breakages at Bond.|
Distribution Cost - SCN|5301.DTN|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Detention|
5301.DTN|5301.DTN_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DTN|5301.DTN_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DTN|5333_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DTN|5333_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DTN|5301.DTN_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Detention.|
Distribution Cost - SCN|6381.M|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Insurance Premium - Marine (FG)|
6381.M|6381.M_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
6381.M|6381.M_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
6381.M|6381.M_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Insurance Premium - Marine (FG).|

Distribution Cost - SCN|5370.PF|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Permits Fees|
5370.PF|5370.PF_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5370.PF|5370.PF_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5370.PF|5370.PF_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Permits Fees.|
Distribution Cost - SCN|5399.BS|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||EVC breakages / Shortages|
5399.BS|5399_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5399.BS|5399_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5399.BS|5399_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||EVC breakages / Shortages.|
Distribution Cost - SCN|5377.ODB|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overdue EVC Bond / 'F' forms|
5377.ODB|5377_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5377.ODB|5377_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5377.ODB|5377_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overdue EVC Bond / 'F' forms.|
Distribution Cost - SCN|5301.DTS|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond VBE/Duty- Others|
5301.DTS|5365_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DTS|5365_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.DTS|5365_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bond VBE/Duty- Others.|


CAAP ST|Total A&P|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp||
Total A&P|Trade A&P|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp||
Trade A&P|1000_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Trade A&P '|
Trade A&P|1000_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Trade A&P|5005|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||CUSTOMER & TRADE EVENTS EXP|
5005|5005_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5005|5005_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||CUSTOMER & TRADE EVENTS EXP'.|
5005|5005_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5005|5005_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Trade A&P|5006|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||CUSTOMER & TRADE PROM EXP|
5006|5006_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5006|5006_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||CUSTOMER & TRADE PROM EXP.|
5006|5006_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5006|5006_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Trade A&P|5007|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Display -Tieup On-Trade|
5007|5007_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5007|5007_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Display -Tieup On-Trade.|
5007|5007_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5007|5007_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Trade A&P|5008|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-DISPLAY TIEUP|
5008|5008_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5008|5008_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-DISPLAY TIEUP.|
5008|5008_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5008|5008_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Trade A&P|5009|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Display-Shop Front Rent|
5009|5009_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5009|5009_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Display-Shop Front Rent.|
5009|5009_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5009|5009_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Trade A&P|5010|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||CUSTOMER & TRADE SUPPORT EXP|
5010|5010_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5010|5010_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||CUSTOMER & TRADE SUPPORT EXP.|
5010|5010_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5010|5010_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Total A&P|Media|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp||
Media|2000_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Media '|
Media|2000_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5023|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Cinema|
5023|5023_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5023|5023_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD_Cinema|
5023|5023_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5023|5023_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5024|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD OOH/OUTDOOR|
5024|5024_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5024|5024_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD_OOH/OUTDOOR.|
5024|5024_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5024|5024_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5025|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Internet / Digital|
5025|5025_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5025|5025_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Internet / Digital.|
5025|5025_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5025|5025_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5026|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Press|
5026|5026_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5026|5026_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD_Press|
5026|5026_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5026|5026_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5027|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Radio|
5027|5027_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5027|5027_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD_RADio|
5027|5027_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5027|5027_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5028|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD TV|
5028|5028_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5028|5028_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD_TV|
5028|5028_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5028|5028_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5029|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD Outdoor Cricket|
5029|5029_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5029|5029_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD_OutdoorCricket|
5029|5029_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5029|5029_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5030|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Ad Line Extension|
5030|5030_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5030|5030_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Ad Line Extension.|
5030|5030_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5030|5030_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5031|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD DTH/CABLE|
5031|5031_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5031|5031_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD DTH/CABLE.|
5031|5031_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5031|5031_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Media|5032|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||MEDIA AGENCY COST|
5032|5032_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5032|5032_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||MEDIA_AGENCY_COST.|
5032|5032_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5032|5032_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Total A&P|Other A&P|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp||
Other A&P|3000_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other A&P '|
Other A&P|3000_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5053|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AMBASSADOR PROGRAM|
5053|5053_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5053|5053_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AMBASSADOR_PROGRAM|
5053|5053_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5053|5053_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5054|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Pr Agency Retainership Fee|
5054|5054_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5054|5054_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Pr_Agency Retainership Fee|
5054|5054_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5054|5054_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5055|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OTHER PR AGENCY EXPENSES|
5055|5055_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5055|5055_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OTHER_PR_AGENCY_EXPENSES|
5055|5055_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5055|5055_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5056|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Consumer Events|
5056|5056_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5056|5056_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Consumer_Events|
5056|5056_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5056|5056_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5057|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-CONSUMER PROM|
5057|5057_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5057|5057_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-CONSUMER PROM.|
5057|5057_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5057|5057_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5058|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE -SIGNAGE FABRICATION|
5058|5058_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5058|5058_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE -SIGNAGE FABRICATION.|
5058|5058_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5058|5058_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5059|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-OTHER DISPLAY EXP|
5059|5059_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5059|5059_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-OTHER_DISPLAY EXP.|
5059|5059_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5059|5059_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5060|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-PAPER POS MATERIAL|
5060|5060_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5060|5060_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||OFFTRADE-PAPER_POS MATERIAL.|
5060|5060_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5060|5060_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5061|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Merchandising Manpower|
5061|5061_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5061|5061_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Merchandising Manpower.|
5061|5061_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5061|5061_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5062|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Tasting And Sampling|
5062|5062_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5062|5062_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Tasting_And Sampling|
5062|5062_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5062|5062_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5063|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Market Research|
5063|5063_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5063|5063_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Market_Research|
5063|5063_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5063|5063_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5064|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Packaging & Development|
5064|5064_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5064|5064_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Packaging&Development|
5064|5064_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5064|5064_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5065|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Ad Prod. TV/Press/Radio|
5065|5065_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5065|5065_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Ad Prod. TV/Press/Radio.|
5065|5065_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5065|5065_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5066|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD PROD DIGITAL/ONLINE|
5066|5066_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5066|5066_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||AD PROD DIGITAL/ONLINE.|
5066|5066_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5066|5066_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5067|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||BAR COLLATERALS|
5067|5067_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5067|5067_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bar_Collaterals|
5067|5067_ACT_INR|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5067|5067_ACT_USD|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5068|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Celebrity Endorsement|
5068|5068_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5068|5068_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Celebrity Endorsement.|
5068|5068_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5068|5068_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5069|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Event Production|
5069|5069_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5069|5069_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Event Production.|
5069|5069_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5069|5069_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5070|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Event Celebrity|
5070|5070_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5070|5070_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Event Celebrity.|
5070|5070_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5070|5070_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5071|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Godown Rent.|
5071|5071_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5071|5071_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Godown Rent..|
5071|5071_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5071|5071_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5073|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||PACKAGING/VAP/GWP EXP|
5073|5073_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5073|5073_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||PACKAGING/VAP/GWP EXP.|
5073|5073_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5073|5073_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5074|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-SIGNAGE FABRICATION|
5074|5074_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5074|5074_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-SIGNAGE_FABRICATION.|
5074|5074_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5074|5074_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5075|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-OTHER DISPLAY EXP|
5075|5075_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5075|5075_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-OTHER DISPLAY EXP.|
5075|5075_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5075|5075_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5076|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-PAPER POS MATERIAL|
5076|5076_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5076|5076_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-PAPER_POS MATERIAL.|
5076|5076_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5076|5076_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5077|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||E-CONSUMER RELATION MGT|
5077|5077_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5077|5077_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||E-CONSUMER RELATION MGT.|
5077|5077_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5077|5077_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Other A&P|5078|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-CONSUMER PROMOTION|
5078|5078_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5078|5078_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||ONTRADE-CONSUMER_PROMOTION.|
5078|5078_ACT_INR|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5078|5078_ACT_USD|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
CAAP ST|5410|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Brand Owner Investment|
5410|5410_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5410|5410_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Brand Owner Investment '|
5410|5410_ALO|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Brand Owner Investment .|
Business Profit ST|Total Structure Cost|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp||
Total Structure Cost|1234|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Trading Costs|
1234|1234.PAY|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Trading Costs - Payroll|
1234.PAY|1234.PAY_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
1234.PAY|1234.PAY_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Trading Costs - Payroll '|
1234|1234.OPEX|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Trading Costs - Opex|
1234.OPEX|1234.OPEX_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
1234.OPEX|1234.OPEX_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Trading Costs - Opex '|
Total Structure Cost|5678|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Overheads|
5678|5678.PAY|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overheads - Payroll|
5678.PAY|5678.PAY_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5678.PAY|5678.PAY_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overheads - Payroll '|
5678|5678.OPEX|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overheads - Opex|
5678.OPEX|5678.OPEX_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5678.OPEX|5678.OPEX_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overheads - Opex '|
5678|5678.DEP|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overheads - Depreciation|
5678.DEP|5678.DEP_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5678.DEP|5678.DEP_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overheads - Depreciation '|
Business Profit ST|9095|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Other Income / Expense|
9095|9095_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Income / Expense .|
9095|9095_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Income / Expense '|
P&L|Business Profit ST.|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Business Profit ST.|CAAP ST.|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
CAAP ST.|Cont. Margin ST.|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Gross Margin After Logistic Costs - Regions|
Cont. Margin ST.|Gross Margin ST.|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Gross Margin - Regions|
Gross Margin ST.|3010.GS|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Rev||
Gross Margin ST.|5210|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
Gross Margin ST.|5275|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
Gross Margin ST.|Net Sales Excl. T&D|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Rev||
Gross Margin ST.|4010.STR|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|||
Cont. Margin ST.|5301.|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Distribution Costs Total Region|
5301.|Distribution Cost - Region|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
5301.|Distribution Cost TP - SCN|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Distribution Cost TP - SCN|5301.TP_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Distribution Cost TP - SCN|5301.TP_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||

CAAP ST.|Trade A&P|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
CAAP ST.|Media|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
CAAP ST.|Other A&P|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
CAAP ST.|Total A&P|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Business Profit ST.|1234|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
Business Profit ST.|5678|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
Business Profit ST.|Total Structure Cost|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Business Profit ST.|9095|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
P&L|Business Profit Local|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Business Profit Local|CAAP Local|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
CAAP Local|Cont. Margin Local|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Gross Margin After Logistic Costs|
Cont. Margin Local|Gross Margin Local|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Gross Margin|
Gross Margin Local|Net Sales Excl. T&D|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Rev||
Gross Margin Local|4010.ST|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Gross Margin Local|4010.NST|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Gross Margin Local|6000|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Gross Margin Local|4011.HAN|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Gross Margin Local|4011.DUT|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Cont. Margin Local|Total COGS After Logistic Costs|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Total COGS After Logistic Costs|4010.ST|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Total COGS After Logistic Costs|4010.NST|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Total COGS After Logistic Costs|6000|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Total COGS After Logistic Costs|4011.HAN|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Total COGS After Logistic Costs|4011.DUT|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Cont. Margin Local|5301|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
CAAP Local|Total A&P Local|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Total A&P Local|Trade A&P|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Total A&P Local|Media|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Total A&P Local|Other A&P|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
CAAP Local|5410|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Business Profit Local|1234|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
Business Profit Local|5678|N|ShareData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|||||||N|None||false|PRI_Exp||
Business Profit Local|Total Structure Cost|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Business Profit Local|9095|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|PRI_Exp||
Business Profit Local|9310|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Forex Gains / Losses on Current Operations|
9310|9310_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Forex Gains / Losses on Current Operations .|
9310|9310_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Forex Gains / Losses on Current Operations '|
P&L|Net Income After Tax|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Net Income After Tax|Profit Before Corporate Tax|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|PRI_Rev||
Profit Before Corporate Tax|Operating Profit|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Operating Profit|Non-Current Operation Profit|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||
Non-Current Operation Profit|9481|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Restructuring Charges|
9481|9481_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Restructuring Charges .|
9481|9481_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Restructuring Charges '|
Non-Current Operation Profit|9691.INC|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Other Non-Recurring Income|
9691.INC|9691.INC_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Non-Recurring Income .|
9691.INC|9691.INC_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Non-Recurring Income '|
Non-Current Operation Profit|9691.EXP|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Non-Recurring Expense|
9691.EXP|9691.EXP_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Non-Recurring Expense .|
9691.EXP|9691.EXP_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Non-Recurring Expense '|
Non-Current Operation Profit|9410|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Capital Gain / Loss on Asset Disposal|
9410|9410_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Capital Gain / Loss on Asset Disposal .|
9410|9410_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Capital Gain / Loss on Asset Disposal '|
Operating Profit|Business Profit Local|N|ShareData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|||||||N|None||false|||
Profit Before Corporate Tax|Interest Income & Expense|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Interest Income & Expense|9285|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Financial Income|
9285|9285_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Financial Income .|
9285|9285_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Financial Income '|
Interest Income & Expense|9240|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Financial Expense|
9240|9240_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Financial Expense .|
9240|9240_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Financial Expense '|
Profit Before Corporate Tax|Exchange Rate Profit (Loss)|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
Exchange Rate Profit (Loss)|9330|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Realized Fx Gain / Loss|
9330|9330_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Realized Fx Gain / Loss .|
9330|9330_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Realized Fx Gain / Loss '|
Exchange Rate Profit (Loss)|9340|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Unrealized Fx Gain / Loss|
9340|9340_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Unrealized Fx Gain / Loss .|
9340|9340_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Unrealized Fx Gain / Loss '|
Net Income After Tax|9910|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|PRI_Exp|Total Corporate Tax|
9910|9910_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false|||
9910|9911|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Corporate Tax - Profit From Operations|
9911|9911_CAL|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Corporate Tax - Profit From Operations .|
9911|9911_ACT|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Corporate Tax - Profit From Operations '|
P&L|P&L Analysis|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|Unspecified|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
P&L Analysis|as a % of Net Sales Analysis|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|Unspecified|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
as a % of Net Sales Analysis|GM ST % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Gross Margin ST" % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|GM Local % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Gross Margin Local" % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|GMLC ST % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Cont. Margin ST" % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|GMLC Local % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Cont. Margin Local" % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|CAAP ST % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"CAAP ST" % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|CAAP Local % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"CAAP Local" % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|Total A&P % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Total A&P" % "Net Sales Excl. T&D" * -1;
as a % of Net Sales Analysis|Structure Cost % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Total Structure Cost" % "Net Sales Excl. T&D" * -1;
as a % of Net Sales Analysis|Business Profit ST % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Business Profit ST" % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|Business Profit Local % of Net Sales|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Business Profit Local" % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|GM ST % of Net Sales.|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Gross Margin ST." % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|GMLC ST % of Net Sales.|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"Cont. Margin ST." % "Net Sales Excl. T&D";
as a % of Net Sales Analysis|CAAP ST % of Net Sales.|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"CAAP ST." % "Net Sales Excl. T&D";
P&L Analysis|Per 9L Case Analysis|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|Unspecified|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Per 9L Case Analysis|Gross Sales Excl. T&D per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"3010.GS" / "3010.K9L";
Per 9L Case Analysis|Total A&D per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"5210" / "3010.K9L";
Per 9L Case Analysis|Net Sales Excl. T&D per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Net Sales Excl. T&D" / "3010.K9L";
Per 9L Case Analysis|Standard Cost (Incl. Fx on Std Costs) per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||("HSTDC" / "3010.K9L") + ("HFXSTDC" / "3010.K9L");
Per 9L Case Analysis|Transfer Price - Imports per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"4010.ST" / "3010.K9L";
Per 9L Case Analysis|Transfer Price - Regions per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"4010.STR" / "3010.K9L";
Per 9L Case Analysis|Production Cost per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||("6000" / "3010.K9L");
Per 9L Case Analysis|COGS Non-ST per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"4010.NST" / "3010.K9L";
Per 9L Case Analysis|Tax & Duties per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"4011.DUT" / "3010.K9L";
Per 9L Case Analysis|Handling Cost per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"4011.HAN" / "3010.K9L";
Per 9L Case Analysis|Total COGS-ST per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"Total COGS After Logistic Costs - ST" / "3010.K9L";
Per 9L Case Analysis|Gross Margin ST per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"Gross Margin ST" / "3010.K9L";
Per 9L Case Analysis|Distribution Cost per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"5301" / "3010.K9L";
Per 9L Case Analysis|Cont. Margin ST per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Cont. Margin ST" / "3010.K9L";
Per 9L Case Analysis|Total A&P per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"Total A&P" / "3010.K9L";
Per 9L Case Analysis|CAAP ST per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"CAAP ST" / "3010.K9L";
Per 9L Case Analysis|Gross Margin ST. per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Gross Margin ST." / "3010.K9L";
Per 9L Case Analysis|Cont. Margin ST. per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Cont. Margin ST." / "3010.K9L";
Per 9L Case Analysis|CAAP ST. per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"CAAP ST." / "3010.K9L";
Per 9L Case Analysis|Gross Margin Local per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Gross Margin Local" / "3010.K9L";
Per 9L Case Analysis|Cont. Margin Local per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Cont. Margin Local" / "3010.K9L";
Per 9L Case Analysis|CAAP Local per 9L Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"CAAP Local" / "3010.K9L";
P&L Analysis|Per Actual Case Analysis|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|Unspecified|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Per Actual Case Analysis|Gross Sales Excl. T&D per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"3010.GS" / "HVAC_Total";
Per Actual Case Analysis|Total A&D per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"5210" / "HVAC_Total";
Per Actual Case Analysis|Net Sales Excl. T&D per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Net Sales Excl. T&D" / "HVAC_Total";
Per Actual Case Analysis|Standard Cost (Incl. Fx on Std Costs) per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||("HSTDC" / "HVAC_Total" ) + ("HFXSTDC" / "HVAC_Total" );
Per Actual Case Analysis|Transfer Price - Regions per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"4010.STR" / "HVAC_Total";
Per Actual Case Analysis|Tax & Duties per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"4011.DUT" / "HVAC_Total";
Per Actual Case Analysis|Handling Cost per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"4011.HAN" / "HVAC_Total";
Per Actual Case Analysis|Total COGS-ST per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"Total COGS After Logistic Costs - ST" / "HVAC_Total";
Per Actual Case Analysis|Gross Margin ST per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Gross Margin ST" / "HVAC_Total";
Per Actual Case Analysis|Distribution Cost per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"5301" / "HVAC_Total";
Per Actual Case Analysis|Cont. Margin ST per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Cont. Margin ST" / "HVAC_Total";
Per Actual Case Analysis|Total A&P per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||Y|None||false|||"Total A&P" / "HVAC_Total";
Per Actual Case Analysis|CAAP ST per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"CAAP ST" / "HVAC_Total";
Per Actual Case Analysis|Gross Margin ST. per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Gross Margin ST." / "HVAC_Total";
Per Actual Case Analysis|Cont. Margin ST. per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Cont. Margin ST." / "HVAC_Total";
Per Actual Case Analysis|CAAP ST. per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"CAAP ST." / "HVAC_Total";
Per Actual Case Analysis|Gross Margin Local per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Gross Margin Local" / "HVAC_Total";
Per Actual Case Analysis|Cont. Margin Local per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"Cont. Margin Local" / "HVAC_Total";
Per Actual Case Analysis|CAAP Local per Actual Case|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||Y|None||false|||"CAAP Local" / "HVAC_Total";
P&L Analysis|SKU Analysis|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|Unspecified|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
SKU Analysis|SKU Mix - %|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Percentage|Plan1|SavedAssumption|None|NonExpense|Flow||Y|None||false|||"3010.K9L" % @PARENTVAL(Brand,"3010.K9L");
#root|Reporting|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|Unspecified|Plan1|Revenue|None|NonExpense|Flow||N|None||false|||
Reporting|Payroll Reporting (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|NonCurrency|Plan1|SavedAssumption|None|NonExpense|Balance||N|None||false|||
Payroll Reporting (Label)|HPRSW|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Salaries & Wages|"HBMCBS" + "HBMCHE" + "HBMCSA" + "HBMCMCP";
Payroll Reporting (Label)|HPRB|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Bonus|"HIVP";
Payroll Reporting (Label)|HPRO|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Overtime|
Payroll Reporting (Label)|HPRAL|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Accrued Leave|"HRBLE";
Payroll Reporting (Label)|HPRODC|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other Direct Compensation|"HBMCOSA" + "HBMCCA" + "HBMCIA" + "HRAPDW" + "HRAPCR" + "HRAPS" + "HRAPNP";
Payroll Reporting (Label)|HPREB|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Employee Benefits|"HBMCPF" + "HBMCSC" + "HRAPMR" + "HRBG";
Payroll Reporting (Label)|HPRSCI|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Sales Commission / Incentive|
Payroll Reporting (Label)|HPRM|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Miscellaneous|"HIRS" + "HILTIP";
Reporting|Variance Summary (Label)|Y|LabelOnly|Y|N|N|N|N|N|~|~|~|~|~|~|Unspecified|Plan1|Revenue|None|NonExpense|Flow||N|None||false|||
Variance Summary (Label)|HOCAAP|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Opening CAAP|
Variance Summary (Label)|HCAAP_I|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Change in CAAP|
HCAAP_I|HCM_I|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||GMLC Impact|
HCM_I|HNS_I|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Net Sales Excl. T&D Impact|
HNS_I|HVOL_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Volume Effect on GMLC|
HNS_I|HP_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Price Impact|
HNS_I|HCHM_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Pack Mix|
HNS_I|HAD_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Allowances & Discount Impact|
HCM_I|HSC_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Standard Costs Impact|
HCM_I|HFXSC_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||FX on Standard Costs Impact|
HCM_I|HCOGSNST_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||COGS Non-ST Impact|
HCM_I|HPC_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Production Costs Impact|
HCM_I|HTD_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Tax & Duties Impact|
HCM_I|HHC_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Handling Costs Impact|
HCM_I|HDC_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Distribution Costs Impact|
HCAAP_I|HTTAP_I|Y|DynamicCalc|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Total A&P Impact|
HTTAP_I|HTAP_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Trade A&P Impact|
HTTAP_I|HOAP_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Other A&P Impact|
HTTAP_I|HM_I|Y|StoreData|Y|N|N|N|N|N|+|+|+|+|+|+|Currency|Plan1|Expense|Average|Expense|Flow||N|None||false||Media Impact|
Variance Summary (Label)|HCCAAP|Y|DynamicCalc|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Closing CAAP|"HOCAAP" + "HCAAP_I";
Variance Summary (Label)|HCHM_I_CAL|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false||Volume Effect Aggregate Temp Storage|
Variance Summary (Label)|HCAAP_I_CAL|Y|StoreData|Y|N|N|N|N|N|~|~|~|~|~|~|Currency|Plan1|Revenue|Average|NonExpense|Flow||N|None||false|||

!Members=Alias
'Name
Default
English

!Hierarchies=Alias
'Parent|Child|IsPrimary
#root|Default|Y
#root|English|Y
