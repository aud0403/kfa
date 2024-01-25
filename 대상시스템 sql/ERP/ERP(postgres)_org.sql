CREATE TABLE "_TACAsst" (
       CompanySeq INTEGER
     ,AsstSeq                        INTEGER
     ,AsstNo                          varchar(100)
     ,AsstName                        varchar(100)
     ,AsstTypeSeq                    INTEGER
     ,BizUnit                        INTEGER
     ,GainDate                        char(8)
     ,DeptSeq                        INTEGER
     ,GainAmt                            INTEGER
     ,GainQty                        INTEGER
     ,GainCustSeq                    INTEGER
     ,ManagerEmpSeq                  INTEGER
     ,IsBiz                           char(1)
     ,RealAsstKindSeq                INTEGER
     ,Remark                          varchar(200)
     ,FileSeq                        INTEGER
     ,SupplyAmt                          INTEGER
     ,VATAmt                             INTEGER
     ,SMVATKind                      INTEGER
     ,SlipSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,AccVatSeq                      INTEGER
     ,EvidSeq                        INTEGER
     ,SMNDVATKind                    INTEGER
     ,SMNDVATAmt                         INTEGER
     ,IsRemUseMonDepre                char(1)

 );
CREATE TABLE "_TACAsstAccSet" (
       CompanySeq INTEGER
     ,AsstAccTypeSeq                 INTEGER
     ,AsstAccTypeName                 varchar(100)
     ,GainAccSeq                     INTEGER
     ,AccumDepreAccSeq               INTEGER
     ,ImpairAccSeq                   INTEGER
     ,AccumImpairAccSeq              INTEGER
     ,ImpairRvrsAccSeq               INTEGER
     ,SMAsstValMethod                INTEGER
     ,SMRevalAccMethod               INTEGER
     ,RevalSurplusAccSeq             INTEGER
     ,RevalGainAccSeq                INTEGER
     ,RevalLossAccSeq                INTEGER
     ,Remark                          varchar(500)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TACAsstDefault" (
       CompanySeq INTEGER
     ,AsstTypeSeq                    INTEGER
     ,AsstTypeName                    varchar(100)
     ,AsstAccTypeSeq                 INTEGER
     ,BizUnit                        INTEGER
     ,SMDepreMethod                  INTEGER
     ,DepreAccSeq                    INTEGER
     ,UseYear                        INTEGER
     ,MngDeptSeq                     INTEGER
     ,ManagerEmpSeq                  INTEGER
     ,Remark                          varchar(200)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,UMCostType                     INTEGER

 );
CREATE TABLE "_TACAsstDepreDept" (
       CompanySeq INTEGER
     ,SMAccStd                       INTEGER
     ,AsstSeq                        INTEGER
     ,AsstChgSerl                    INTEGER
     ,SMGainType                     INTEGER
     ,DepreDate                       char(8)
     ,DeptSerl                       INTEGER
     ,SMDepreKind                    INTEGER
     ,SMIncOrDec                     INTEGER
     ,DeptSeq                        INTEGER
     ,CCtrSeq                        INTEGER
     ,DepreAccSeq                    INTEGER
     ,AccumDepreAccSeq               INTEGER
     ,UMCostType                     INTEGER
     ,AccumImpairAccSeq              INTEGER
     ,DepreSubAmt                        INTEGER
     ,Remark                          varchar(500)
     ,SlipSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TACAsstDepreStdHist" (
       CompanySeq INTEGER
     ,AsstSeq                        INTEGER
     ,HistSerl                       INTEGER
     ,EffectiveYM                     char(6)
     ,SMDepreMethod                  INTEGER
     ,UseYear                        INTEGER
     ,DepreRate                          INTEGER
     ,SrtDepreYM                      char(6)
     ,EndDepreYM                      char(6)
     ,RemainAmt                          INTEGER
     ,IsRemAmtCheck                   char(1)
     ,IsCoAsst                        char(1)
     ,CGUnit                         INTEGER
     ,IsEvalFairVal                   char(1)
     ,IsEvalUseVal                    char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IsRemUseMonDepre                char(1)

 );
CREATE TABLE "_TACAsstDispo" (
       CompanySeq INTEGER
     ,SMAccStd                       INTEGER
     ,AsstSeq                        INTEGER
     ,DispoSerl                      INTEGER
     ,DispoDate                       char(8)
     ,SellAmt                            INTEGER
     ,CustSeq                        INTEGER
     ,IsSumCurrDepreAmt               char(1)
     ,Remark                          varchar(500)
     ,SlipSeq                        INTEGER
     ,SMVATKind                      INTEGER
     ,SupplyAmt                          INTEGER
     ,VATAmt                             INTEGER
     ,AccVatSeq                      INTEGER
     ,EvidSeq                        INTEGER
     ,SMNDVATKind                    INTEGER
     ,SMNDVATAmt                         INTEGER
     ,LossAccSeq                     INTEGER
     ,ProfitAccSeq                   INTEGER
     ,IsBatch                         char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,AntiAccSeq                     INTEGER
     ,BankAccSeq                     INTEGER
     ,DeptSeq                        INTEGER
     ,CCtrSeq                        INTEGER
     ,DispoCnt                           INTEGER

 );
CREATE TABLE "_TACAsstImpairmentLossAsst" (
       CompanySeq INTEGER
     ,AccYM                           char(6)
     ,AsstSeq                        INTEGER
     ,FairValueAmt                       INTEGER
     ,UseValueAmt                        INTEGER
     ,RecoverableAmt                     INTEGER
     ,ImpairmentLossAmt                  INTEGER
     ,AdjSurplusAmt                      INTEGER
     ,AdjGainLossAmt                     INTEGER
     ,UMImpairLossReason             INTEGER
     ,Remark                          varchar(200)
     ,IsProc                          char(1)
     ,SlipSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TACDCashItem" (
       CompanySeq INTEGER
     ,CashItemSeq                    INTEGER
     ,CashItemNo                      char(5)
     ,CashItemName                    varchar(100)
     ,SMCalcKind                     INTEGER
     ,Formula                         varchar(100)
     ,Remark                          varchar(200)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TACFundExec" (
       CompanySeq INTEGER
     ,AccUnit                        INTEGER
     ,FundDate                        char(8)
     ,Serl                           INTEGER
     ,FundItemSeq                    INTEGER
     ,RevExecAmt                         INTEGER
     ,PayExecAmt                         INTEGER
     ,Remark                          varchar(100)
     ,SlipSeq                        INTEGER

 );
CREATE TABLE "_TACFundPlan" (
       CompanySeq INTEGER
     ,AccUnit                        INTEGER
     ,FundDate                        char(8)
     ,Serl                           INTEGER
     ,FundItemSeq                    INTEGER
     ,RevPlanAmt                         INTEGER
     ,PayPlanAmt                         INTEGER
     ,Remark                          varchar(100)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,CurrSeq                        INTEGER

 );
CREATE TABLE "_TACLoan" (
       CompanySeq INTEGER
     ,LoanSeq                        INTEGER
     ,LoanNo                          varchar(20)
     ,LoanName                        varchar(40)
     ,BizUnit                        INTEGER
     ,SMKoOrFor                      INTEGER
     ,LoanDate                        char(8)
     ,SMLoanType                     INTEGER
     ,AccSeq                         INTEGER
     ,CurrAccSeq                     INTEGER
     ,UMLoanKind                     INTEGER
     ,BankSeq                        INTEGER
     ,BankAccSeq                     INTEGER
     ,Amt                                INTEGER
     ,ForAmt                             INTEGER
     ,CurrSeq                        INTEGER
     ,ExRateDate                      char(8)
     ,ExRate                             INTEGER
     ,IsBiz                           char(1)
     ,Remark                          varchar(100)
     ,SlipSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TACLoanInterestOpt" (
       CompanySeq INTEGER
     ,LoanSeq                        INTEGER
     ,Serl                           INTEGER
     ,ChgDate                         char(8)
     ,SMCalcMethod                   INTEGER
     ,SMInterestPayWay               INTEGER
     ,InterestTerm                   INTEGER
     ,PayCnt                         INTEGER
     ,InterestRate                       INTEGER
     ,SMRateType                     INTEGER
     ,Spread                             INTEGER
     ,FrDate                          char(8)
     ,ToDate                          char(8)
     ,DayQty                         INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IntDayCountType                INTEGER

 );
CREATE TABLE "_TACLoanPlan" (
       CompanySeq INTEGER
     ,LoanSeq                        INTEGER
     ,Serl                           INTEGER
     ,PayDate                         char(8)
     ,SMInterestOrCapital            INTEGER
     ,PayCnt                         INTEGER
     ,FrDate                          char(8)
     ,ToDate                          char(8)
     ,BankSeq                        INTEGER
     ,InterestRate                       INTEGER
     ,PayAmt                             INTEGER
     ,PayForAmt                          INTEGER
     ,PayIntAmt                          INTEGER
     ,PayForIntAmt                       INTEGER
     ,CurrSeq                        INTEGER
     ,ExRate                             INTEGER
     ,IsPay                           char(1)
     ,IsPayInt                        char(1)
     ,RepaySlipSeq                   INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TACLoanRepayOpt" (
       CompanySeq INTEGER
     ,LoanSeq                        INTEGER
     ,Serl                           INTEGER
     ,ChgDate                         char(8)
     ,FrDate                          char(8)
     ,ToDate                          char(8)
     ,SMRepayType                    INTEGER
     ,RepayTerm                      INTEGER
     ,RepayCnt                       INTEGER
     ,DeferYear                      INTEGER
     ,DeferMonth                     INTEGER
     ,OddTime                        INTEGER
     ,OddUnitAmt                         INTEGER
     ,Remark                          varchar(100)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TACSlip" (
       CompanySeq INTEGER
     ,SlipMstSeq                     INTEGER
     ,SlipMstID                       varchar(30)
     ,AccUnit                        INTEGER
     ,SlipUnit                       INTEGER
     ,AccDate                         char(8)
     ,SlipNo                          char(4)
     ,SlipKind                       INTEGER
     ,RegEmpSeq                      INTEGER
     ,RegDeptSeq                     INTEGER
     ,Remark                          varchar(2000)
     ,SMCurrStatus                   INTEGER
     ,AptDate                         char(8)
     ,AptEmpSeq                      INTEGER
     ,AptDeptSeq                     INTEGER
     ,AptRemark                       varchar(100)
     ,SMCheckStatus                  INTEGER
     ,CheckOrigin                    INTEGER
     ,IsSet                           char(1)
     ,SetSlipNo                       varchar(20)
     ,SetEmpSeq                      INTEGER
     ,SetDeptSeq                     INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,RegDateTime                      TIMESTAMP
     ,RegAccDate                      char(8)
     ,SetSlipID                       varchar(30)

 );
CREATE TABLE "_TACSlipAutoEnv" (
       CompanySeq INTEGER
     ,SlipAutoEnvSeq                 INTEGER
     ,SlipKindNo                      varchar(30)
     ,ControlAccUnit                 INTEGER
     ,ControlAccUnitSheet            INTEGER
     ,ControlSlipUnit                INTEGER
     ,ControlSlipUnitSheet           INTEGER
     ,ControlAccDate                 INTEGER
     ,ControlRemark1                 INTEGER
     ,ControlRemark2                 INTEGER
     ,ControlRemark3                 INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TACSlipRem" (
       CompanySeq INTEGER
     ,SlipSeq                        INTEGER
     ,RemSeq                         INTEGER
     ,RemValSeq                      INTEGER
     ,RemValText                      varchar(100)

 );
CREATE TABLE "_TACSlipRow" (
       CompanySeq INTEGER
     ,SlipSeq                        INTEGER
     ,SlipMstSeq                     INTEGER
     ,SlipID                          varchar(40)
     ,AccUnit                        INTEGER
     ,SlipUnit                       INTEGER
     ,AccDate                         char(8)
     ,SlipNo                          varchar(4)
     ,RowNo                           varchar(4)
     ,RowSlipUnit                    INTEGER
     ,AccSeq                         INTEGER
     ,UMCostType                     INTEGER
     ,SMDrOrCr                       INTEGER
     ,DrAmt                              INTEGER
     ,CrAmt                              INTEGER
     ,DrForAmt                           INTEGER
     ,CrForAmt                           INTEGER
     ,CurrSeq                        INTEGER
     ,ExRate                             INTEGER
     ,DivExRate                          INTEGER
     ,EvidSeq                        INTEGER
     ,TaxKindSeq                     INTEGER
     ,NDVATAmt                           INTEGER
     ,CashItemSeq                    INTEGER
     ,SMCostItemKind                 INTEGER
     ,CostItemSeq                    INTEGER
     ,Summary                         varchar(100)
     ,BgtDeptSeq                     INTEGER
     ,BgtCCtrSeq                     INTEGER
     ,BgtSeq                         INTEGER
     ,IsSet                           char(1)
     ,CoCustSeq                      INTEGER
     ,LastDateTime                     TIMESTAMP
     ,LastUserSeq                    INTEGER

 );
CREATE TABLE "_TACSlipSum" (
       CompanySeq INTEGER
     ,SMAccStd                       INTEGER
     ,AccUnit                        INTEGER
     ,AccYM                           char(6)
     ,SlipUnit                       INTEGER
     ,IsIni                           char(1)
     ,AccSeq                         INTEGER
     ,UMCostType                     INTEGER
     ,DrAmt                              INTEGER
     ,CrAmt                              INTEGER

 );
CREATE TABLE "_TACSlipSumFor" (
       CompanySeq INTEGER
     ,SMAccStd                       INTEGER
     ,AccUnit                        INTEGER
     ,AccYM                           char(6)
     ,SlipUnit                       INTEGER
     ,IsIni                           char(1)
     ,AccSeq                         INTEGER
     ,UMCostType                     INTEGER
     ,CurrSeq                        INTEGER
     ,DrForAmt                           INTEGER
     ,CrForAmt                           INTEGER
     ,DrAmt                              INTEGER
     ,CrAmt                              INTEGER

 );
CREATE TABLE "_TDAAccount" (
       CompanySeq INTEGER
     ,AccSeq                         INTEGER
     ,AccNo                           varchar(20)
     ,AccName                         varchar(100)
     ,SMDrOrCr                       INTEGER
     ,IsAnti                          char(1)
     ,IsSlip                          char(1)
     ,IsEssCostDept                   char(1)
     ,IsLevel2                        char(1)
     ,IsZeroAllow                     char(1)
     ,IsEssForAmt                     char(1)
     ,SMIsEssEvid                    INTEGER
     ,IsEssCost                       char(1)
     ,IsCostTrn                       char(1)
     ,SMIsUseRNP                     INTEGER
     ,SMRNPMethod                    INTEGER
     ,SMBgtType                      INTEGER
     ,IsCash                          char(1)
     ,SMCashItemKind                 INTEGER
     ,IsFundSet                       char(1)
     ,IsAutoExec                      char(1)
     ,SMAccType                      INTEGER
     ,SMAccKind                      INTEGER
     ,OffRemSeq                      INTEGER
     ,RemSeq1                        INTEGER
     ,RemSeq2                        INTEGER
     ,BgtRemSeq                      INTEGER
     ,SMSetType                      INTEGER
     ,LastUserSeq                    INTEGER
     ,SMCostAccType                  INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TDAAccountRem" (
       CompanySeq INTEGER
     ,RemSeq                         INTEGER
     ,RemName                         varchar(100)
     ,SMSourceKind                   INTEGER
     ,MajorSeq                       INTEGER
     ,SMInputType                    INTEGER
     ,Remark                          varchar(100)
     ,CodeHelpSeq                    INTEGER
     ,CodeHelpParams                  varchar(100)
     ,WordSeq                        INTEGER
     ,IsSystem                        char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TDABank" (
       CompanySeq INTEGER
     ,BankSeq                        INTEGER
     ,BankName                        varchar(100)
     ,BankEngName                     varchar(100)
     ,CellPhone                       varchar(30)
     ,TelNo                           varchar(30)
     ,FaxNo                           varchar(30)
     ,Manager                         varchar(100)
     ,Addr                            varchar(200)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,SWIFTCODE                       varchar(50)
     ,BankHQ                         INTEGER

 );
CREATE TABLE "_TDABankAcc" (
       CompanySeq INTEGER
     ,BankAccSeq                     INTEGER
     ,BankAccNo                       varchar(30)
     ,BankAccName                     varchar(100)
     ,BizUnit                        INTEGER
     ,SMBankAccKind                  INTEGER
     ,BankSeq                        INTEGER
     ,AccSeq                         INTEGER
     ,Owner                           varchar(100)
     ,OwnerEngName                    varchar(100)
     ,OpenDate                        char(8)
     ,ExpireDate                      char(8)
     ,PayDate                         char(2)
     ,MonthPayAmt                        INTEGER
     ,InterestRate                       INTEGER
     ,limitAmt                           INTEGER
     ,DepositAmt                         INTEGER
     ,SuretyAmt                          INTEGER
     ,IsAccruedIncomeTrans            char(1)
     ,IsFoCurrTrans                   char(1)
     ,IsClose                         char(1)
     ,IsFund                          char(1)
     ,TaxUnit                        INTEGER
     ,Remark                          varchar(200)
     ,SMFBSCycle                     INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,ClosingDate                     char(8)
     ,IsSaleAcc                       char(1)
     ,CMSCode                         varchar(50)

 );
CREATE TABLE "_TDACard" (
       CompanySeq INTEGER
     ,BizUnit                        INTEGER
     ,CardSeq                        INTEGER
     ,CardNo                          varchar(30)
     ,CardName                        varchar(100)
     ,SMComOrPriv                    INTEGER
     ,UMCardKind                     INTEGER
     ,EmpSeq                         INTEGER
     ,IssueDate                       char(8)
     ,ExpireYm                        char(6)
     ,SttlDay                        INTEGER
     ,SttlLimitDay                   INTEGER
     ,SttlAccNo                       varchar(30)
     ,CardStatus                     INTEGER
     ,StopDate                        char(8)
     ,Remark                          varchar(200)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,SttlBankSeq                    INTEGER
     ,SttlOwner                       varchar(100)
     ,RemarkNum                      INTEGER
     ,ManageDeptSeq                  INTEGER

 );
CREATE TABLE "_TDACust" (
       CompanySeq INTEGER
     ,CustSeq                        INTEGER
     ,CustName                        varchar(100)
     ,TrunName                        varchar(100)
     ,CustNo                          varchar(30)
     ,UMCredLevel                    INTEGER
     ,SMDomFor                       INTEGER
     ,SMCustStatus                   INTEGER
     ,FullName                        varchar(200)
     ,BizNo                           varchar(40)
     ,PersonId                        varchar(200)
     ,Owner                           varchar(60)
     ,LawRegNo                        varchar(20)
     ,BizAddr                         varchar(500)
     ,BizKind                         varchar(60)
     ,BizType                         varchar(60)
     ,TelNo                           varchar(30)
     ,FrDate                          char(8)
     ,UMCountrySeq                   INTEGER
     ,SMBizPers                      INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,BizNoRegDate                    char(8)

 );
CREATE TABLE "_TDACustBankAcc" (
       CompanySeq INTEGER
     ,CustSeq                        INTEGER
     ,CustBankAccSerl                INTEGER
     ,BankAccNo                       varchar(30)
     ,UMBankHQ                       INTEGER
     ,Owner                           varchar(100)
     ,Remark                          varchar(100)
     ,IsCfm                           char(1)
     ,IsDefault                       char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IsNotUse                        varchar(1)

 );
CREATE TABLE "_TDADept" (
       CompanySeq INTEGER
     ,DeptSeq                        INTEGER
     ,DeptName                        varchar(100)
     ,AbrDeptName                     varchar(100)
     ,EngDeptName                     varchar(100)
     ,AbrEngDeptName                  varchar(100)
     ,BegDate                         char(8)
     ,EndDate                         char(8)
     ,SMDeptType                     INTEGER
     ,SMDeptClass                    INTEGER
     ,DeptPhone                       varchar(20)
     ,DeptFax                         varchar(20)
     ,TaxUnit                        INTEGER
     ,AccUnit                        INTEGER
     ,BizUnit                        INTEGER
     ,FactUnit                       INTEGER
     ,SlipUnit                       INTEGER
     ,UMCostType                     INTEGER
     ,PJTSeq                         INTEGER
     ,DispSeq                        INTEGER
     ,Remark                          varchar(100)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TDAEmp" (
       RetireDate nchar(8)
     ,CompanySeq                     INTEGER
     ,EmpSeq                         INTEGER
     ,ResidID                         varchar(200)
     ,EmpName                         varchar(100)
     ,EmpFamilyName                   varchar(100)
     ,EmpFirstName                    varchar(100)
     ,EmpChnName                      varchar(100)
     ,EmpEngFirstName                 varchar(100)
     ,EmpEngLastName                  varchar(100)
     ,UMEmpType                      INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,Empid                           varchar(20)
     ,DeptSeq                        INTEGER
     ,WkDeptSeq                      INTEGER

 );
CREATE TABLE "_TDAEmpIn" (
       CompanySeq INTEGER
     ,EmpSeq                         INTEGER
     ,EmpID                           varchar(20)
     ,UMEmpType                      INTEGER
     ,EntDate                         char(8)
     ,RetireDate                      char(8)
     ,IsDisabled                      char(1)
     ,IsForeigner                     char(1)
     ,SMBirthType                    INTEGER
     ,BirthDate                       char(8)
     ,UMNationSeq                    INTEGER
     ,SMSexSeq                       INTEGER
     ,IsMarriage                      char(1)
     ,MarriageDate                    char(8)
     ,UMReligionSeq                  INTEGER
     ,Hobby                           varchar(200)
     ,Speciality                      varchar(200)
     ,Phone                           varchar(20)
     ,Cellphone                       varchar(20)
     ,Extension                       varchar(20)
     ,Email                           varchar(50)
     ,Remark                          varchar(1000)
     ,UMEmployType                   INTEGER
     ,WishTask1                       varchar(200)
     ,WishTask2                       varchar(200)
     ,Recommender                     varchar(200)
     ,RcmmndrCom                      varchar(200)
     ,RcmmndrRank                     varchar(200)
     ,PrevEmpSeq                     INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,Height                             INTEGER
     ,Weight                             INTEGER
     ,SMBloodType                    INTEGER
     ,UMHandiType                    INTEGER
     ,UMHandiGrd                     INTEGER
     ,HandiAppdate                    char(8)
     ,IsVeteranEmp                    char(1)
     ,VeteranNo                       varchar(50)
     ,UMRelSeq                       INTEGER
     ,IsJobEmp                        char(1)
     ,EyeLt                              INTEGER
     ,EyeRt                              INTEGER
     ,People                         INTEGER
     ,UMHouseSort                    INTEGER
     ,IsDivision                      char(1)
     ,IsDelete                        char(1)

 );
CREATE TABLE "_TDAEvid" (
       CompanySeq INTEGER
     ,EvidSeq                        INTEGER
     ,EvidName                        varchar(100)
     ,IsVATRpt                        char(1)
     ,SMEvidKind                     INTEGER
     ,SMTaxKind                      INTEGER
     ,IsAsstBuy                       char(1)
     ,IsNDVAT                         char(1)
     ,IsCard                          char(1)
     ,IsLegalBuy                      char(1)
     ,IsCommonBuy                     char(1)
     ,SMForAmtGain                   INTEGER
     ,IsBizCard                       char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IsElec                          char(1)
     ,Sort                           INTEGER
     ,IsNotUse                        char(1)
     ,IsBuyerBill                     char(1)
     ,SMCuDeductScrap                INTEGER
     ,IsNotReceive                    char(1)
     ,IsExpendEvid                    char(1)

 );
CREATE TABLE "_TDASMajor" (
       CustSeq INTEGER
     ,DevMode                        INTEGER
     ,CompanySeq                     INTEGER
     ,MajorSeq                       INTEGER
     ,MajorName                       varchar(100)
     ,Remark                          varchar(200)
     ,SysType                         char(1)
     ,FixCombo                        char(1)
     ,IsCombo                         char(1)
     ,WordSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TDASMinor" (
       CompanySeq INTEGER
     ,MinorSeq                       INTEGER
     ,MajorSeq                       INTEGER
     ,MinorName                       varchar(200)
     ,MinorValue                      varchar(50)
     ,MinorSort                      INTEGER
     ,Remark                          varchar(200)
     ,WordSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IsUse                           char(1)

 );
CREATE TABLE "_TDATaxUnit" (
       CompanySeq INTEGER
     ,TaxUnit                        INTEGER
     ,TaxNo                           varchar(50)
     ,TaxNoAlias                      varchar(50)
     ,TaxSerial                       char(4)
     ,TaxName                         varchar(100)
     ,TaxEngName                      varchar(100)
     ,Owner                           varchar(100)
     ,BizType                         varchar(50)
     ,ResidID                         varchar(200)
     ,BizItem                         varchar(50)
     ,Zip                             varchar(10)
     ,Addr1                           varchar(100)
     ,Addr2                           varchar(100)
     ,Addr3                           varchar(100)
     ,TelNo                           varchar(30)
     ,FaxNo                           varchar(30)
     ,CellPhone                       varchar(30)
     ,EMail                           varchar(100)
     ,AddrEng1                        varchar(100)
     ,AddrEng2                        varchar(100)
     ,AddrEng3                        varchar(100)
     ,VATRptAddr                      varchar(200)
     ,BizRegDate                      char(8)
     ,BizCancelDate                   char(8)
     ,IsVatRpt                        char(1)
     ,HomeTaxID                       varchar(100)
     ,TaxOffice                       varchar(100)
     ,TaxOfficeNo                     char(3)
     ,TaxBizTypeNo                    varchar(10)
     ,liquorSaleNo                    varchar(100)
     ,liquorWholeSaleNo               varchar(10)
     ,liquorRetailSaleNo              varchar(10)
     ,SMTaxationType                 INTEGER
     ,Remark                          varchar(200)
     ,SemuName                        varchar(100)
     ,SemuNo                          varchar(100)
     ,SemuTelNo                       varchar(100)
     ,SemuBankAccNo                   varchar(30)
     ,BillTaxName                     varchar(100)
     ,TaxSumPaymentNo                 varchar(20)
     ,TaxNoSerl                       varchar(20)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,CashSaleKind                    char(2)
     ,RoadAddr                        varchar(200)
     ,TelNoFor                        varchar(100)
     ,FaxNoFor                        varchar(100)

 );
CREATE TABLE "_TDATaxUnitHist" (
       CompanySeq INTEGER
     ,Serl                           INTEGER
     ,TaxUnit                        INTEGER
     ,FrDate                          char(8)
     ,ToDate                          char(8)
     ,TaxNo                           varchar(50)
     ,TaxNoAlias                      varchar(50)
     ,TaxSerial                       char(4)
     ,TaxName                         varchar(100)
     ,TaxEngName                      varchar(100)
     ,Owner                           varchar(100)
     ,ResidID                         varchar(200)
     ,BizType                         varchar(50)
     ,BizItem                         varchar(50)
     ,Zip                             varchar(10)
     ,Addr1                           varchar(100)
     ,Addr2                           varchar(100)
     ,Addr3                           varchar(100)
     ,TelNo                           varchar(30)
     ,FaxNo                           varchar(30)
     ,CellPhone                       varchar(50)
     ,EMail                           varchar(100)
     ,AddrEng1                        varchar(100)
     ,AddrEng2                        varchar(100)
     ,AddrEng3                        varchar(100)
     ,VATRptAddr                      varchar(200)
     ,BizRegDate                      char(8)
     ,BizCancelDate                   char(8)
     ,IsVatRpt                        char(1)
     ,HomeTaxID                       varchar(100)
     ,TaxOffice                       varchar(100)
     ,TaxOfficeNo                     char(3)
     ,TaxBizTypeNo                    varchar(10)
     ,liquorSaleNo                    varchar(100)
     ,liquorWholeSaleNo               varchar(10)
     ,liquorRetailSaleNo              varchar(10)
     ,SMTaxationType                 INTEGER
     ,Remark                          varchar(200)
     ,SemuName                        varchar(100)
     ,SemuNo                          varchar(100)
     ,SemuTelNo                       varchar(100)
     ,SemuBankAccNo                   varchar(30)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,CashSaleKind                    char(2)
     ,BillTaxName                     varchar(200)
     ,TaxSumPaymentNo                 varchar(40)
     ,TaxNoSerl                       char(100)
     ,RoadAddr                        varchar(200)
     ,TelNoFor                        varchar(100)
     ,FaxNoFor                        varchar(100)

 );
CREATE TABLE "_TDAUMajor" (
       CustSeq INTEGER
     ,DevMode                        INTEGER
     ,CompanySeq                     INTEGER
     ,MajorSeq                       INTEGER
     ,MajorName                       varchar(100)
     ,MajorSort                      INTEGER
     ,SMInputMethod                  INTEGER
     ,Remark                          varchar(200)
     ,WordSeq                        INTEGER
     ,FixCombo                        char(1)
     ,IsCombo                         char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,AddCheckScript                  varchar(50)
     ,AddSaveScript                   varchar(50)

 );
CREATE TABLE "_TDAUMinor" (
       CompanySeq INTEGER
     ,MinorSeq                       INTEGER
     ,MajorSeq                       INTEGER
     ,MinorName                       varchar(200)
     ,MinorSort                      INTEGER
     ,Remark                          varchar(200)
     ,WordSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IsUse                           char(1)

 );
CREATE TABLE "_THRAdmOrd" (
       CompanySeq INTEGER
     ,OrdSeq                         INTEGER
     ,OrdName                         varchar(100)
     ,UMWsSeq                        INTEGER
     ,UMOrdTypeSeq                   INTEGER
     ,SMOrdAppSeq                    INTEGER
     ,IsPaid                          char(1)
     ,IsExAvgPay                      char(1)
     ,IsExWkTerm                      char(1)
     ,DispSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IsChild                         char(1)

 );
CREATE TABLE "_THRAdmOrdEmp" (
       CompanySeq INTEGER
     ,EmpSeq                         INTEGER
     ,IntSeq                         INTEGER
     ,OrdSeq                         INTEGER
     ,OrdDate                         char(8)
     ,OrdEndDate                      char(8)
     ,PuSeq                          INTEGER
     ,DeptSeq                        INTEGER
     ,WkDeptSeq                      INTEGER
     ,PosSeq                         INTEGER
     ,UMPgSeq                        INTEGER
     ,Ps                              char(3)
     ,UMJpSeq                        INTEGER
     ,UMJdSeq                        INTEGER
     ,UMJoSeq                        INTEGER
     ,JobSeq                         INTEGER
     ,PtSeq                          INTEGER
     ,UMWsSeq                        INTEGER
     ,IsBoss                          char(1)
     ,Contents                        varchar(500)
     ,Remark                          varchar(200)
     ,IsOrdDateLast                   char(1)
     ,IsLast                          char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IsWkOrd                         char(1)

 );
CREATE TABLE "_THRAdmWkOrdEmp" (
       CompanySeq INTEGER
     ,EmpSeq                         INTEGER
     ,WkIntSeq                       INTEGER
     ,OrdSeq                         INTEGER
     ,OrdDate                         char(8)
     ,OrdEndDate                      char(8)
     ,OrdDeptSeq                     INTEGER
     ,PosSeq                         INTEGER
     ,UMJdSeq                        INTEGER
     ,IsBoss                         INTEGER
     ,Contents                        varchar(500)
     ,Remark                          varchar(200)
     ,IntSeq                         INTEGER
     ,IsRet                           char(1)
     ,SMSourceType                   INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_THRBasLicense" (
       CompanySeq INTEGER
     ,EmpSeq                         INTEGER
     ,LicenseSeq                     INTEGER
     ,UMLicSeq                       INTEGER
     ,IssueInst                       varchar(100)
     ,LicNo                           varchar(500)
     ,AcqDate                         char(8)
     ,ValDate                         char(8)
     ,IsAllowPay                      char(1)
     ,IsLaw                           char(1)
     ,Rem                             varchar(200)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_THRBasPrzPnl" (
       CompanySeq INTEGER
     ,EmpSeq                         INTEGER
     ,PrzPnlSeq                      INTEGER
     ,SMPrzPnlType                   INTEGER
     ,PrzPnlFrDate                    char(8)
     ,PrzPnlToDate                    char(8)
     ,SMInOutType                    INTEGER
     ,UMPrzPnlSeq                    INTEGER
     ,PrzPnlReason                    varchar(200)
     ,PrzPnlInst                      varchar(50)
     ,IsAllowDeduc                    char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_THRBaslinguistic" (
       CompanySeq INTEGER
     ,EmpSeq                         INTEGER
     ,linguisticSeq                  INTEGER
     ,UMLanguageType                 INTEGER
     ,UMAuthType                     INTEGER
     ,Score                              INTEGER
     ,UMGrade                        INTEGER
     ,BegDate                         char(8)
     ,EndDate                         char(8)
     ,IsAllowPay                      char(1)
     ,Remark                          varchar(200)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,CharScore                       varchar(10)

 );
CREATE TABLE "_THREvalGrd" (
       CompanySeq INTEGER
     ,GrdType                        INTEGER
     ,GrdSeq                         INTEGER
     ,GrdName                         varchar(100)
     ,GrdScore                           INTEGER
     ,BegValue                           INTEGER
     ,EndValue                           INTEGER
     ,Sort                           INTEGER
     ,Rem                             varchar(200)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,Descript                        varchar(200)

 );
CREATE TABLE "_THREvalMBORst" (
       CompanySeq INTEGER
     ,EvalYyRev                       char(6)
     ,SMEvalSeq                      INTEGER
     ,EmpSeq                         INTEGER
     ,EvalEmpSeq                     INTEGER
     ,SMEvalStepSeq                  INTEGER
     ,Rank                           INTEGER
     ,TotScore                           INTEGER
     ,AdjScore                           INTEGER
     ,Rem                             varchar(500)
     ,IsEnd                           char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,TotGrdSeq                      INTEGER
     ,AdjGrdSeq                      INTEGER
     ,FileSeq                        INTEGER

 );
CREATE TABLE "_THREvalMSideRst" (
       CompanySeq INTEGER
     ,EvalYyRev                       char(6)
     ,SMEvalSeq                      INTEGER
     ,EmpSeq                         INTEGER
     ,EvalEmpSeq                     INTEGER
     ,SMEvalStepSeq                  INTEGER
     ,Rank                           INTEGER
     ,TotScore                           INTEGER
     ,AdjScore                           INTEGER
     ,Rem                             varchar(500)
     ,IsEnd                           char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,TotGrdSeq                      INTEGER
     ,AdjGrdSeq                      INTEGER
     ,SMExecptSeq                    INTEGER

 );
CREATE TABLE "_THREvalStepRst" (
       CompanySeq INTEGER
     ,EvalYyRev                       char(6)
     ,SMEvalSeq                      INTEGER
     ,EvalEmpSeq                     INTEGER
     ,EmpSeq                         INTEGER
     ,SMEvalStepSeq                  INTEGER
     ,Rank                           INTEGER
     ,TotScore                           INTEGER
     ,AdjScore                           INTEGER
     ,Rem                             varchar(500)
     ,IsEnd                           char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,TotGrdSeq                      INTEGER
     ,AdjGrdSeq                      INTEGER

 );
CREATE TABLE "_THREvalTotYyEmpScore" (
       CompanySeq INTEGER
     ,EvalYy                          char(4)
     ,EmpSeq                         INTEGER
     ,SMEvalSeq                      INTEGER
     ,Ratio                              INTEGER
     ,TotScore                           INTEGER
     ,FinalScore                         INTEGER
     ,AdjScore                           INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_THROrgDeptLast" (
       CompanySeq INTEGER
     ,OrgType                        INTEGER
     ,DeptSeq                        INTEGER
     ,UppDeptSeq                     INTEGER
     ,BegDate                         char(8)
     ,EndDate                         char(8)
     ,UMDeptLevel                    INTEGER
     ,DispSeq                        INTEGER
     ,OrgCd                           varchar(50)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_THRWelSchEmp" (
       CompanySeq INTEGER
     ,EmpSeq                         INTEGER
     ,Seq                            INTEGER
     ,SchSeq                         INTEGER
     ,FamilySeq                      INTEGER
     ,ChildResidID                    varchar(200)
     ,AppDate                         char(8)
     ,Yy                              char(4)
     ,PaySortSeq                     INTEGER
     ,SchoolName                      varchar(200)
     ,MajorName                       varchar(200)
     ,SchoolGrade                    INTEGER
     ,SchoolScore                        INTEGER
     ,AppAmt                             INTEGER
     ,PayRate                            INTEGER
     ,PayAmt                             INTEGER
     ,Scholarship                        INTEGER
     ,PayDate                         char(8)
     ,PbYm                            char(6)
     ,PbSeq                          INTEGER
     ,AppSeq                         INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEAcCause" (
       CompanySeq INTEGER
     ,CauseSeq                       INTEGER
     ,BizUnit                        INTEGER
     ,AccYY                           char(4)
     ,CauseDate                       char(8)
     ,DeptSeq                        INTEGER
     ,BgtDeptSeq                     INTEGER
     ,EmpSeq                         INTEGER
     ,SMExpKind                      INTEGER
     ,DetlBizSeq                     INTEGER
     ,SMExpType                      INTEGER
     ,CauseName                       varchar(1000)
     ,CauseRsn                        varchar(1000)
     ,DraftSeq                       INTEGER
     ,OrgDraftSeq                    INTEGER
     ,OrgCauseSeq                    INTEGER
     ,IsNew                           char(1)
     ,BizBgtAmt                          INTEGER
     ,BizBgtExcAmt                       INTEGER
     ,BizBgtAsgnAmt                      INTEGER
     ,BizBgtAsgnExcAmt                   INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,BizBgtReduceAmt                    INTEGER
     ,IsConfirm                      char(1)
     ,BatchYN                         char(1)
     ,CauseNo                         varchar(20)
     ,AccUnit                        INTEGER

 );
CREATE TABLE "_TPEAcCauseItem" (
       CompanySeq INTEGER
     ,CauseSeq                       INTEGER
     ,Serl                           INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtItemAmt                         INTEGER
     ,BgtItemExcAmt                      INTEGER
     ,BgtItemAsgnAmt                     INTEGER
     ,BgtItemAsgnExcAmt                  INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,BgtClassAmt                        INTEGER
     ,BgtClassExcAmt                     INTEGER
     ,BgtClassAsgnAmt                    INTEGER
     ,BgtClassAsgnExcAmt                 INTEGER
     ,CauseItemName                   varchar(200)
     ,CauseAmt                           INTEGER
     ,Remark                          varchar(1000)
     ,AccSeq                         INTEGER
     ,CustSeq                        INTEGER
     ,IsBigCust                       char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,BgtItemReduceAmt                   INTEGER
     ,BgtClassReduceAmt                  INTEGER
     ,DetlBizSeq                     INTEGER
     ,BizBgtAmt                          INTEGER
     ,BizBgtExcAmt                       INTEGER
     ,BizBgtAsgnAmt                      INTEGER
     ,BizBgtAsgnExcAmt                   INTEGER
     ,BizBgtReduceAmt                    INTEGER
     ,DraftSerl                      INTEGER
     ,BizUnit                        INTEGER
     ,BgtDeptSeq                     INTEGER
     ,SourceDiv                      INTEGER
     ,SourceSeq                       varchar(1000)

 );
CREATE TABLE "_TPEAcContract" (
       CompanySeq INTEGER
     ,ContractSeq                    INTEGER
     ,ContractYY                      char(4)
     ,BizUnit                        INTEGER
     ,ContractNo                      varchar(50)
     ,ContractName                    varchar(100)
     ,SMContractKind                 INTEGER
     ,UMContractType                 INTEGER
     ,UMContractMeth                 INTEGER
     ,UMContractMethSub              INTEGER
     ,ContractDrDate                  char(8)
     ,ContractDate                    char(8)
     ,ContractInspDate                char(8)
     ,ContractPlanDate                char(8)
     ,BizDeptSeq                     INTEGER
     ,BizEmpSeq                      INTEGER
     ,ContractEmpSeq                 INTEGER
     ,InspEmpSeq                     INTEGER
     ,DraftSeq                       INTEGER
     ,CauseSeq                       INTEGER
     ,ContractFirstAmt                   INTEGER
     ,ContractSummary                 varchar(1000)
     ,BizStartDate                    char(8)
     ,ContractExpireDate              char(8)
     ,DVPlace                         varchar(100)
     ,Law                             varchar(200)
     ,UMItemGroup                    INTEGER
     ,CustSeq                        INTEGER
     ,ERCustSeq                      INTEGER
     ,InspCustSeq                    INTEGER
     ,WarrentyPeriod                  varchar(20)
     ,DelayRate                          INTEGER
     ,ContractPoint                   varchar(1000)
     ,AttachData                      varchar(1000)
     ,AttachData2                     varchar(1000)
     ,ContractPeriodDate              char(8)
     ,IsChecked                       char(1)
     ,AcEmpSeq                       INTEGER
     ,IsVAT                           char(1)
     ,InsectionNo                     varchar(50)
     ,InsectionRemark                 varchar(500)
     ,BuyReqNo                        varchar(100)
     ,RegGubun                       INTEGER
     ,WorkRemark                      varchar(1000)
     ,OutRemark                       varchar(1000)
     ,POReqNo                         varchar(100)
     ,IsCoContract                    char(1)
     ,BiddingSeq                     INTEGER
     ,BiddingSerl                    INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEAcCurrDayAmt" (
       CompanySeq INTEGER
     ,AccYY                           char(4)
     ,SMBgtCurrType                  INTEGER
     ,PayDate                         char(8)
     ,BizUnit                        INTEGER
     ,AccDeptSeq                     INTEGER
     ,BgtDeptSeq                     INTEGER
     ,DetlBizSeq                     INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,SMExpKind                      INTEGER
     ,CurrAmt                            INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEAcDetlBizBankAcc" (
       CompanySeq INTEGER
     ,BankAccSeq                     INTEGER
     ,AccYY                           char(4)
     ,DetlBizSeq                     INTEGER
     ,BankAccType                    INTEGER
     ,InOutType                      INTEGER
     ,IsFundAcc                       char(1)
     ,IsDelegateAcc                   char(1)
     ,DeptSeq                        INTEGER
     ,IsRepresentAcc                  char(1)
     ,SMExpKind                      INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEAcIncoming" (
       CompanySeq INTEGER
     ,IncomingSeq                    INTEGER
     ,BizUnit                        INTEGER
     ,AccYY                           char(4)
     ,IncomingDate                    char(8)
     ,DeptSeq                        INTEGER
     ,BgtDeptSeq                     INTEGER
     ,EmpSeq                         INTEGER
     ,DetlBizSeq                     INTEGER
     ,UMIncomingKind                 INTEGER
     ,IncomingName                    varchar(1000)
     ,IncomingRsn                     varchar(1000)
     ,IncomingNo                      varchar(20)
     ,AccUnit                        INTEGER
     ,SourceDiv                      INTEGER
     ,SourceSeq                      INTEGER
     ,AttachData                      varchar(1000)
     ,SMExpKind                      INTEGER
     ,AccDate                         char(8)
     ,SMBgtKind                      INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEAcIncomingItem" (
       CompanySeq INTEGER
     ,IncomingSeq                    INTEGER
     ,Serl                           INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,IncomingAmt                        INTEGER
     ,CurAmt                             INTEGER
     ,CurVat                             INTEGER
     ,CustSeq                        INTEGER
     ,EvidSeq                        INTEGER
     ,AccSeq                         INTEGER
     ,OppAccSeq                      INTEGER
     ,VatAccSeq                      INTEGER
     ,BankSeq                        INTEGER
     ,BankAccSeq                     INTEGER
     ,Remark                          varchar(1000)
     ,SlipSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IncomingItemName                varchar(1000)
     ,TaxDate                         char(8)
     ,IncomingWay                    INTEGER
     ,DetlBizSeq                     INTEGER
     ,IsRepay                         char(1)
     ,SourceDiv                      INTEGER
     ,SourceSeq                       varchar(1000)
     ,BillSeq                        INTEGER
     ,BillSerl                       INTEGER
     ,CustBankInfo                    varchar(1000)
     ,SMVatType                      INTEGER
     ,Remark2                         varchar(1000)
     ,UseDeptSeq                     INTEGER
     ,UseEmpSeq                      INTEGER

 );
CREATE TABLE "_TPEAcMonthClose" (
       CompanySeq INTEGER
     ,AccYY                           char(4)
     ,SMBgtCurrType                  INTEGER
     ,PayYM                           char(6)
     ,IsClose                         char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEAcOutgoing" (
       CompanySeq INTEGER
     ,OutgoingSeq                    INTEGER
     ,BizUnit                        INTEGER
     ,AccYY                           char(4)
     ,OutgoingDate                    char(8)
     ,DeptSeq                        INTEGER
     ,BgtDeptSeq                     INTEGER
     ,EmpSeq                         INTEGER
     ,SMExpKind                      INTEGER
     ,DetlBizSeq                     INTEGER
     ,SMExpType                      INTEGER
     ,OutgoingName                    varchar(1000)
     ,OutgoingRsn                     varchar(1000)
     ,CauseSeq                       INTEGER
     ,BatchYN                         char(1)
     ,OutgoingNo                      varchar(20)
     ,AttachData                      varchar(1000)
     ,IsConfirm                       varchar(1000)
     ,AccUnit                        INTEGER
     ,SourceDiv                      INTEGER
     ,SourceSeq                      INTEGER
     ,AccDate                         char(8)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEAcOutgoingItem" (
       CompanySeq INTEGER
     ,OutgoingSeq                    INTEGER
     ,Serl                           INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,SetAmt                             INTEGER
     ,PayAmt                             INTEGER
     ,CurAmt                             INTEGER
     ,CurVat                             INTEGER
     ,ChargeAmt                          INTEGER
     ,EvidSeq                        INTEGER
     ,TaxDate                         char(8)
     ,NDVATAmt                           INTEGER
     ,AccSeq                         INTEGER
     ,CustSeq                        INTEGER
     ,IsBigCust                       char(1)
     ,CustBankInfo                    varchar(1000)
     ,BankSeq                        INTEGER
     ,OppAccSeq                      INTEGER
     ,VatAccSeq                      INTEGER
     ,ChargeAccSeq                   INTEGER
     ,IsUsePay                        char(1)
     ,BankAccSeq                     INTEGER
     ,CardSeq                        INTEGER
     ,Remark                          varchar(1000)
     ,SlipSeq                        INTEGER
     ,OnSlipSeq                      INTEGER
     ,PayOppAccSeq                   INTEGER
     ,PayBankSeq                     INTEGER
     ,PayBankAccSeq                  INTEGER
     ,PayCardSeq                     INTEGER
     ,PayRemark                       varchar(1000)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,PayDate                         char(8)
     ,PaymentWay                      varchar(1000)
     ,DetlBizSeq                     INTEGER
     ,CauseSerl                      INTEGER
     ,CustText                        varchar(1000)
     ,UMCostType                     INTEGER
     ,SourceDiv                      INTEGER
     ,SourceSeq                       varchar(1000)
     ,IsFundAssign                    char(1)
     ,EmpSeq                         INTEGER
     ,ExpectedPayDate                 char(8)
     ,TaxAmt                             INTEGER
     ,BizUnit                        INTEGER
     ,BgtDeptSeq                     INTEGER
     ,SMVatType                      INTEGER
     ,NDVATSeq                       INTEGER
     ,PaymentNo                       varchar(50)
     ,SpeciExpensUser                 varchar(1000)
     ,VatCustSeq                     INTEGER
     ,BizNoText                       char(50)
     ,SourceDetlBizSeq               INTEGER
     ,EvidFileSeq                    INTEGER
     ,EvidFileName                    varchar(200)
     ,BizExpSeq                      INTEGER
     ,UMSBgtItemSeq                  INTEGER

 );
CREATE TABLE "_TPEBasAttachDept" (
       CompanySeq INTEGER
     ,AccYY                           char(4)
     ,BgtDeptSeq                     INTEGER
     ,AttachDeptSeq                  INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEBasBgtDept" (
       CompanySeq INTEGER
     ,AccYY                           char(4)
     ,BgtDeptSeq                     INTEGER
     ,DispSort                       INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEBgtCfm" (
       CompanySeq INTEGER
     ,AccYY                           char(4)
     ,SMBgtType                      INTEGER
     ,CompileDeg                     INTEGER
     ,CompileDesc                     varchar(200)
     ,ApplyDate                       char(8)
     ,IsCfm                           char(1)
     ,Remark                          varchar(100)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,PreAppIsCfm                     char(1)
     ,PreDemdDeg                     INTEGER

 );
CREATE TABLE "_TPEBgtChgBulk" (
       CompanySeq INTEGER
     ,ChgBulkSeq                     INTEGER
     ,AccYY                           char(4)
     ,SMExpKind                      INTEGER
     ,ChgBulkDate                     char(8)
     ,ChgBulkDesc                     varchar(100)
     ,IsCfm                           char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEBgtChgBulkItem" (
       CompanySeq INTEGER
     ,ChgBulkSeq                     INTEGER
     ,Serl                           INTEGER
     ,UMObjType                      INTEGER
     ,BizUnit                        INTEGER
     ,AccDeptSeq                     INTEGER
     ,BgtDeptSeq                     INTEGER
     ,DetlBizSeq                     INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,BgtAmt                             INTEGER
     ,ExcAmt                             INTEGER
     ,ChgAmt                             INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEBgtCompile" (
       CompanySeq INTEGER
     ,DemdSeq                        INTEGER
     ,AccYY                           char(4)
     ,SMBgtType                      INTEGER
     ,SMBgtCate                      INTEGER
     ,CompileDeg                     INTEGER
     ,DemdDeg                        INTEGER
     ,BizUnit                        INTEGER
     ,AccDeptSeq                     INTEGER
     ,BgtDeptSeq                     INTEGER
     ,DetlBizSeq                     INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,AppPgmSeq                      INTEGER
     ,SourceSeq                      INTEGER

 );
CREATE TABLE "_TPEBgtCurrAmt" (
       CompanySeq INTEGER
     ,AccYY                           char(4)
     ,SMBgtCurrType                  INTEGER
     ,BgtDate                         char(8)
     ,BizUnit                        INTEGER
     ,AccDeptSeq                     INTEGER
     ,BgtDeptSeq                     INTEGER
     ,DetlBizSeq                     INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,SMExpKind                      INTEGER
     ,CurrAmt                            INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,CompileDeg                     INTEGER

 );
CREATE TABLE "_TPEBgtDetlBiz" (
       CompanySeq INTEGER
     ,DetlBizSeq                     INTEGER
     ,AccYY                           char(4)
     ,PolicyBizSeq                   INTEGER
     ,UnitBizSeq                     INTEGER
     ,DetlBizNo                       varchar(50)
     ,DetlBizName                     varchar(200)
     ,DeptSeq                        INTEGER
     ,UMDriveType                    INTEGER
     ,SMDetlUnBiz                    INTEGER
     ,UMAccKind                      INTEGER
     ,UMBizKind                      INTEGER
     ,BizAmt                             INTEGER
     ,TotalAmt                           INTEGER
     ,SMBizMethod                    INTEGER
     ,SMBizType                      INTEGER
     ,UMSupportType                  INTEGER
     ,BizBegDate                      char(8)
     ,BizEndDate                      char(8)
     ,IsConsign                       char(1)
     ,BizAim                          varchar(1000)
     ,BizSize                         varchar(1000)
     ,BizCont                         varchar(1000)
     ,SupportCont                     varchar(1000)
     ,DriveGrounds                    varchar(1000)
     ,EnforceSubject                  varchar(1000)
     ,SMWorkingStatus                INTEGER
     ,DispSort                       INTEGER
     ,ReqEmpSeq                      INTEGER
     ,ReqDate                         varchar(8)
     ,SetEmpSeq                      INTEGER
     ,SetDate                         varchar(8)
     ,CCtrSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,BgtInComing                     char(1)
     ,BgtOutComing                    char(1)
     ,FileSeq                        INTEGER
     ,IsFundAssign                    char(1)
     ,AccUnit                        INTEGER
     ,IsEnd                           char(1)
     ,IsEndEmpSeq                    INTEGER
     ,BgtCurrYN                       char(1)
     ,DetlAgencyCode                  varchar(30)
     ,SubjSeq                        INTEGER

 );
CREATE TABLE "_TPEBgtDetlBizCardAcc" (
       CompanySeq INTEGER
     ,CardSeq                        INTEGER
     ,AccYY                           char(4)
     ,DetlBizSeq                     INTEGER
     ,DeptSeq                        INTEGER
     ,IsCommon                        char(1)
     ,BgtDeptSeq                     INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEBgtDetlBizEmp" (
       CompanySeq INTEGER
     ,DetlBizSeq                     INTEGER
     ,AccYY                           char(4)
     ,Serl                           INTEGER
     ,UMMgtType                      INTEGER
     ,EmpSeq                         INTEGER
     ,BegDate                         char(8)
     ,Remark                          varchar(100)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEBgtForwd" (
       CompanySeq INTEGER
     ,AccYY                           char(4)
     ,BizUnit                        INTEGER
     ,AccDeptSeq                     INTEGER
     ,BgtDeptSeq                     INTEGER
     ,DetlBizSeq                     INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,SMForwdType                    INTEGER
     ,ForwdDesc                       varchar(100)
     ,ForwdAmt                           INTEGER
     ,IsCfm                           char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEBgtInCurrAmt" (
       CompanySeq INTEGER
     ,AccYY                           char(4)
     ,SMBgtCurrType                  INTEGER
     ,BgtDate                         char(8)
     ,BizUnit                        INTEGER
     ,AccDeptSeq                     INTEGER
     ,BgtDeptSeq                     INTEGER
     ,DetlBizSeq                     INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,SMExpKind                      INTEGER
     ,CurrAmt                            INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,CompileDeg                     INTEGER

 );
CREATE TABLE "_TPEBgtMultiBgtItem" (
       CompanySeq INTEGER
     ,MultiConnSeq                   INTEGER
     ,ConnBgtItemSeq                 INTEGER
     ,ConnAccSeq                     INTEGER
     ,AccYY                           char(4)
     ,SMAccConStd                    INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEBgtNonControl" (
       CompanySeq INTEGER
     ,NonControlSeq                  INTEGER
     ,SMInOut                        INTEGER
     ,AccYY                           char(4)
     ,BgtDate                         char(8)
     ,BizUnit                        INTEGER
     ,AccDeptSeq                     INTEGER
     ,BgtDeptSeq                     INTEGER
     ,DetlBizSeq                     INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,IsCfm                           char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPEBgtPolicyBiz" (
       CompanySeq INTEGER
     ,PolicyBizSeq                   INTEGER
     ,AccYY                           char(4)
     ,PolicyBizNo                     varchar(50)
     ,PolicyBizName                   varchar(200)
     ,UMFieldType                    INTEGER
     ,UMSectorType                   INTEGER
     ,SMUnBizType                    INTEGER
     ,BizAim                          varchar(1000)
     ,Effect                          varchar(1000)
     ,DispSort                       INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,PolicyAgencyCode                varchar(30)

 );
CREATE TABLE "_TPEBgtUnitBiz" (
       CompanySeq INTEGER
     ,UnitBizSeq                     INTEGER
     ,AccYY                           char(4)
     ,PolicyBizSeq                   INTEGER
     ,UnitBizNo                       varchar(50)
     ,UnitBizName                     varchar(200)
     ,DeptSeq                        INTEGER
     ,UMDriveType                    INTEGER
     ,SMUnitUnBiz                    INTEGER
     ,BizAim                          varchar(1000)
     ,BizScale                        varchar(1000)
     ,BizCont                         varchar(1000)
     ,DriveGrounds                    varchar(1000)
     ,SMWorkingStatus                INTEGER
     ,DispSort                       INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,UnitAgencyCode                  varchar(30)

 );
CREATE TABLE "_TPEEstblsdBgtCompile" (
       CompanySeq INTEGER
     ,EstablishedSeq                 INTEGER
     ,SourceSeq                      INTEGER
     ,AccYY                           char(4)
     ,SMBgtType                      INTEGER
     ,SMBgtCate                      INTEGER
     ,CompileDeg                     INTEGER
     ,DemdDeg                        INTEGER
     ,BizUnit                        INTEGER
     ,AccDeptSeq                     INTEGER
     ,BgtDeptSeq                     INTEGER
     ,DetlBizSeq                     INTEGER
     ,BgtItemSeq                     INTEGER
     ,BgtClassSeq                    INTEGER
     ,BgtClassName                    varchar(200)
     ,AppPgmSeq                      INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,BaseSourceSeq                  INTEGER

 );
CREATE TABLE "_TPEEstblsdBgtCompileItem" (
       CompanySeq INTEGER
     ,EstablishedSeq                 INTEGER
     ,EstablishedSerl                INTEGER
     ,SourceSeq                      INTEGER
     ,SourceSerl                     INTEGER
     ,DemdNo                         INTEGER
     ,HigDemdNo                      INTEGER
     ,AdiDispSort                    INTEGER
     ,UMAdjCompType                  INTEGER
     ,AdjCompGround                   varchar(100)
     ,AdjCompFormular                 varchar(100)
     ,AdjAmt                             INTEGER
     ,IsAdjAmtReg                     char(1)
     ,IsNewAddAdj                     char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,SMBgtType                      INTEGER
     ,CompileDeg                     INTEGER
     ,DemdDeg                        INTEGER

 );
CREATE TABLE "_TPRAdjIncomeEtc" (
       CompanySeq INTEGER
     ,Serl                           INTEGER
     ,TaxUnit                        INTEGER
     ,InhabitantsBizSeq              INTEGER
     ,YM                              char(6)
     ,CustSeq                        INTEGER
     ,SMDomForSeq                    INTEGER
     ,SMResidenceSeq                 INTEGER
     ,UMNationalSeq                  INTEGER
     ,SMIncomeDivSeq                 INTEGER
     ,PayDate                         char(8)
     ,WithholdDate                    char(8)
     ,Amt                                INTEGER
     ,ExpnsAmt                           INTEGER
     ,InComeAmt                          INTEGER
     ,TaxRate                            INTEGER
     ,IncomeTax                          INTEGER
     ,InhabitantsTax                     INTEGER
     ,CorpTax                            INTEGER
     ,FarmTax                            INTEGER
     ,Remark                          varchar(100)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,CustName                        varchar(100)
     ,BizNo                           varchar(40)
     ,Owner                           varchar(60)
     ,Personid                        varchar(200)
     ,BizAddr                         varchar(280)
     ,TelNo                           varchar(40)
     ,SMBizPers                      INTEGER
     ,LawRegNo                        varchar(20)
     ,SMInputType                    INTEGER
     ,AccUnit                        INTEGER
     ,BankInAmt                          INTEGER
     ,SlipSeq                        INTEGER
     ,UMCostType                     INTEGER
     ,CostDeptSeq                    INTEGER
     ,CostCCtrSeq                    INTEGER
     ,LinkTableName                   varchar(200)
     ,LinkSeq                        INTEGER
     ,UMAccGrpSeq                    INTEGER
     ,ReducTaxCause                   varchar(400)
     ,ProgFromTableSeq               INTEGER
     ,ProgFromSeq                    INTEGER
     ,ProgFromSerl                   INTEGER
     ,ProgFromSubSerl                INTEGER
     ,InvestNo                        varchar(50)
     ,BankAccNo                       varchar(200)
     ,UMBankHQ                       INTEGER
     ,AccOwner                        varchar(100)

 );
CREATE TABLE "_TPRAdjWithHoldRep" (
       CompanySeq INTEGER
     ,BizSeq                         INTEGER
     ,RevertYM                        char(6)
     ,PayYM                           char(6)
     ,ReportYM                        char(6)
     ,SMReturnType                   INTEGER
     ,IsAdj                           char(1)
     ,IsLump                          char(1)
     ,AdjYY                           char(4)
     ,OldTaxRebateAmt                    INTEGER
     ,OldReqTaxRebateAmt                 INTEGER
     ,OldBalanceAmt                      INTEGER
     ,TaxRebateAmt                       INTEGER
     ,TrustRebateAmt                     INTEGER
     ,EtcRebateAmt                       INTEGER
     ,SettledAmt                         INTEGER
     ,SettledTotAmt                      INTEGER
     ,ForwardAmt                         INTEGER
     ,ReportDate                      char(8)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,EtcMergeRebateAmt                  INTEGER
     ,IsBizUnitTax                    char(1)
     ,IsEnd                           char(1)
     ,ReportDiv                      INTEGER

 );
CREATE TABLE "_TPRAdjWithHoldRepDtl" (
       CompanySeq INTEGER
     ,BizSeq                         INTEGER
     ,RevertYM                        char(6)
     ,PayYM                           char(6)
     ,ReportYM                        char(6)
     ,SMHoldRepItemSeq               INTEGER
     ,Cnt                            INTEGER
     ,Amt                                INTEGER
     ,LevyIncomeTax                      INTEGER
     ,LevyFarmTax                        INTEGER
     ,LevyPenaltyTax                     INTEGER
     ,RebateTax                          INTEGER
     ,PaymentIncomeTax                   INTEGER
     ,PaymentFarmTax                     INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRAdjWithHoldRepItem" (
       CompanySeq INTEGER
     ,BizSeq                         INTEGER
     ,RevertYM                        char(6)
     ,PayYM                           char(6)
     ,ReportYM                        char(6)
     ,SMHoldRepItemSeq               INTEGER
     ,Cnt                            INTEGER
     ,Amt                                INTEGER
     ,LevyIncomeTax                      INTEGER
     ,LevyFarmTax                        INTEGER
     ,LevyPenaltyTax                     INTEGER
     ,RebateTax                          INTEGER
     ,PaymentIncomeTax                   INTEGER
     ,PaymentFarmTax                     INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRBasCompositItem" (
       CompanySeq INTEGER
     ,YM                              char(6)
     ,SMCompositSeq                  INTEGER
     ,ItemSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRBasDateBase" (
       CompanySeq INTEGER
     ,PuSeq                          INTEGER
     ,PbSeq                          INTEGER
     ,SMBelongMmSeq                  INTEGER
     ,SMPayMmSeq                     INTEGER
     ,PayDdCnt                       INTEGER
     ,SMBegMmSeq                     INTEGER
     ,BegDdCnt                       INTEGER
     ,SMEndMmSeq                     INTEGER
     ,EndDdCnt                       INTEGER
     ,SMRepMmSeq                     INTEGER
     ,SMBaseMmSeq                    INTEGER
     ,IsWk                            char(1)
     ,SMWkBegMmSeq                   INTEGER
     ,WkBegDdCnt                     INTEGER
     ,SMWkEndMmSeq                   INTEGER
     ,WkEndDdCnt                     INTEGER
     ,IsExPrb                         char(1)
     ,SMBnsType                      INTEGER
     ,SMObjRange                     INTEGER
     ,SMTaxBegMmSeq                  INTEGER
     ,SMTaxEndMmSeq                  INTEGER
     ,IsBnsLastOrd                    char(1)
     ,SMLastOrdEntSeq                INTEGER
     ,SMLastOrdRetSeq                INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,TaxApplyRate                       INTEGER

 );
CREATE TABLE "_TPRBasEmpAmt" (
       CompanySeq INTEGER
     ,EmpSeq                         INTEGER
     ,PbSeq                          INTEGER
     ,ItemSeq                        INTEGER
     ,Seq                            INTEGER
     ,BegDate                         char(8)
     ,EndDate                         char(8)
     ,Amt                                INTEGER
     ,Remark                          varchar(500)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,LinkTableName                   varchar(200)
     ,LinkSeq                        INTEGER
     ,PgmSeq                         INTEGER

 );
CREATE TABLE "_TPRBasGrpAmt" (
       CompanySeq INTEGER
     ,YM                              char(6)
     ,SMAppType                      INTEGER
     ,ItemSeq                        INTEGER
     ,PayGrpSeq                      INTEGER
     ,GrpSeq                         INTEGER
     ,Amt                                INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRBasPayItem" (
       CompanySeq INTEGER
     ,ItemSeq                        INTEGER
     ,ItemName                        varchar(100)
     ,UMTaxExemptType                INTEGER
     ,SMIsAorD                       INTEGER
     ,SMItemType                     INTEGER
     ,SMUnitType                     INTEGER
     ,SMUnitLoc                      INTEGER
     ,IsPrevAllow                     char(1)
     ,IsAllowBns                      char(1)
     ,IsCompanyCost                   char(1)
     ,IsObjChk                        char(1)
     ,IsSystem                        char(1)
     ,DispSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,Remark                          varchar(200)

 );
CREATE TABLE "_TPRBasPayMthByYm" (
       CompanySeq INTEGER
     ,ItemSeq                        INTEGER
     ,Seq                            INTEGER
     ,BegYM                           char(6)
     ,EndYM                           char(6)
     ,SMPayMth                       INTEGER
     ,SMGrpSortSeq                   INTEGER
     ,IsPrevRetro                     char(1)
     ,SMApplyMth                     INTEGER
     ,SMAmtApplyMth                  INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRBasPb" (
       CompanySeq INTEGER
     ,PbSeq                          INTEGER
     ,PbName                          varchar(100)
     ,SMPbType                       INTEGER
     ,IsPayTax                        char(1)
     ,PrtItemSeq                     INTEGER
     ,UMAccNoType                    INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,DispSeq                        INTEGER

 );
CREATE TABLE "_TPRBasPt" (
       CompanySeq INTEGER
     ,PtSeq                          INTEGER
     ,PtName                          varchar(100)
     ,SMPtType                       INTEGER
     ,SMBasDsTmPayMth                INTEGER
     ,SMGrpSortSeq                   INTEGER
     ,FullDays                       INTEGER
     ,Remark                          varchar(500)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,DispSeq                        INTEGER

 );
CREATE TABLE "_TPRBasPu" (
       CompanySeq INTEGER
     ,PuSeq                          INTEGER
     ,PuName                          varchar(100)
     ,DispSeq                        INTEGER

 );
CREATE TABLE "_TPRPayDateDtl" (
       CompanySeq INTEGER
     ,PuSeq                          INTEGER
     ,PbYM                            char(6)
     ,SerialNo                       INTEGER
     ,PbSeq                          INTEGER
     ,BelongYM                        char(6)
     ,PayYM                           char(6)
     ,RepYM                           char(6)
     ,BaseYM                          char(6)
     ,IsExPrb                         char(1)
     ,IsEnd                           char(1)
     ,PayDate                         char(8)
     ,BegDate                         char(8)
     ,EndDate                         char(8)
     ,IsWk                            char(1)
     ,WkBegDate                       char(8)
     ,WkEndDate                       char(8)
     ,lsImpTax                        char(1)
     ,SMBnsGrpSortSeq                INTEGER
     ,SMBnsType                      INTEGER
     ,BnsRate                            INTEGER
     ,BnsAmt                             INTEGER
     ,BnsObjBegDate                   char(8)
     ,BnsObjEndDate                   char(8)
     ,BnsTaxBegYM                     char(6)
     ,BnsTaxEndYM                     char(6)
     ,IsBnsLastOrd                    char(1)
     ,SMBnsEntCalcOpt                INTEGER
     ,SMBnsRetCalcOpt                INTEGER
     ,RetroBegYM                      char(6)
     ,RetroEndYM                      char(6)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,TaxApplyRate                       INTEGER

 );
CREATE TABLE "_TPRPayDeduc" (
       CompanySeq INTEGER
     ,PbYm                            char(6)
     ,SerialNo                       INTEGER
     ,EmpSeq                         INTEGER
     ,ItemSeq                        INTEGER
     ,CurAmt                             INTEGER
     ,CurRetroAmt                        INTEGER
     ,Amt                                INTEGER
     ,RetroAmt                           INTEGER
     ,IsCompanyCost                   char(1)
     ,IsExcept                        char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRPayPay" (
       CompanySeq INTEGER
     ,PbYm                            char(6)
     ,SerialNo                       INTEGER
     ,EmpSeq                         INTEGER
     ,ItemSeq                        INTEGER
     ,CurAmt                             INTEGER
     ,CurRetroAmt                        INTEGER
     ,Amt                                INTEGER
     ,RetroAmt                           INTEGER
     ,IsPrevAllow                     char(1)
     ,IsBnsAllow                      char(1)
     ,IsCalc                          char(1)
     ,IsExcept                        char(1)
     ,UMTaxExemptType                INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRPayResult" (
       ReduceTaxRate decimal(19)
     ,IsUpload                        char(1)
     ,CompensatoryAmt                    INTEGER
     ,IsConfirm                       char(1)
     ,JobSeq                         INTEGER
     ,IsImpTax                        char(1)
     ,ProjectSeq                     INTEGER
     ,ExRateDate                      char(8)
     ,WkMmCnt                        INTEGER
     ,SMExRateType                   INTEGER
     ,Under20ChildCnt                INTEGER
     ,PayDate                         char(8)
     ,UmPsSeq                        INTEGER
     ,IsCalc                          char(1)
     ,StndBasePay                        INTEGER
     ,CompensatoryRetroAmt               INTEGER
     ,IsPerConfirm                    char(1)
     ,LocalBizSeq                    INTEGER
     ,TotPrevDeducAmt                    INTEGER
     ,IsAdj                           char(1)
     ,BizSeq                         INTEGER
     ,WkTrm                           char(6)
     ,DeducFamilyCnt                 INTEGER
     ,IsExRateDateEx                  char(1)
     ,IsWk                            char(1)
     ,TotRetroPrevDeducAmt               INTEGER
     ,CompanySeq                     INTEGER
     ,PbYm                            char(6)
     ,SerialNo                       INTEGER
     ,EmpSeq                         INTEGER
     ,PbSeq                          INTEGER
     ,BelongYm                        char(6)
     ,RepYm                           char(6)
     ,BasMmAmt                           INTEGER
     ,BasDdAmt                           INTEGER
     ,BasTmAmt                           INTEGER
     ,GenMmAmt                           INTEGER
     ,GenDdAmt                           INTEGER
     ,GenTmAmt                           INTEGER
     ,TotPayAmt                          INTEGER
     ,TotRetroPayAmt                     INTEGER
     ,TotPrevPayAmt                      INTEGER
     ,TotRetroPrevPayAmt                 INTEGER
     ,TotAllowBnsAmt                     INTEGER
     ,TotRetroAllowBnsAmt                INTEGER
     ,TotDeducAmt                        INTEGER
     ,TotRetroDeducAmt                   INTEGER
     ,ActPayAmt                          INTEGER
     ,ActRetroPayAmt                     INTEGER
     ,OrdDate                         char(8)
     ,IntSeq                         INTEGER
     ,OrdSeq                         INTEGER
     ,PuSeq                          INTEGER
     ,DeptSeq                        INTEGER
     ,WkDeptSeq                      INTEGER
     ,PosSeq                         INTEGER
     ,UMPgSeq                        INTEGER
     ,Ps                              char(3)
     ,UMJpSeq                        INTEGER
     ,UMJdSeq                        INTEGER
     ,UMJoSeq                        INTEGER
     ,PtSeq                          INTEGER
     ,UMWsSeq                        INTEGER
     ,SMSexSeq                       INTEGER
     ,SpouseACnt                     INTEGER
     ,DepenACnt                      INTEGER
     ,DepenBCnt                      INTEGER
     ,BnsRate                            INTEGER
     ,AbrTaxExempt                       INTEGER
     ,WkTaxExempt                        INTEGER
     ,EtcTaxExempt                       INTEGER
     ,LabManTaxExempt                    INTEGER
     ,FrgnTaxExempt                      INTEGER
     ,ResTax                             INTEGER
     ,TaxDeducAmt                        INTEGER
     ,AbrTaxDeducAmt                     INTEGER
     ,SavTaxDeducAmt                     INTEGER
     ,ReducTax                           INTEGER
     ,IsYear                          char(1)
     ,UMYearGrdSeq                   INTEGER
     ,IsUnion                         char(1)
     ,IsAttach                        char(1)
     ,IsAbrWk                         char(1)
     ,IsLabMan                        char(1)
     ,IsRet                           char(1)
     ,ApplyBegDate                    char(8)
     ,ApplyEndDate                    char(8)
     ,FullDays                       INTEGER
     ,SMTaxAppType                   INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,TaxRate                            INTEGER

 );
CREATE TABLE "_TPRRetEstAccSlip" (
       CompanySeq INTEGER
     ,Seq                            INTEGER
     ,RetEstYm                        char(6)
     ,EnvValue                       INTEGER
     ,SlipDeptSeq                    INTEGER
     ,CostDeptSeq                    INTEGER
     ,SlipCCtrSeq                    INTEGER
     ,CostCCtrSeq                    INTEGER
     ,DeptSeq                        INTEGER
     ,DtlSeq                         INTEGER
     ,AccUnit                        INTEGER
     ,SlipUnit                       INTEGER
     ,RowSlipUnit                    INTEGER
     ,AccSeq                         INTEGER
     ,UMCostType                     INTEGER
     ,SMDrOrCr                       INTEGER
     ,BgtSeq                         INTEGER
     ,DrAmt                              INTEGER
     ,CrAmt                              INTEGER
     ,DrForAmt                           INTEGER
     ,CrForAmt                           INTEGER
     ,CurrSeq                        INTEGER
     ,ExRate                             INTEGER
     ,RemSeq1                        INTEGER
     ,RemValSeq1                     INTEGER
     ,RemValText1                     varchar(100)
     ,RemSeq2                        INTEGER
     ,RemValSeq2                     INTEGER
     ,RemValText2                     varchar(100)
     ,RemSeq3                        INTEGER
     ,RemValSeq3                     INTEGER
     ,RemValText3                     varchar(100)
     ,RemSeq4                        INTEGER
     ,RemValSeq4                     INTEGER
     ,RemValText4                     varchar(100)
     ,RemSeq5                        INTEGER
     ,RemValSeq5                     INTEGER
     ,RemValText5                     varchar(100)
     ,AccDate                         char(8)
     ,Remark                          varchar(100)
     ,SlipSeq                        INTEGER
     ,IsSet                           char(1)
     ,LastDateTime                     TIMESTAMP
     ,LastUserSeq                    INTEGER

 );
CREATE TABLE "_TPRRetFundRimitAmt" (
       CompanySeq INTEGER
     ,Serl                           INTEGER
     ,EmpSeq                         INTEGER
     ,RimitYM                         char(6)
     ,SMRimitType                    INTEGER
     ,UMCapitalSeq                   INTEGER
     ,Amt                                INTEGER
     ,Remark                          varchar(100)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRWkAbsEmp" (
       CompanySeq INTEGER
     ,AbsDate                         char(8)
     ,EmpSeq                         INTEGER
     ,WkItemSeq                      INTEGER
     ,IsHalf                          char(1)
     ,Remark                          varchar(200)
     ,CCSeq                          INTEGER
     ,SMInputType                    INTEGER
     ,UMGrpSeq                       INTEGER
     ,UMWkGrpSeq                     INTEGER
     ,Seq                            INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,AbsHour                            INTEGER

 );
CREATE TABLE "_TPRWkEmpVacApp" (
       CompanySeq INTEGER
     ,EmpSeq                         INTEGER
     ,VacSeq                         INTEGER
     ,WkItemSeq                      INTEGER
     ,WkFrDate                        char(8)
     ,WkToDate                        char(8)
     ,PrevUseDays                        INTEGER
     ,AppDate                         char(8)
     ,VacReason                       varchar(200)
     ,CrisisTel                       varchar(20)
     ,TelNo                           varchar(20)
     ,AccptEmpSeq                    INTEGER
     ,CCSeq                          INTEGER
     ,IsHalf                          char(1)
     ,IsEnd                           char(1)
     ,IsReturn                        char(1)
     ,ReturnReason                    varchar(200)
     ,TimeTerm                        varchar(30)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,LeaveName                       varchar(50)
     ,IsCC                            char(1)
     ,WkFrTime                        varchar(8)
     ,WkToTime                        varchar(8)
     ,WkEmpName                       varchar(20)
     ,VacHour                            INTEGER

 );
CREATE TABLE "_TPRWkItem" (
       CompanySeq INTEGER
     ,WkItemSeq                      INTEGER
     ,WkItemName                      varchar(100)
     ,WkItemSName                     varchar(100)
     ,SMWkItemType                   INTEGER
     ,SMDTCType                      INTEGER
     ,DecPntCnt                      INTEGER
     ,IsAbsReason                     char(1)
     ,IsLongAbs                       char(1)
     ,SMAbsWkSort                    INTEGER
     ,IsPaid                          char(1)
     ,IsHalf                          char(1)
     ,IsDeduc                         char(1)
     ,IsSat                           char(1)
     ,IsSun                           char(1)
     ,IsHoli                          char(1)
     ,IsLimit                         char(1)
     ,IsUse                           char(1)
     ,SMLimitGrp                     INTEGER
     ,SMWkMth                        INTEGER
     ,SMWkMthGrp                     INTEGER
     ,TmUnit                         INTEGER
     ,SMAppMth                       INTEGER
     ,DispSeq                        INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,IsPrint                         char(1)
     ,Remark                          varchar(200)

 );
CREATE TABLE "_TPRWkMmEmpDays" (
       CompanySeq INTEGER
     ,YM                              char(6)
     ,EmpSeq                         INTEGER
     ,BasePayYM                       char(6)
     ,PayYM                           char(6)
     ,OccurDays                          INTEGER
     ,OccurFrDate                     char(8)
     ,OccurToDate                     char(8)
     ,UseFrDate                       char(8)
     ,UseToDate                       char(8)
     ,UseEndDate                      char(8)
     ,PbSeq                          INTEGER
     ,IsEnd                           char(1)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,GnerAmtYyMm                     char(6)

 );
CREATE TABLE "_TPRWkYyEmpDays" (
       CompanySeq INTEGER
     ,YY                              char(4)
     ,EmpSeq                         INTEGER
     ,ProcMM                          char(2)
     ,BasePayYM                       char(6)
     ,PayYM                           char(6)
     ,PileDays                           INTEGER
     ,ExProbOccurDays                    INTEGER
     ,ExProbUseDays                      INTEGER
     ,OccurDays                          INTEGER
     ,RestDays                           INTEGER
     ,AbsDays                            INTEGER
     ,OccurFrDate                     char(8)
     ,OccurToDate                     char(8)
     ,UseFrDate                       char(8)
     ,UseToDate                       char(8)
     ,UseEndDate                      char(8)
     ,BasePileDays                       INTEGER
     ,AddPileDays                        INTEGER
     ,PbSeq                          INTEGER
     ,IsEnd                           char(1)
     ,GnerAmtYyMm                     char(6)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,DutyDays                           INTEGER
     ,AddDays                            INTEGER
     ,PileTime                           INTEGER
     ,OccurTime                          INTEGER
     ,RestTime                           INTEGER
     ,AbsTime                            INTEGER

 );
CREATE TABLE "_TPRWkYyEmpDaysExProb" (
       CompanySeq INTEGER
     ,YM                              char(6)
     ,EmpSeq                         INTEGER
     ,YY                              char(4)
     ,BasePayYM                       char(6)
     ,PayYM                           char(6)
     ,OccurDays                          INTEGER
     ,OccurFrDate                     char(8)
     ,OccurToDate                     char(8)
     ,UseFrDate                       char(8)
     ,UseToDate                       char(8)
     ,UseEndDate                      char(8)
     ,PbSeq                          INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRWkYyEmpPileDaysApp" (
       CompanySeq INTEGER
     ,AppSeq                         INTEGER
     ,Yy                              char(4)
     ,AppDate                         char(8)
     ,EmpSeq                         INTEGER
     ,PileDays                           INTEGER
     ,Rem                             varchar(500)
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP

 );
CREATE TABLE "_TPRWkYyMm5Days" (
       CompanySeq INTEGER
     ,Seq                            INTEGER
     ,SMYyOccurType                  INTEGER
     ,SMYyBaseType                   INTEGER
     ,SMCmpOccurBegYy                INTEGER
     ,CmpOccurBegMmDd                 char(4)
     ,CmpOccurEndMmDd                 char(4)
     ,SMCmpOccurMm                   INTEGER
     ,SMCmpPayYy                     INTEGER
     ,SMCmpPayMm                     INTEGER
     ,CmpYyAmtPbSeq                  INTEGER
     ,SMCmpGnerAmtYy                 INTEGER
     ,SMCmpGnerAmtMm                 INTEGER
     ,SMEmpPayType                   INTEGER
     ,SMEmpPayYy                     INTEGER
     ,SMEmpPayMm                     INTEGER
     ,EmpYyAmtPbSeq                  INTEGER
     ,SMEmpGnerAmtYyMm               INTEGER
     ,FullApplyDays                      INTEGER
     ,AbsRate                            INTEGER
     ,AbsApplyDays                       INTEGER
     ,SMExProbMth                    INTEGER
     ,SMYyAppMth                     INTEGER
     ,IsMmOccur                       char(1)
     ,SMMmOccurType                  INTEGER
     ,SMMmUseType                    INTEGER
     ,SMMmUseFrMm                    INTEGER
     ,SMMmUseToMm                    INTEGER
     ,SMMmPayType                    INTEGER
     ,SMMmPayMm                      INTEGER
     ,SMMmPayTypeUnder               INTEGER
     ,SMMmPayMmUnder                 INTEGER
     ,MmAmtPbSeq                     INTEGER
     ,AttdRate5Days                      INTEGER
     ,FullApply5Days                     INTEGER
     ,YyInc5Days                         INTEGER
     ,IsdescAgree                     char(1)
     ,SMExProb5DaysOccurType         INTEGER
     ,SMExProb5DaysMth               INTEGER
     ,SMYy5DaysAppMth                INTEGER
     ,Limit5Days                         INTEGER
     ,IsHealthOccur                   char(1)
     ,HealthAmtPbSeq                 INTEGER
     ,YyWkItemSeq                    INTEGER
     ,MmWkItemSeq                    INTEGER
     ,HealthWkItemSeq                INTEGER
     ,LastUserSeq                    INTEGER
     ,LastDateTime                     TIMESTAMP
     ,SMExProbYy5DaysAppMth          INTEGER
     ,IsRetOccur                      char(1)
     ,SMRetAppMth                    INTEGER
     ,ExProbFixDays                  INTEGER
     ,SMRetYyOccurMth                INTEGER
     ,SMEntYyOccurMth                INTEGER
     ,SMEmpRetYyOccurMth             INTEGER
     ,SMEmpRetAppMth                 INTEGER
     ,IsFlexitime                     char(1)
     ,SMMmPayYy                      INTEGER
     ,SMMmPayYyUnder                 INTEGER

 );
COMMENT ON TABLE  "_TACAsst" IS '고정자산마스터';
COMMENT ON COLUMN "_TACAsst".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACAsst".AsstSeq IS '고정자산코드';
COMMENT ON COLUMN "_TACAsst".AsstNo IS '고정자산번호';
COMMENT ON COLUMN "_TACAsst".AsstName IS '고정자산명';
COMMENT ON COLUMN "_TACAsst".AsstTypeSeq IS '자산분류코드';
COMMENT ON COLUMN "_TACAsst".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TACAsst".GainDate IS '취득일';
COMMENT ON COLUMN "_TACAsst".DeptSeq IS '관리부서';
COMMENT ON COLUMN "_TACAsst".GainAmt IS '취득가액';
COMMENT ON COLUMN "_TACAsst".GainQty IS '취득수량';
COMMENT ON COLUMN "_TACAsst".GainCustSeq IS '취득처';
COMMENT ON COLUMN "_TACAsst".ManagerEmpSeq IS '관리자코드';
COMMENT ON COLUMN "_TACAsst".IsBiz IS '사업용자산여부';
COMMENT ON COLUMN "_TACAsst".RealAsstKindSeq IS '실물자산구분';
COMMENT ON COLUMN "_TACAsst".Remark IS '비고';
COMMENT ON COLUMN "_TACAsst".FileSeq IS '파일관리코드';
COMMENT ON COLUMN "_TACAsst".SupplyAmt IS '공급가액';
COMMENT ON COLUMN "_TACAsst".VATAmt IS '부가세액';
COMMENT ON COLUMN "_TACAsst".SMVATKind IS '부가세종류';
COMMENT ON COLUMN "_TACAsst".SlipSeq IS '전표내부코드';
COMMENT ON COLUMN "_TACAsst".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACAsst".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TACAsst".AccVatSeq IS '부가세계정코드';
COMMENT ON COLUMN "_TACAsst".EvidSeq IS '증빙내부코드';
COMMENT ON COLUMN "_TACAsst".SMNDVATKind IS '불공제구분';
COMMENT ON COLUMN "_TACAsst".SMNDVATAmt IS '불공제세';
COMMENT ON COLUMN "_TACAsst".IsRemUseMonDepre IS '잔존내용연수기준상각';
COMMENT ON TABLE  "_TACAsstAccSet" IS '자산 회계처리 유형 설정';
COMMENT ON COLUMN "_TACAsstAccSet".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACAsstAccSet".AsstAccTypeSeq IS '자산회계처리유형코드';
COMMENT ON COLUMN "_TACAsstAccSet".AsstAccTypeName IS '자산회계처리유형명';
COMMENT ON COLUMN "_TACAsstAccSet".GainAccSeq IS '취득계정';
COMMENT ON COLUMN "_TACAsstAccSet".AccumDepreAccSeq IS '상각누계액계정';
COMMENT ON COLUMN "_TACAsstAccSet".ImpairAccSeq IS '손상차손계정';
COMMENT ON COLUMN "_TACAsstAccSet".AccumImpairAccSeq IS '손상차손누계액계정';
COMMENT ON COLUMN "_TACAsstAccSet".ImpairRvrsAccSeq IS '손상차손환입계정';
COMMENT ON COLUMN "_TACAsstAccSet".SMAsstValMethod IS '자산평가방법';
COMMENT ON COLUMN "_TACAsstAccSet".SMRevalAccMethod IS '재평가회계처리방법';
COMMENT ON COLUMN "_TACAsstAccSet".RevalSurplusAccSeq IS '재평가잉여금계정';
COMMENT ON COLUMN "_TACAsstAccSet".RevalGainAccSeq IS '재평가이익계정';
COMMENT ON COLUMN "_TACAsstAccSet".RevalLossAccSeq IS '재평가손실계정';
COMMENT ON COLUMN "_TACAsstAccSet".Remark IS '비고';
COMMENT ON COLUMN "_TACAsstAccSet".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACAsstAccSet".LastDateTime IS '작업일';
COMMENT ON TABLE  "_TACAsstDefault" IS '자산분류별기본값 등록';
COMMENT ON COLUMN "_TACAsstDefault".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACAsstDefault".AsstTypeSeq IS '자산분류코드';
COMMENT ON COLUMN "_TACAsstDefault".AsstTypeName IS '자산분류';
COMMENT ON COLUMN "_TACAsstDefault".AsstAccTypeSeq IS '자산회계처리유형';
COMMENT ON COLUMN "_TACAsstDefault".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TACAsstDefault".SMDepreMethod IS '상각방법';
COMMENT ON COLUMN "_TACAsstDefault".DepreAccSeq IS '상각계정코드';
COMMENT ON COLUMN "_TACAsstDefault".UseYear IS '내용년수';
COMMENT ON COLUMN "_TACAsstDefault".MngDeptSeq IS '관리부서';
COMMENT ON COLUMN "_TACAsstDefault".ManagerEmpSeq IS '관리자코드';
COMMENT ON COLUMN "_TACAsstDefault".Remark IS '비고';
COMMENT ON COLUMN "_TACAsstDefault".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACAsstDefault".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TACAsstDefault".UMCostType IS '비용구분';
COMMENT ON TABLE  "_TACAsstDepreDept" IS '고정자산상각내역부서배분';
COMMENT ON COLUMN "_TACAsstDepreDept".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACAsstDepreDept".SMAccStd IS '회계기준구분';
COMMENT ON COLUMN "_TACAsstDepreDept".AsstSeq IS '고정자산코드';
COMMENT ON COLUMN "_TACAsstDepreDept".AsstChgSerl IS '자본적지출순번';
COMMENT ON COLUMN "_TACAsstDepreDept".SMGainType IS '취득/자본적지출구분';
COMMENT ON COLUMN "_TACAsstDepreDept".DepreDate IS '상각일자(말일)';
COMMENT ON COLUMN "_TACAsstDepreDept".DeptSerl IS '사용부서일련번호';
COMMENT ON COLUMN "_TACAsstDepreDept".SMDepreKind IS '상각구분';
COMMENT ON COLUMN "_TACAsstDepreDept".SMIncOrDec IS '증가감소구분';
COMMENT ON COLUMN "_TACAsstDepreDept".DeptSeq IS '사용부서코드';
COMMENT ON COLUMN "_TACAsstDepreDept".CCtrSeq IS '활동센터';
COMMENT ON COLUMN "_TACAsstDepreDept".DepreAccSeq IS '상각비 계정';
COMMENT ON COLUMN "_TACAsstDepreDept".AccumDepreAccSeq IS '상각누계액 계정';
COMMENT ON COLUMN "_TACAsstDepreDept".UMCostType IS '비용구분';
COMMENT ON COLUMN "_TACAsstDepreDept".AccumImpairAccSeq IS '손상누계액 계정';
COMMENT ON COLUMN "_TACAsstDepreDept".DepreSubAmt IS '상각금액';
COMMENT ON COLUMN "_TACAsstDepreDept".Remark IS '비고';
COMMENT ON COLUMN "_TACAsstDepreDept".SlipSeq IS '전표내부코드';
COMMENT ON COLUMN "_TACAsstDepreDept".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACAsstDepreDept".LastDateTime IS '작업일';
COMMENT ON TABLE  "_TACAsstDepreStdHist" IS '고정자산상각정보(IFRS)';
COMMENT ON COLUMN "_TACAsstDepreStdHist".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACAsstDepreStdHist".AsstSeq IS '고정자산코드';
COMMENT ON COLUMN "_TACAsstDepreStdHist".HistSerl IS '순번';
COMMENT ON COLUMN "_TACAsstDepreStdHist".EffectiveYM IS '적용시작연월';
COMMENT ON COLUMN "_TACAsstDepreStdHist".SMDepreMethod IS '상각방법';
COMMENT ON COLUMN "_TACAsstDepreStdHist".UseYear IS '내용연수';
COMMENT ON COLUMN "_TACAsstDepreStdHist".DepreRate IS '상각률';
COMMENT ON COLUMN "_TACAsstDepreStdHist".SrtDepreYM IS '상각시작연월';
COMMENT ON COLUMN "_TACAsstDepreStdHist".EndDepreYM IS '상각완료연월';
COMMENT ON COLUMN "_TACAsstDepreStdHist".RemainAmt IS '잔존가액';
COMMENT ON COLUMN "_TACAsstDepreStdHist".IsRemAmtCheck IS '잔액기준상각';
COMMENT ON COLUMN "_TACAsstDepreStdHist".IsCoAsst IS '공동자산여부';
COMMENT ON COLUMN "_TACAsstDepreStdHist".CGUnit IS '현금창출단위';
COMMENT ON COLUMN "_TACAsstDepreStdHist".IsEvalFairVal IS '공정가치평가가능여부';
COMMENT ON COLUMN "_TACAsstDepreStdHist".IsEvalUseVal IS '사용가치평가가능여부';
COMMENT ON COLUMN "_TACAsstDepreStdHist".LastUserSeq IS '최종수정자';
COMMENT ON COLUMN "_TACAsstDepreStdHist".LastDateTime IS '최종수정일';
COMMENT ON COLUMN "_TACAsstDepreStdHist".IsRemUseMonDepre IS '잔존내용년수기준정액상각';
COMMENT ON TABLE  "_TACAsstDispo" IS '고정자산처분';
COMMENT ON COLUMN "_TACAsstDispo".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACAsstDispo".SMAccStd IS '회계기준구분';
COMMENT ON COLUMN "_TACAsstDispo".AsstSeq IS '고정자산코드';
COMMENT ON COLUMN "_TACAsstDispo".DispoSerl IS '자산처분일련번호';
COMMENT ON COLUMN "_TACAsstDispo".DispoDate IS '처분일';
COMMENT ON COLUMN "_TACAsstDispo".SellAmt IS '매각액';
COMMENT ON COLUMN "_TACAsstDispo".CustSeq IS '처분처';
COMMENT ON COLUMN "_TACAsstDispo".IsSumCurrDepreAmt IS '당월상각액포함여부';
COMMENT ON COLUMN "_TACAsstDispo".Remark IS '비고';
COMMENT ON COLUMN "_TACAsstDispo".SlipSeq IS '전표내부코드';
COMMENT ON COLUMN "_TACAsstDispo".SMVATKind IS '부가세종류';
COMMENT ON COLUMN "_TACAsstDispo".SupplyAmt IS '공급가액';
COMMENT ON COLUMN "_TACAsstDispo".VATAmt IS '부가세액';
COMMENT ON COLUMN "_TACAsstDispo".AccVatSeq IS '부가세계정코드';
COMMENT ON COLUMN "_TACAsstDispo".EvidSeq IS '증빙내부코드';
COMMENT ON COLUMN "_TACAsstDispo".SMNDVATKind IS '불공제구분';
COMMENT ON COLUMN "_TACAsstDispo".SMNDVATAmt IS '불공제세';
COMMENT ON COLUMN "_TACAsstDispo".LossAccSeq IS '손실계정코드';
COMMENT ON COLUMN "_TACAsstDispo".ProfitAccSeq IS '이익계정코드';
COMMENT ON COLUMN "_TACAsstDispo".IsBatch IS 'IsBatch';
COMMENT ON COLUMN "_TACAsstDispo".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACAsstDispo".LastDateTime IS '작업일';
COMMENT ON COLUMN "_TACAsstDispo".AntiAccSeq IS '상대계정';
COMMENT ON COLUMN "_TACAsstDispo".BankAccSeq IS '계좌번호';
COMMENT ON COLUMN "_TACAsstDispo".DeptSeq IS '부서내부코드';
COMMENT ON COLUMN "_TACAsstDispo".CCtrSeq IS '활동센터내부코드';
COMMENT ON COLUMN "_TACAsstDispo".DispoCnt IS '처분수량';
COMMENT ON TABLE  "_TACAsstImpairmentLossAsst" IS '자산손상평가 (IFRS)';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".AccYM IS '회계연월';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".AsstSeq IS '고정자산코드';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".FairValueAmt IS '순공정가치';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".UseValueAmt IS '사용가치';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".RecoverableAmt IS '회수가능액';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".ImpairmentLossAmt IS '손상차손';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".AdjSurplusAmt IS '기타포괄손익(재평가잉여금) 조정';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".AdjGainLossAmt IS '당기손익조정';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".UMImpairLossReason IS '손상사유';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".Remark IS '비고';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".IsProc IS '처리여부';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".SlipSeq IS '전표내부코드';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACAsstImpairmentLossAsst".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TACDCashItem" IS '현금흐름표과목(직접법)';
COMMENT ON COLUMN "_TACDCashItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACDCashItem".CashItemSeq IS '현금흐름표과목코드';
COMMENT ON COLUMN "_TACDCashItem".CashItemNo IS '현금흐름표구조코드';
COMMENT ON COLUMN "_TACDCashItem".CashItemName IS '현금흐름과목';
COMMENT ON COLUMN "_TACDCashItem".SMCalcKind IS '계산구분';
COMMENT ON COLUMN "_TACDCashItem".Formula IS '산식';
COMMENT ON COLUMN "_TACDCashItem".Remark IS '비고';
COMMENT ON COLUMN "_TACDCashItem".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACDCashItem".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TACFundExec" IS '자금수지실적(자금달력)';
COMMENT ON COLUMN "_TACFundExec".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACFundExec".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TACFundExec".FundDate IS '자금수지일';
COMMENT ON COLUMN "_TACFundExec".Serl IS '일련번호';
COMMENT ON COLUMN "_TACFundExec".FundItemSeq IS '자금수지항목코드';
COMMENT ON COLUMN "_TACFundExec".RevExecAmt IS '실제입금액';
COMMENT ON COLUMN "_TACFundExec".PayExecAmt IS '실제출금액';
COMMENT ON COLUMN "_TACFundExec".Remark IS '비고';
COMMENT ON COLUMN "_TACFundExec".SlipSeq IS '전표내부코드';
COMMENT ON TABLE  "_TACFundPlan" IS '자금수지계획(자금달력)';
COMMENT ON COLUMN "_TACFundPlan".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACFundPlan".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TACFundPlan".FundDate IS '자금수지일';
COMMENT ON COLUMN "_TACFundPlan".Serl IS '일련번호';
COMMENT ON COLUMN "_TACFundPlan".FundItemSeq IS '자금수지항목코드';
COMMENT ON COLUMN "_TACFundPlan".RevPlanAmt IS '예상입금액';
COMMENT ON COLUMN "_TACFundPlan".PayPlanAmt IS '예상출금액';
COMMENT ON COLUMN "_TACFundPlan".Remark IS '비고';
COMMENT ON COLUMN "_TACFundPlan".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACFundPlan".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TACFundPlan".CurrSeq IS '통화';
COMMENT ON TABLE  "_TACLoan" IS '차입입력';
COMMENT ON COLUMN "_TACLoan".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACLoan".LoanSeq IS '차입내부코드';
COMMENT ON COLUMN "_TACLoan".LoanNo IS '차입번호';
COMMENT ON COLUMN "_TACLoan".LoanName IS '차입명';
COMMENT ON COLUMN "_TACLoan".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TACLoan".SMKoOrFor IS '국내외구분';
COMMENT ON COLUMN "_TACLoan".LoanDate IS '차입일';
COMMENT ON COLUMN "_TACLoan".SMLoanType IS '차입구분';
COMMENT ON COLUMN "_TACLoan".AccSeq IS '차입계정';
COMMENT ON COLUMN "_TACLoan".CurrAccSeq IS '유동성차입계정';
COMMENT ON COLUMN "_TACLoan".UMLoanKind IS '차입종류코드';
COMMENT ON COLUMN "_TACLoan".BankSeq IS '차입금융기관지점코드';
COMMENT ON COLUMN "_TACLoan".BankAccSeq IS '계좌코드';
COMMENT ON COLUMN "_TACLoan".Amt IS '원화차입액';
COMMENT ON COLUMN "_TACLoan".ForAmt IS '외화차입액';
COMMENT ON COLUMN "_TACLoan".CurrSeq IS '통화내부코드';
COMMENT ON COLUMN "_TACLoan".ExRateDate IS '환율일';
COMMENT ON COLUMN "_TACLoan".ExRate IS '환율';
COMMENT ON COLUMN "_TACLoan".IsBiz IS '사업용차입여부';
COMMENT ON COLUMN "_TACLoan".Remark IS '비고';
COMMENT ON COLUMN "_TACLoan".SlipSeq IS '차입전표코드';
COMMENT ON COLUMN "_TACLoan".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACLoan".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TACLoanInterestOpt" IS '차입이자조건';
COMMENT ON COLUMN "_TACLoanInterestOpt".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACLoanInterestOpt".LoanSeq IS '차입내부코드';
COMMENT ON COLUMN "_TACLoanInterestOpt".Serl IS '일련번호';
COMMENT ON COLUMN "_TACLoanInterestOpt".ChgDate IS '변경일';
COMMENT ON COLUMN "_TACLoanInterestOpt".SMCalcMethod IS '이자계산방법';
COMMENT ON COLUMN "_TACLoanInterestOpt".SMInterestPayWay IS '이자납입방법';
COMMENT ON COLUMN "_TACLoanInterestOpt".InterestTerm IS '이자납입주기';
COMMENT ON COLUMN "_TACLoanInterestOpt".PayCnt IS '이자지급횟수';
COMMENT ON COLUMN "_TACLoanInterestOpt".InterestRate IS '이자율';
COMMENT ON COLUMN "_TACLoanInterestOpt".SMRateType IS '금리기준';
COMMENT ON COLUMN "_TACLoanInterestOpt".Spread IS '가산금리';
COMMENT ON COLUMN "_TACLoanInterestOpt".FrDate IS '이자기간시작';
COMMENT ON COLUMN "_TACLoanInterestOpt".ToDate IS '이자기간끝';
COMMENT ON COLUMN "_TACLoanInterestOpt".DayQty IS '일수';
COMMENT ON COLUMN "_TACLoanInterestOpt".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACLoanInterestOpt".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TACLoanInterestOpt".IntDayCountType IS '차입금이자일수계산방법';
COMMENT ON TABLE  "_TACLoanPlan" IS '차입상환계획';
COMMENT ON COLUMN "_TACLoanPlan".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACLoanPlan".LoanSeq IS '차입내부코드';
COMMENT ON COLUMN "_TACLoanPlan".Serl IS '일련번호';
COMMENT ON COLUMN "_TACLoanPlan".PayDate IS '지급일자';
COMMENT ON COLUMN "_TACLoanPlan".SMInterestOrCapital IS '이자원금구분';
COMMENT ON COLUMN "_TACLoanPlan".PayCnt IS '지급횟수';
COMMENT ON COLUMN "_TACLoanPlan".FrDate IS '지급기간시작';
COMMENT ON COLUMN "_TACLoanPlan".ToDate IS '지급기간끝';
COMMENT ON COLUMN "_TACLoanPlan".BankSeq IS '지급금융기관지점코드';
COMMENT ON COLUMN "_TACLoanPlan".InterestRate IS '이자율';
COMMENT ON COLUMN "_TACLoanPlan".PayAmt IS '상환액';
COMMENT ON COLUMN "_TACLoanPlan".PayForAmt IS '외화상환액';
COMMENT ON COLUMN "_TACLoanPlan".PayIntAmt IS '이자지급액';
COMMENT ON COLUMN "_TACLoanPlan".PayForIntAmt IS '외화이자지급액';
COMMENT ON COLUMN "_TACLoanPlan".CurrSeq IS '통화내부코드';
COMMENT ON COLUMN "_TACLoanPlan".ExRate IS '환율';
COMMENT ON COLUMN "_TACLoanPlan".IsPay IS '실지급여부';
COMMENT ON COLUMN "_TACLoanPlan".IsPayInt IS '이자실지급여부';
COMMENT ON COLUMN "_TACLoanPlan".RepaySlipSeq IS '원금지급전표코드';
COMMENT ON COLUMN "_TACLoanPlan".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACLoanPlan".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TACLoanRepayOpt" IS '차입상환조건';
COMMENT ON COLUMN "_TACLoanRepayOpt".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACLoanRepayOpt".LoanSeq IS '차입내부코드';
COMMENT ON COLUMN "_TACLoanRepayOpt".Serl IS '일련번호';
COMMENT ON COLUMN "_TACLoanRepayOpt".ChgDate IS '변경일';
COMMENT ON COLUMN "_TACLoanRepayOpt".FrDate IS '상환개시일';
COMMENT ON COLUMN "_TACLoanRepayOpt".ToDate IS '최종상환일';
COMMENT ON COLUMN "_TACLoanRepayOpt".SMRepayType IS '상환유형';
COMMENT ON COLUMN "_TACLoanRepayOpt".RepayTerm IS '상환주기';
COMMENT ON COLUMN "_TACLoanRepayOpt".RepayCnt IS '상환횟수';
COMMENT ON COLUMN "_TACLoanRepayOpt".DeferYear IS '상환시거치년수';
COMMENT ON COLUMN "_TACLoanRepayOpt".DeferMonth IS '상환거치개월';
COMMENT ON COLUMN "_TACLoanRepayOpt".OddTime IS '짜투리금액조정회';
COMMENT ON COLUMN "_TACLoanRepayOpt".OddUnitAmt IS '짜투리금액단위설정';
COMMENT ON COLUMN "_TACLoanRepayOpt".Remark IS '비고';
COMMENT ON COLUMN "_TACLoanRepayOpt".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACLoanRepayOpt".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TACSlip" IS '전표';
COMMENT ON COLUMN "_TACSlip".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACSlip".SlipMstSeq IS '전표마스터내부코드';
COMMENT ON COLUMN "_TACSlip".SlipMstID IS '전표마스터번호';
COMMENT ON COLUMN "_TACSlip".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TACSlip".SlipUnit IS '전표관리단위코드';
COMMENT ON COLUMN "_TACSlip".AccDate IS '회계일';
COMMENT ON COLUMN "_TACSlip".SlipNo IS '기표일련번호';
COMMENT ON COLUMN "_TACSlip".SlipKind IS '전표분개유형내부코드';
COMMENT ON COLUMN "_TACSlip".RegEmpSeq IS '기표자';
COMMENT ON COLUMN "_TACSlip".RegDeptSeq IS '기표부서';
COMMENT ON COLUMN "_TACSlip".Remark IS '비고';
COMMENT ON COLUMN "_TACSlip".SMCurrStatus IS '전표상태';
COMMENT ON COLUMN "_TACSlip".AptDate IS '접수일';
COMMENT ON COLUMN "_TACSlip".AptEmpSeq IS '접수자';
COMMENT ON COLUMN "_TACSlip".AptDeptSeq IS '접수부서';
COMMENT ON COLUMN "_TACSlip".AptRemark IS '접수비고';
COMMENT ON COLUMN "_TACSlip".SMCheckStatus IS '정정상태';
COMMENT ON COLUMN "_TACSlip".CheckOrigin IS '원천번호';
COMMENT ON COLUMN "_TACSlip".IsSet IS '승인여부';
COMMENT ON COLUMN "_TACSlip".SetSlipNo IS '승인일련번호';
COMMENT ON COLUMN "_TACSlip".SetEmpSeq IS '승인자';
COMMENT ON COLUMN "_TACSlip".SetDeptSeq IS '승인부서';
COMMENT ON COLUMN "_TACSlip".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACSlip".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TACSlip".RegDateTime IS '기표일시';
COMMENT ON COLUMN "_TACSlip".RegAccDate IS '기표일';
COMMENT ON COLUMN "_TACSlip".SetSlipID IS '승인외부번호';
COMMENT ON TABLE  "_TACSlipAutoEnv" IS '자동전표환경설정';
COMMENT ON COLUMN "_TACSlipAutoEnv".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACSlipAutoEnv".SlipAutoEnvSeq IS '자동전표키';
COMMENT ON COLUMN "_TACSlipAutoEnv".SlipKindNo IS '자동전표파라미터';
COMMENT ON COLUMN "_TACSlipAutoEnv".ControlAccUnit IS '콘트롤정보_회계단위';
COMMENT ON COLUMN "_TACSlipAutoEnv".ControlAccUnitSheet IS '콘트롤정보_회계단위';
COMMENT ON COLUMN "_TACSlipAutoEnv".ControlSlipUnit IS '콘트롤정보_전표관리단위';
COMMENT ON COLUMN "_TACSlipAutoEnv".ControlSlipUnitSheet IS '콘트롤정보_전표관리단위';
COMMENT ON COLUMN "_TACSlipAutoEnv".ControlAccDate IS '콘트롤정보_기표일';
COMMENT ON COLUMN "_TACSlipAutoEnv".ControlRemark1 IS '콘트롤정보_전표비고1';
COMMENT ON COLUMN "_TACSlipAutoEnv".ControlRemark2 IS '콘트롤정보_전표비고2';
COMMENT ON COLUMN "_TACSlipAutoEnv".ControlRemark3 IS '콘트롤정보_전표비고3';
COMMENT ON COLUMN "_TACSlipAutoEnv".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TACSlipAutoEnv".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TACSlipRem" IS '전표의계정관리항목';
COMMENT ON COLUMN "_TACSlipRem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACSlipRem".SlipSeq IS '전표내부코드';
COMMENT ON COLUMN "_TACSlipRem".RemSeq IS '관리항목내부코드';
COMMENT ON COLUMN "_TACSlipRem".RemValSeq IS '관리항목내부코드값';
COMMENT ON COLUMN "_TACSlipRem".RemValText IS '관리항목텍스트값';
COMMENT ON TABLE  "_TACSlipRow" IS '전표의행정보';
COMMENT ON COLUMN "_TACSlipRow".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACSlipRow".SlipSeq IS '전표내부코드';
COMMENT ON COLUMN "_TACSlipRow".SlipMstSeq IS '전표마스터내부코드';
COMMENT ON COLUMN "_TACSlipRow".SlipID IS '전표기표번호';
COMMENT ON COLUMN "_TACSlipRow".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TACSlipRow".SlipUnit IS '전표관리단위코드';
COMMENT ON COLUMN "_TACSlipRow".AccDate IS '회계일';
COMMENT ON COLUMN "_TACSlipRow".SlipNo IS '기표일련번호';
COMMENT ON COLUMN "_TACSlipRow".RowNo IS '행번호';
COMMENT ON COLUMN "_TACSlipRow".RowSlipUnit IS '행별전표관리단위';
COMMENT ON COLUMN "_TACSlipRow".AccSeq IS '계정내부코드';
COMMENT ON COLUMN "_TACSlipRow".UMCostType IS '비용구분';
COMMENT ON COLUMN "_TACSlipRow".SMDrOrCr IS '차대구분';
COMMENT ON COLUMN "_TACSlipRow".DrAmt IS '차변금액';
COMMENT ON COLUMN "_TACSlipRow".CrAmt IS '대변금액';
COMMENT ON COLUMN "_TACSlipRow".DrForAmt IS '외화차변금액';
COMMENT ON COLUMN "_TACSlipRow".CrForAmt IS '외화대변금액';
COMMENT ON COLUMN "_TACSlipRow".CurrSeq IS '통화내부코드';
COMMENT ON COLUMN "_TACSlipRow".ExRate IS '환율';
COMMENT ON COLUMN "_TACSlipRow".DivExRate IS '나누기환율';
COMMENT ON COLUMN "_TACSlipRow".EvidSeq IS '증빙내부코드';
COMMENT ON COLUMN "_TACSlipRow".TaxKindSeq IS '세무구분코드(삭제)';
COMMENT ON COLUMN "_TACSlipRow".NDVATAmt IS '불공제세(삭제)';
COMMENT ON COLUMN "_TACSlipRow".CashItemSeq IS '현금흐름표과목코드';
COMMENT ON COLUMN "_TACSlipRow".SMCostItemKind IS '원가항목유형';
COMMENT ON COLUMN "_TACSlipRow".CostItemSeq IS '원가항목';
COMMENT ON COLUMN "_TACSlipRow".Summary IS '적요';
COMMENT ON COLUMN "_TACSlipRow".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TACSlipRow".BgtCCtrSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TACSlipRow".BgtSeq IS '예산과목내부코드';
COMMENT ON COLUMN "_TACSlipRow".IsSet IS '승인여부';
COMMENT ON COLUMN "_TACSlipRow".CoCustSeq IS '관계사코드';
COMMENT ON COLUMN "_TACSlipRow".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TACSlipRow".LastUserSeq IS '작업자';
COMMENT ON TABLE  "_TACSlipSum" IS '전표계정별집계원화';
COMMENT ON COLUMN "_TACSlipSum".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACSlipSum".SMAccStd IS '회계기준구분';
COMMENT ON COLUMN "_TACSlipSum".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TACSlipSum".AccYM IS '회계연월';
COMMENT ON COLUMN "_TACSlipSum".SlipUnit IS '전표관리단위코드';
COMMENT ON COLUMN "_TACSlipSum".IsIni IS '초기여부';
COMMENT ON COLUMN "_TACSlipSum".AccSeq IS '계정내부코드';
COMMENT ON COLUMN "_TACSlipSum".UMCostType IS '비용구분';
COMMENT ON COLUMN "_TACSlipSum".DrAmt IS '차변원화금액';
COMMENT ON COLUMN "_TACSlipSum".CrAmt IS '대변원화금액';
COMMENT ON TABLE  "_TACSlipSumFor" IS '전표계정별집계외화';
COMMENT ON COLUMN "_TACSlipSumFor".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TACSlipSumFor".SMAccStd IS '회계기준구분';
COMMENT ON COLUMN "_TACSlipSumFor".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TACSlipSumFor".AccYM IS '회계연월';
COMMENT ON COLUMN "_TACSlipSumFor".SlipUnit IS '전표관리단위코드';
COMMENT ON COLUMN "_TACSlipSumFor".IsIni IS '초기여부';
COMMENT ON COLUMN "_TACSlipSumFor".AccSeq IS '계정내부코드';
COMMENT ON COLUMN "_TACSlipSumFor".UMCostType IS '비용구분';
COMMENT ON COLUMN "_TACSlipSumFor".CurrSeq IS '통화내부코드';
COMMENT ON COLUMN "_TACSlipSumFor".DrForAmt IS '외화차변금액';
COMMENT ON COLUMN "_TACSlipSumFor".CrForAmt IS '외화대변금액';
COMMENT ON COLUMN "_TACSlipSumFor".DrAmt IS '원화차변금액';
COMMENT ON COLUMN "_TACSlipSumFor".CrAmt IS '원화대변금액';
COMMENT ON TABLE  "_TDAAccount" IS '계정과목';
COMMENT ON COLUMN "_TDAAccount".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDAAccount".AccSeq IS '계정내부코드';
COMMENT ON COLUMN "_TDAAccount".AccNo IS '계정코드';
COMMENT ON COLUMN "_TDAAccount".AccName IS '계정과목';
COMMENT ON COLUMN "_TDAAccount".SMDrOrCr IS '차대구분(4001)';
COMMENT ON COLUMN "_TDAAccount".IsAnti IS '차감계정여부';
COMMENT ON COLUMN "_TDAAccount".IsSlip IS '전표기표여부';
COMMENT ON COLUMN "_TDAAccount".IsEssCostDept IS '귀속부서필수여부';
COMMENT ON COLUMN "_TDAAccount".IsLevel2 IS '2레벨잔액여부';
COMMENT ON COLUMN "_TDAAccount".IsZeroAllow IS '금액0허용여부';
COMMENT ON COLUMN "_TDAAccount".IsEssForAmt IS '외화금액필수여부';
COMMENT ON COLUMN "_TDAAccount".SMIsEssEvid IS '증빙필수여부(4006)';
COMMENT ON COLUMN "_TDAAccount".IsEssCost IS '원가항목필수여부';
COMMENT ON COLUMN "_TDAAccount".IsCostTrn IS '원가집합여부(삭제)';
COMMENT ON COLUMN "_TDAAccount".SMIsUseRNP IS '출납사용여부(4003)';
COMMENT ON COLUMN "_TDAAccount".SMRNPMethod IS '출납방법(4004)';
COMMENT ON COLUMN "_TDAAccount".SMBgtType IS '예산유형(4005)';
COMMENT ON COLUMN "_TDAAccount".IsCash IS '현금성여부';
COMMENT ON COLUMN "_TDAAccount".SMCashItemKind IS '현금흐름과목종류(4007)';
COMMENT ON COLUMN "_TDAAccount".IsFundSet IS '자금승인여부';
COMMENT ON COLUMN "_TDAAccount".IsAutoExec IS '자동출납집행여부';
COMMENT ON COLUMN "_TDAAccount".SMAccType IS '계정구분(4002)';
COMMENT ON COLUMN "_TDAAccount".SMAccKind IS '계정대분류(4018)';
COMMENT ON COLUMN "_TDAAccount".OffRemSeq IS '건별반제';
COMMENT ON COLUMN "_TDAAccount".RemSeq1 IS '관리항목1';
COMMENT ON COLUMN "_TDAAccount".RemSeq2 IS '관리항목2';
COMMENT ON COLUMN "_TDAAccount".BgtRemSeq IS '예산';
COMMENT ON COLUMN "_TDAAccount".SMSetType IS '승인구분';
COMMENT ON COLUMN "_TDAAccount".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDAAccount".SMCostAccType IS '계정타입';
COMMENT ON COLUMN "_TDAAccount".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TDAAccountRem" IS '계정관리항목등록';
COMMENT ON COLUMN "_TDAAccountRem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDAAccountRem".RemSeq IS '관리항목내부코드';
COMMENT ON COLUMN "_TDAAccountRem".RemName IS '관리항목';
COMMENT ON COLUMN "_TDAAccountRem".SMSourceKind IS '데이타원천(4017)';
COMMENT ON COLUMN "_TDAAccountRem".MajorSeq IS '대분류코드';
COMMENT ON COLUMN "_TDAAccountRem".SMInputType IS '입력형태(4016)';
COMMENT ON COLUMN "_TDAAccountRem".Remark IS '비고';
COMMENT ON COLUMN "_TDAAccountRem".CodeHelpSeq IS '코드도움내부코드';
COMMENT ON COLUMN "_TDAAccountRem".CodeHelpParams IS '코드도움파라메터';
COMMENT ON COLUMN "_TDAAccountRem".WordSeq IS '사전코드';
COMMENT ON COLUMN "_TDAAccountRem".IsSystem IS '시스템코드여부';
COMMENT ON COLUMN "_TDAAccountRem".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDAAccountRem".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TDABank" IS '금융기관지점등록';
COMMENT ON COLUMN "_TDABank".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDABank".BankSeq IS '금융기관지점내부코드';
COMMENT ON COLUMN "_TDABank".BankName IS '금융기관지점';
COMMENT ON COLUMN "_TDABank".BankEngName IS '금융기관지점영문명';
COMMENT ON COLUMN "_TDABank".CellPhone IS '휴대전화';
COMMENT ON COLUMN "_TDABank".TelNo IS '전화번호';
COMMENT ON COLUMN "_TDABank".FaxNo IS '팩스번호';
COMMENT ON COLUMN "_TDABank".Manager IS '금융기관지점담당자';
COMMENT ON COLUMN "_TDABank".Addr IS '주소';
COMMENT ON COLUMN "_TDABank".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDABank".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDABank".SWIFTCODE IS '은행식별코드';
COMMENT ON COLUMN "_TDABank".BankHQ IS 'BankHQ';
COMMENT ON TABLE  "_TDABankAcc" IS '금융기관지점별계좌';
COMMENT ON COLUMN "_TDABankAcc".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDABankAcc".BankAccSeq IS '계좌코드';
COMMENT ON COLUMN "_TDABankAcc".BankAccNo IS '계좌번호';
COMMENT ON COLUMN "_TDABankAcc".BankAccName IS '계좌관리명';
COMMENT ON COLUMN "_TDABankAcc".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TDABankAcc".SMBankAccKind IS '계좌종류';
COMMENT ON COLUMN "_TDABankAcc".BankSeq IS '금융기관지점내부코드';
COMMENT ON COLUMN "_TDABankAcc".AccSeq IS '계정내부코드';
COMMENT ON COLUMN "_TDABankAcc".Owner IS '예금주';
COMMENT ON COLUMN "_TDABankAcc".OwnerEngName IS '영문 예금주명';
COMMENT ON COLUMN "_TDABankAcc".OpenDate IS '개설일';
COMMENT ON COLUMN "_TDABankAcc".ExpireDate IS '만기일';
COMMENT ON COLUMN "_TDABankAcc".PayDate IS '월불입일';
COMMENT ON COLUMN "_TDABankAcc".MonthPayAmt IS '월불입액';
COMMENT ON COLUMN "_TDABankAcc".InterestRate IS '이자율';
COMMENT ON COLUMN "_TDABankAcc".limitAmt IS '차월한도금액';
COMMENT ON COLUMN "_TDABankAcc".DepositAmt IS '계약금액';
COMMENT ON COLUMN "_TDABankAcc".SuretyAmt IS '담보금액';
COMMENT ON COLUMN "_TDABankAcc".IsAccruedIncomeTrans IS '미수수익대체계좌여부';
COMMENT ON COLUMN "_TDABankAcc".IsFoCurrTrans IS '외화평가계좌여부';
COMMENT ON COLUMN "_TDABankAcc".IsClose IS '계좌해지여부';
COMMENT ON COLUMN "_TDABankAcc".IsFund IS '자금수지관리여부';
COMMENT ON COLUMN "_TDABankAcc".TaxUnit IS '사업자번호내부코드';
COMMENT ON COLUMN "_TDABankAcc".Remark IS '비고';
COMMENT ON COLUMN "_TDABankAcc".SMFBSCycle IS '자금관리주기';
COMMENT ON COLUMN "_TDABankAcc".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDABankAcc".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDABankAcc".ClosingDate IS '해지일';
COMMENT ON COLUMN "_TDABankAcc".IsSaleAcc IS '영업입금계좌여부';
COMMENT ON COLUMN "_TDABankAcc".CMSCode IS 'CMS코드';
COMMENT ON TABLE  "_TDACard" IS '카드정보';
COMMENT ON COLUMN "_TDACard".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDACard".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TDACard".CardSeq IS '카드내부코드';
COMMENT ON COLUMN "_TDACard".CardNo IS '카드번호';
COMMENT ON COLUMN "_TDACard".CardName IS '카드명';
COMMENT ON COLUMN "_TDACard".SMComOrPriv IS '법인개인구분';
COMMENT ON COLUMN "_TDACard".UMCardKind IS '신용카드종류';
COMMENT ON COLUMN "_TDACard".EmpSeq IS '카드사용자';
COMMENT ON COLUMN "_TDACard".IssueDate IS '발급일';
COMMENT ON COLUMN "_TDACard".ExpireYm IS '만기월';
COMMENT ON COLUMN "_TDACard".SttlDay IS '결제일자';
COMMENT ON COLUMN "_TDACard".SttlLimitDay IS '결제한도일자';
COMMENT ON COLUMN "_TDACard".SttlAccNo IS '결제계좌';
COMMENT ON COLUMN "_TDACard".CardStatus IS '카드상태';
COMMENT ON COLUMN "_TDACard".StopDate IS '사용중지일';
COMMENT ON COLUMN "_TDACard".Remark IS '비고';
COMMENT ON COLUMN "_TDACard".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDACard".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDACard".SttlBankSeq IS '결제금융기관코드';
COMMENT ON COLUMN "_TDACard".SttlOwner IS '결제예금주';
COMMENT ON COLUMN "_TDACard".RemarkNum IS '비고(숫자)';
COMMENT ON COLUMN "_TDACard".ManageDeptSeq IS 'ManageDeptSeq';
COMMENT ON TABLE  "_TDACust" IS '거래처';
COMMENT ON COLUMN "_TDACust".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDACust".CustSeq IS '거래처내부코드';
COMMENT ON COLUMN "_TDACust".CustName IS '거래처명';
COMMENT ON COLUMN "_TDACust".TrunName IS '조회명';
COMMENT ON COLUMN "_TDACust".CustNo IS '거래처번호';
COMMENT ON COLUMN "_TDACust".UMCredLevel IS '신용등급';
COMMENT ON COLUMN "_TDACust".SMDomFor IS '국내외구분';
COMMENT ON COLUMN "_TDACust".SMCustStatus IS '거래처상태';
COMMENT ON COLUMN "_TDACust".FullName IS '상호';
COMMENT ON COLUMN "_TDACust".BizNo IS '사업자번호';
COMMENT ON COLUMN "_TDACust".PersonId IS '주민등록번호';
COMMENT ON COLUMN "_TDACust".Owner IS '대표자성명';
COMMENT ON COLUMN "_TDACust".LawRegNo IS '법인번호';
COMMENT ON COLUMN "_TDACust".BizAddr IS '세무사업자주소';
COMMENT ON COLUMN "_TDACust".BizKind IS '종목';
COMMENT ON COLUMN "_TDACust".BizType IS '업태';
COMMENT ON COLUMN "_TDACust".TelNo IS '전화번호';
COMMENT ON COLUMN "_TDACust".FrDate IS '적용시작일';
COMMENT ON COLUMN "_TDACust".UMCountrySeq IS '국가';
COMMENT ON COLUMN "_TDACust".SMBizPers IS '법인/개인';
COMMENT ON COLUMN "_TDACust".LastUserSeq IS '최종등록자';
COMMENT ON COLUMN "_TDACust".LastDateTime IS '최종등록일자';
COMMENT ON COLUMN "_TDACust".BizNoRegDate IS '사업자등록일';
COMMENT ON TABLE  "_TDACustBankAcc" IS '거래처별계좌';
COMMENT ON COLUMN "_TDACustBankAcc".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDACustBankAcc".CustSeq IS '거래처내부코드';
COMMENT ON COLUMN "_TDACustBankAcc".CustBankAccSerl IS '일련번호';
COMMENT ON COLUMN "_TDACustBankAcc".BankAccNo IS '계좌번호';
COMMENT ON COLUMN "_TDACustBankAcc".UMBankHQ IS '금융기관';
COMMENT ON COLUMN "_TDACustBankAcc".Owner IS '예금주';
COMMENT ON COLUMN "_TDACustBankAcc".Remark IS '비고';
COMMENT ON COLUMN "_TDACustBankAcc".IsCfm IS '확정여부';
COMMENT ON COLUMN "_TDACustBankAcc".IsDefault IS '기본계좌여부';
COMMENT ON COLUMN "_TDACustBankAcc".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDACustBankAcc".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDACustBankAcc".IsNotUse IS '미사용여부';
COMMENT ON TABLE  "_TDADept" IS '부서';
COMMENT ON COLUMN "_TDADept".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDADept".DeptSeq IS '부서내부코드';
COMMENT ON COLUMN "_TDADept".DeptName IS '부서명';
COMMENT ON COLUMN "_TDADept".AbrDeptName IS '부서약명';
COMMENT ON COLUMN "_TDADept".EngDeptName IS '영문명';
COMMENT ON COLUMN "_TDADept".AbrEngDeptName IS '영문약명';
COMMENT ON COLUMN "_TDADept".BegDate IS '부서시작일';
COMMENT ON COLUMN "_TDADept".EndDate IS '부서종료일';
COMMENT ON COLUMN "_TDADept".SMDeptType IS '부서구분';
COMMENT ON COLUMN "_TDADept".SMDeptClass IS '부서분류';
COMMENT ON COLUMN "_TDADept".DeptPhone IS '부서전화번호';
COMMENT ON COLUMN "_TDADept".DeptFax IS '부서팩스번호';
COMMENT ON COLUMN "_TDADept".TaxUnit IS '사업자번호내부코드';
COMMENT ON COLUMN "_TDADept".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TDADept".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TDADept".FactUnit IS '생산사업장';
COMMENT ON COLUMN "_TDADept".SlipUnit IS '전표단위';
COMMENT ON COLUMN "_TDADept".UMCostType IS '비용구분';
COMMENT ON COLUMN "_TDADept".PJTSeq IS '프로젝트내부코드';
COMMENT ON COLUMN "_TDADept".DispSeq IS '순서';
COMMENT ON COLUMN "_TDADept".Remark IS '비고';
COMMENT ON COLUMN "_TDADept".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDADept".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TDAEmp" IS '인사마스타';
COMMENT ON COLUMN "_TDAEmp".RetireDate IS 'NULL';
COMMENT ON COLUMN "_TDAEmp".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDAEmp".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TDAEmp".ResidID IS '주민등록번호';
COMMENT ON COLUMN "_TDAEmp".EmpName IS '풀이름';
COMMENT ON COLUMN "_TDAEmp".EmpFamilyName IS '성';
COMMENT ON COLUMN "_TDAEmp".EmpFirstName IS '이름';
COMMENT ON COLUMN "_TDAEmp".EmpChnName IS '한자이름';
COMMENT ON COLUMN "_TDAEmp".EmpEngFirstName IS '영문이름';
COMMENT ON COLUMN "_TDAEmp".EmpEngLastName IS '영문성';
COMMENT ON COLUMN "_TDAEmp".UMEmpType IS '사원구분';
COMMENT ON COLUMN "_TDAEmp".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDAEmp".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDAEmp".Empid IS '사번';
COMMENT ON COLUMN "_TDAEmp".DeptSeq IS '부서내부코드';
COMMENT ON COLUMN "_TDAEmp".WkDeptSeq IS '근무부서코드';
COMMENT ON TABLE  "_TDAEmpIn" IS '정직원마스터';
COMMENT ON COLUMN "_TDAEmpIn".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDAEmpIn".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TDAEmpIn".EmpID IS '외부사번';
COMMENT ON COLUMN "_TDAEmpIn".UMEmpType IS '사원구분';
COMMENT ON COLUMN "_TDAEmpIn".EntDate IS '입사일';
COMMENT ON COLUMN "_TDAEmpIn".RetireDate IS '퇴사일';
COMMENT ON COLUMN "_TDAEmpIn".IsDisabled IS '장애인여부';
COMMENT ON COLUMN "_TDAEmpIn".IsForeigner IS '외국인여부';
COMMENT ON COLUMN "_TDAEmpIn".SMBirthType IS '양/음';
COMMENT ON COLUMN "_TDAEmpIn".BirthDate IS '생년월일';
COMMENT ON COLUMN "_TDAEmpIn".UMNationSeq IS '국적';
COMMENT ON COLUMN "_TDAEmpIn".SMSexSeq IS '성별';
COMMENT ON COLUMN "_TDAEmpIn".IsMarriage IS '결혼여부';
COMMENT ON COLUMN "_TDAEmpIn".MarriageDate IS '결혼기념일';
COMMENT ON COLUMN "_TDAEmpIn".UMReligionSeq IS '종교';
COMMENT ON COLUMN "_TDAEmpIn".Hobby IS '취미';
COMMENT ON COLUMN "_TDAEmpIn".Speciality IS '특기';
COMMENT ON COLUMN "_TDAEmpIn".Phone IS '전화번호';
COMMENT ON COLUMN "_TDAEmpIn".Cellphone IS '휴대전화';
COMMENT ON COLUMN "_TDAEmpIn".Extension IS '사내번호';
COMMENT ON COLUMN "_TDAEmpIn".Email IS '이메일';
COMMENT ON COLUMN "_TDAEmpIn".Remark IS '비고';
COMMENT ON COLUMN "_TDAEmpIn".UMEmployType IS '채용형태';
COMMENT ON COLUMN "_TDAEmpIn".WishTask1 IS '입사시 희망직무1';
COMMENT ON COLUMN "_TDAEmpIn".WishTask2 IS '입사시 희망직무2';
COMMENT ON COLUMN "_TDAEmpIn".Recommender IS '추천인 명';
COMMENT ON COLUMN "_TDAEmpIn".RcmmndrCom IS '추천인 회사';
COMMENT ON COLUMN "_TDAEmpIn".RcmmndrRank IS '추천인 직위';
COMMENT ON COLUMN "_TDAEmpIn".PrevEmpSeq IS '이전사원코드';
COMMENT ON COLUMN "_TDAEmpIn".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDAEmpIn".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDAEmpIn".Height IS '키';
COMMENT ON COLUMN "_TDAEmpIn".Weight IS '몸무게';
COMMENT ON COLUMN "_TDAEmpIn".SMBloodType IS '혈액형';
COMMENT ON COLUMN "_TDAEmpIn".UMHandiType IS '장애유형';
COMMENT ON COLUMN "_TDAEmpIn".UMHandiGrd IS '장애등급';
COMMENT ON COLUMN "_TDAEmpIn".HandiAppdate IS '장애등록일';
COMMENT ON COLUMN "_TDAEmpIn".IsVeteranEmp IS '보훈대상자여부';
COMMENT ON COLUMN "_TDAEmpIn".VeteranNo IS '보훈번호';
COMMENT ON COLUMN "_TDAEmpIn".UMRelSeq IS '국가유공자와의관계';
COMMENT ON COLUMN "_TDAEmpIn".IsJobEmp IS '취업지원대상여부';
COMMENT ON COLUMN "_TDAEmpIn".EyeLt IS '좌측 시력';
COMMENT ON COLUMN "_TDAEmpIn".EyeRt IS '우측 시력';
COMMENT ON COLUMN "_TDAEmpIn".People IS '민족';
COMMENT ON COLUMN "_TDAEmpIn".UMHouseSort IS '호구구분';
COMMENT ON COLUMN "_TDAEmpIn".IsDivision IS '분리보관여부';
COMMENT ON COLUMN "_TDAEmpIn".IsDelete IS '개인정보삭제여부';
COMMENT ON TABLE  "_TDAEvid" IS '증빙등록';
COMMENT ON COLUMN "_TDAEvid".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDAEvid".EvidSeq IS '증빙내부코드';
COMMENT ON COLUMN "_TDAEvid".EvidName IS '증빙';
COMMENT ON COLUMN "_TDAEvid".IsVATRpt IS '부가세신고여부';
COMMENT ON COLUMN "_TDAEvid".SMEvidKind IS '증빙종류';
COMMENT ON COLUMN "_TDAEvid".SMTaxKind IS '세무구분';
COMMENT ON COLUMN "_TDAEvid".IsAsstBuy IS '고정자산매입분여부';
COMMENT ON COLUMN "_TDAEvid".IsNDVAT IS '불공제여부';
COMMENT ON COLUMN "_TDAEvid".IsCard IS '카드필수';
COMMENT ON COLUMN "_TDAEvid".IsLegalBuy IS '의제매입여부';
COMMENT ON COLUMN "_TDAEvid".IsCommonBuy IS '공통매입';
COMMENT ON COLUMN "_TDAEvid".SMForAmtGain IS '외화획득구분';
COMMENT ON COLUMN "_TDAEvid".IsBizCard IS '사업용신용카드';
COMMENT ON COLUMN "_TDAEvid".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDAEvid".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDAEvid".IsElec IS '전자신고여부';
COMMENT ON COLUMN "_TDAEvid".Sort IS '순서';
COMMENT ON COLUMN "_TDAEvid".IsNotUse IS '사용안함';
COMMENT ON COLUMN "_TDAEvid".IsBuyerBill IS '매입자발행여부';
COMMENT ON COLUMN "_TDAEvid".SMCuDeductScrap IS '구리스크랩구분';
COMMENT ON COLUMN "_TDAEvid".IsNotReceive IS '수취제외대상';
COMMENT ON COLUMN "_TDAEvid".IsExpendEvid IS '지출증빙여부';
COMMENT ON TABLE  "_TDASMajor" IS '시스템재공 기타코드 대분류';
COMMENT ON COLUMN "_TDASMajor".CustSeq IS 'NULL';
COMMENT ON COLUMN "_TDASMajor".DevMode IS 'NULL';
COMMENT ON COLUMN "_TDASMajor".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDASMajor".MajorSeq IS '대분류코드';
COMMENT ON COLUMN "_TDASMajor".MajorName IS '대분류명';
COMMENT ON COLUMN "_TDASMajor".Remark IS '비고';
COMMENT ON COLUMN "_TDASMajor".SysType IS '코드구분';
COMMENT ON COLUMN "_TDASMajor".FixCombo IS '콤보고정여부';
COMMENT ON COLUMN "_TDASMajor".IsCombo IS '콤보기본여부';
COMMENT ON COLUMN "_TDASMajor".WordSeq IS '사전코드';
COMMENT ON COLUMN "_TDASMajor".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDASMajor".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TDASMinor" IS '시스템재공 기타코드 소분류';
COMMENT ON COLUMN "_TDASMinor".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDASMinor".MinorSeq IS '소분류코드';
COMMENT ON COLUMN "_TDASMinor".MajorSeq IS '대분류코드';
COMMENT ON COLUMN "_TDASMinor".MinorName IS '소분류명';
COMMENT ON COLUMN "_TDASMinor".MinorValue IS '값';
COMMENT ON COLUMN "_TDASMinor".MinorSort IS '순서';
COMMENT ON COLUMN "_TDASMinor".Remark IS '비고';
COMMENT ON COLUMN "_TDASMinor".WordSeq IS '사전코드';
COMMENT ON COLUMN "_TDASMinor".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDASMinor".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDASMinor".IsUse IS 'IsUse';
COMMENT ON TABLE  "_TDATaxUnit" IS '사업자번호관리';
COMMENT ON COLUMN "_TDATaxUnit".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDATaxUnit".TaxUnit IS '사업자번호내부코드';
COMMENT ON COLUMN "_TDATaxUnit".TaxNo IS '사업자번호';
COMMENT ON COLUMN "_TDATaxUnit".TaxNoAlias IS '사업자번호명';
COMMENT ON COLUMN "_TDATaxUnit".TaxSerial IS '일련번호';
COMMENT ON COLUMN "_TDATaxUnit".TaxName IS '상호';
COMMENT ON COLUMN "_TDATaxUnit".TaxEngName IS '상호영문명';
COMMENT ON COLUMN "_TDATaxUnit".Owner IS '대표자';
COMMENT ON COLUMN "_TDATaxUnit".BizType IS '업태';
COMMENT ON COLUMN "_TDATaxUnit".ResidID IS '주민등록번호';
COMMENT ON COLUMN "_TDATaxUnit".BizItem IS '종목';
COMMENT ON COLUMN "_TDATaxUnit".Zip IS '우편번호';
COMMENT ON COLUMN "_TDATaxUnit".Addr1 IS '주소1';
COMMENT ON COLUMN "_TDATaxUnit".Addr2 IS '주소2';
COMMENT ON COLUMN "_TDATaxUnit".Addr3 IS '주소3';
COMMENT ON COLUMN "_TDATaxUnit".TelNo IS '전화번호';
COMMENT ON COLUMN "_TDATaxUnit".FaxNo IS '팩스번호';
COMMENT ON COLUMN "_TDATaxUnit".CellPhone IS '휴대전화';
COMMENT ON COLUMN "_TDATaxUnit".EMail IS '이메일';
COMMENT ON COLUMN "_TDATaxUnit".AddrEng1 IS '영문주소1';
COMMENT ON COLUMN "_TDATaxUnit".AddrEng2 IS '영문주소2';
COMMENT ON COLUMN "_TDATaxUnit".AddrEng3 IS '영문주소3';
COMMENT ON COLUMN "_TDATaxUnit".VATRptAddr IS '세금계산서인쇄주소';
COMMENT ON COLUMN "_TDATaxUnit".BizRegDate IS '사업등록일';
COMMENT ON COLUMN "_TDATaxUnit".BizCancelDate IS '사업등록말소일';
COMMENT ON COLUMN "_TDATaxUnit".IsVatRpt IS '공급자란인쇄여부';
COMMENT ON COLUMN "_TDATaxUnit".HomeTaxID IS '전자신고ID';
COMMENT ON COLUMN "_TDATaxUnit".TaxOffice IS '관할세무서';
COMMENT ON COLUMN "_TDATaxUnit".TaxOfficeNo IS '관할세무서번호';
COMMENT ON COLUMN "_TDATaxUnit".TaxBizTypeNo IS '주업종내부코드';
COMMENT ON COLUMN "_TDATaxUnit".liquorSaleNo IS '주류판매신고번호';
COMMENT ON COLUMN "_TDATaxUnit".liquorWholeSaleNo IS '주류도매번호';
COMMENT ON COLUMN "_TDATaxUnit".liquorRetailSaleNo IS '주류소매번호';
COMMENT ON COLUMN "_TDATaxUnit".SMTaxationType IS '사업자구분';
COMMENT ON COLUMN "_TDATaxUnit".Remark IS '비고';
COMMENT ON COLUMN "_TDATaxUnit".SemuName IS '세무대리인 성명';
COMMENT ON COLUMN "_TDATaxUnit".SemuNo IS '세무대리인 관리번호';
COMMENT ON COLUMN "_TDATaxUnit".SemuTelNo IS '세무대리인 전화번호';
COMMENT ON COLUMN "_TDATaxUnit".SemuBankAccNo IS '세무대표계좌번호';
COMMENT ON COLUMN "_TDATaxUnit".BillTaxName IS '계산서상호';
COMMENT ON COLUMN "_TDATaxUnit".TaxSumPaymentNo IS '총괄납부승인번호';
COMMENT ON COLUMN "_TDATaxUnit".TaxNoSerl IS '일련번호';
COMMENT ON COLUMN "_TDATaxUnit".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDATaxUnit".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDATaxUnit".CashSaleKind IS '현금매출명세구분코드';
COMMENT ON COLUMN "_TDATaxUnit".RoadAddr IS '도로명주소';
COMMENT ON COLUMN "_TDATaxUnit".TelNoFor IS '국제전화번호';
COMMENT ON COLUMN "_TDATaxUnit".FaxNoFor IS '국제팩스번호';
COMMENT ON TABLE  "_TDATaxUnitHist" IS '사업자번호변경내역';
COMMENT ON COLUMN "_TDATaxUnitHist".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDATaxUnitHist".Serl IS '일련번호';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxUnit IS '사업자번호내부코드';
COMMENT ON COLUMN "_TDATaxUnitHist".FrDate IS '적용시작일자';
COMMENT ON COLUMN "_TDATaxUnitHist".ToDate IS '적용종료일자';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxNo IS '사업자번호';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxNoAlias IS '사업자번호명';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxSerial IS '일련번호';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxName IS '상호';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxEngName IS '상호영문명';
COMMENT ON COLUMN "_TDATaxUnitHist".Owner IS '대표자';
COMMENT ON COLUMN "_TDATaxUnitHist".ResidID IS '주민등록번호';
COMMENT ON COLUMN "_TDATaxUnitHist".BizType IS '업태';
COMMENT ON COLUMN "_TDATaxUnitHist".BizItem IS '종목';
COMMENT ON COLUMN "_TDATaxUnitHist".Zip IS '우편번호';
COMMENT ON COLUMN "_TDATaxUnitHist".Addr1 IS '주소1';
COMMENT ON COLUMN "_TDATaxUnitHist".Addr2 IS '주소2';
COMMENT ON COLUMN "_TDATaxUnitHist".Addr3 IS '주소3';
COMMENT ON COLUMN "_TDATaxUnitHist".TelNo IS '전화번호';
COMMENT ON COLUMN "_TDATaxUnitHist".FaxNo IS '팩스번호';
COMMENT ON COLUMN "_TDATaxUnitHist".CellPhone IS '휴대전화';
COMMENT ON COLUMN "_TDATaxUnitHist".EMail IS '이메일';
COMMENT ON COLUMN "_TDATaxUnitHist".AddrEng1 IS '영문주소1';
COMMENT ON COLUMN "_TDATaxUnitHist".AddrEng2 IS '영문주소2';
COMMENT ON COLUMN "_TDATaxUnitHist".AddrEng3 IS '영문주소3';
COMMENT ON COLUMN "_TDATaxUnitHist".VATRptAddr IS '세금계산서인쇄주소';
COMMENT ON COLUMN "_TDATaxUnitHist".BizRegDate IS '사업등록일';
COMMENT ON COLUMN "_TDATaxUnitHist".BizCancelDate IS '사업등록말소일';
COMMENT ON COLUMN "_TDATaxUnitHist".IsVatRpt IS '공급자란인쇄여부';
COMMENT ON COLUMN "_TDATaxUnitHist".HomeTaxID IS '전자신고ID';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxOffice IS '관할세무서';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxOfficeNo IS '관할세무서번호';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxBizTypeNo IS '주업종내부코드';
COMMENT ON COLUMN "_TDATaxUnitHist".liquorSaleNo IS '주류판매신고번호';
COMMENT ON COLUMN "_TDATaxUnitHist".liquorWholeSaleNo IS '주류도매번호';
COMMENT ON COLUMN "_TDATaxUnitHist".liquorRetailSaleNo IS '주류소매번호';
COMMENT ON COLUMN "_TDATaxUnitHist".SMTaxationType IS '사업자구분';
COMMENT ON COLUMN "_TDATaxUnitHist".Remark IS '비고';
COMMENT ON COLUMN "_TDATaxUnitHist".SemuName IS '세무대리인 성명';
COMMENT ON COLUMN "_TDATaxUnitHist".SemuNo IS '세무대리인 관리번호';
COMMENT ON COLUMN "_TDATaxUnitHist".SemuTelNo IS '세무대리인 전화번호';
COMMENT ON COLUMN "_TDATaxUnitHist".SemuBankAccNo IS '세무대표계좌번호';
COMMENT ON COLUMN "_TDATaxUnitHist".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDATaxUnitHist".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDATaxUnitHist".CashSaleKind IS 'CashSaleKind';
COMMENT ON COLUMN "_TDATaxUnitHist".BillTaxName IS 'BillTaxName';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxSumPaymentNo IS 'TaxSumPaymentNo';
COMMENT ON COLUMN "_TDATaxUnitHist".TaxNoSerl IS 'TaxNoSerl';
COMMENT ON COLUMN "_TDATaxUnitHist".RoadAddr IS 'RoadAddr';
COMMENT ON COLUMN "_TDATaxUnitHist".TelNoFor IS 'TelNoFor';
COMMENT ON COLUMN "_TDATaxUnitHist".FaxNoFor IS 'FaxNoFor';
COMMENT ON TABLE  "_TDAUMajor" IS '사용자정의 기타코드 대분류';
COMMENT ON COLUMN "_TDAUMajor".CustSeq IS 'NULL';
COMMENT ON COLUMN "_TDAUMajor".DevMode IS 'NULL';
COMMENT ON COLUMN "_TDAUMajor".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDAUMajor".MajorSeq IS '대분류코드';
COMMENT ON COLUMN "_TDAUMajor".MajorName IS '대분류명';
COMMENT ON COLUMN "_TDAUMajor".MajorSort IS '순서';
COMMENT ON COLUMN "_TDAUMajor".SMInputMethod IS '소분류입력방법';
COMMENT ON COLUMN "_TDAUMajor".Remark IS '비고';
COMMENT ON COLUMN "_TDAUMajor".WordSeq IS '사전코드';
COMMENT ON COLUMN "_TDAUMajor".FixCombo IS '콤보고정여부';
COMMENT ON COLUMN "_TDAUMajor".IsCombo IS '콤보기본여부';
COMMENT ON COLUMN "_TDAUMajor".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDAUMajor".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDAUMajor".AddCheckScript IS '추가체크SP';
COMMENT ON COLUMN "_TDAUMajor".AddSaveScript IS '추가저장SP';
COMMENT ON TABLE  "_TDAUMinor" IS '사용자정의 기타코드 소분류';
COMMENT ON COLUMN "_TDAUMinor".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TDAUMinor".MinorSeq IS '소분류코드';
COMMENT ON COLUMN "_TDAUMinor".MajorSeq IS '대분류코드';
COMMENT ON COLUMN "_TDAUMinor".MinorName IS '소분류명';
COMMENT ON COLUMN "_TDAUMinor".MinorSort IS '순서';
COMMENT ON COLUMN "_TDAUMinor".Remark IS '비고';
COMMENT ON COLUMN "_TDAUMinor".WordSeq IS '사전코드';
COMMENT ON COLUMN "_TDAUMinor".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TDAUMinor".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TDAUMinor".IsUse IS '사용여부';
COMMENT ON TABLE  "_THRAdmOrd" IS '발령사유코드';
COMMENT ON COLUMN "_THRAdmOrd".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_THRAdmOrd".OrdSeq IS '발령사유코드';
COMMENT ON COLUMN "_THRAdmOrd".OrdName IS '발령사유명';
COMMENT ON COLUMN "_THRAdmOrd".UMWsSeq IS '근무상태';
COMMENT ON COLUMN "_THRAdmOrd".UMOrdTypeSeq IS '발령유형코드';
COMMENT ON COLUMN "_THRAdmOrd".SMOrdAppSeq IS '발령적용코드';
COMMENT ON COLUMN "_THRAdmOrd".IsPaid IS '유급여부';
COMMENT ON COLUMN "_THRAdmOrd".IsExAvgPay IS '평균임금산정제외여부';
COMMENT ON COLUMN "_THRAdmOrd".IsExWkTerm IS '근속기간제외여부';
COMMENT ON COLUMN "_THRAdmOrd".DispSeq IS '순서';
COMMENT ON COLUMN "_THRAdmOrd".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THRAdmOrd".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_THRAdmOrd".IsChild IS '육아휴직';
COMMENT ON TABLE  "_THRAdmOrdEmp" IS '발령관리';
COMMENT ON COLUMN "_THRAdmOrdEmp".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_THRAdmOrdEmp".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_THRAdmOrdEmp".IntSeq IS '발령일련번호';
COMMENT ON COLUMN "_THRAdmOrdEmp".OrdSeq IS '발령사유코드';
COMMENT ON COLUMN "_THRAdmOrdEmp".OrdDate IS '발령일                ';
COMMENT ON COLUMN "_THRAdmOrdEmp".OrdEndDate IS '발령종료일자';
COMMENT ON COLUMN "_THRAdmOrdEmp".PuSeq IS '급여작업군';
COMMENT ON COLUMN "_THRAdmOrdEmp".DeptSeq IS '소속부서';
COMMENT ON COLUMN "_THRAdmOrdEmp".WkDeptSeq IS '근무부서';
COMMENT ON COLUMN "_THRAdmOrdEmp".PosSeq IS '포지션내부코드';
COMMENT ON COLUMN "_THRAdmOrdEmp".UMPgSeq IS '직급';
COMMENT ON COLUMN "_THRAdmOrdEmp".Ps IS '호봉';
COMMENT ON COLUMN "_THRAdmOrdEmp".UMJpSeq IS '직위코드';
COMMENT ON COLUMN "_THRAdmOrdEmp".UMJdSeq IS '직책';
COMMENT ON COLUMN "_THRAdmOrdEmp".UMJoSeq IS '직종';
COMMENT ON COLUMN "_THRAdmOrdEmp".JobSeq IS '직무코드';
COMMENT ON COLUMN "_THRAdmOrdEmp".PtSeq IS '급여형태';
COMMENT ON COLUMN "_THRAdmOrdEmp".UMWsSeq IS '근무상태';
COMMENT ON COLUMN "_THRAdmOrdEmp".IsBoss IS '부서장여부';
COMMENT ON COLUMN "_THRAdmOrdEmp".Contents IS '발령내역';
COMMENT ON COLUMN "_THRAdmOrdEmp".Remark IS '비고';
COMMENT ON COLUMN "_THRAdmOrdEmp".IsOrdDateLast IS '일최종여부';
COMMENT ON COLUMN "_THRAdmOrdEmp".IsLast IS '최종여부';
COMMENT ON COLUMN "_THRAdmOrdEmp".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THRAdmOrdEmp".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_THRAdmOrdEmp".IsWkOrd IS '근무발령생성여부';
COMMENT ON TABLE  "_THRAdmWkOrdEmp" IS '근무발령관리';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".WkIntSeq IS '근무발령일련번호';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".OrdSeq IS '발령사유코드';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".OrdDate IS '발령일                ';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".OrdEndDate IS '발령종료일자';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".OrdDeptSeq IS '발령부서코드';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".PosSeq IS '포지션내부코드';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".UMJdSeq IS '직책';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".IsBoss IS '부서장여부';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".Contents IS '발령내역';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".Remark IS '비고';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".IntSeq IS '발령일련번호';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".IsRet IS '퇴직여부';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".SMSourceType IS '원천구분';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THRAdmWkOrdEmp".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_THRBasLicense" IS '자격면허관리';
COMMENT ON COLUMN "_THRBasLicense".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_THRBasLicense".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_THRBasLicense".LicenseSeq IS '자격면허일련번호';
COMMENT ON COLUMN "_THRBasLicense".UMLicSeq IS '자격면허구분';
COMMENT ON COLUMN "_THRBasLicense".IssueInst IS '발급기관';
COMMENT ON COLUMN "_THRBasLicense".LicNo IS '자격면허번호';
COMMENT ON COLUMN "_THRBasLicense".AcqDate IS '취득일자';
COMMENT ON COLUMN "_THRBasLicense".ValDate IS '유효일자';
COMMENT ON COLUMN "_THRBasLicense".IsAllowPay IS '급여지급여부';
COMMENT ON COLUMN "_THRBasLicense".IsLaw IS '법정자격여부';
COMMENT ON COLUMN "_THRBasLicense".Rem IS '비고';
COMMENT ON COLUMN "_THRBasLicense".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THRBasLicense".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_THRBasPrzPnl" IS '상벌관리';
COMMENT ON COLUMN "_THRBasPrzPnl".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_THRBasPrzPnl".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_THRBasPrzPnl".PrzPnlSeq IS '상벌일련번호';
COMMENT ON COLUMN "_THRBasPrzPnl".SMPrzPnlType IS '상벌구분';
COMMENT ON COLUMN "_THRBasPrzPnl".PrzPnlFrDate IS '상벌시작일자';
COMMENT ON COLUMN "_THRBasPrzPnl".PrzPnlToDate IS '상벌종료일자';
COMMENT ON COLUMN "_THRBasPrzPnl".SMInOutType IS '사내외구분';
COMMENT ON COLUMN "_THRBasPrzPnl".UMPrzPnlSeq IS '상벌코드';
COMMENT ON COLUMN "_THRBasPrzPnl".PrzPnlReason IS '상벌사유';
COMMENT ON COLUMN "_THRBasPrzPnl".PrzPnlInst IS '상벌기관';
COMMENT ON COLUMN "_THRBasPrzPnl".IsAllowDeduc IS '급여지급/감봉여부';
COMMENT ON COLUMN "_THRBasPrzPnl".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THRBasPrzPnl".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_THRBaslinguistic" IS '어학정보';
COMMENT ON COLUMN "_THRBaslinguistic".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_THRBaslinguistic".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_THRBaslinguistic".linguisticSeq IS '어학일련번호';
COMMENT ON COLUMN "_THRBaslinguistic".UMLanguageType IS '어학구분';
COMMENT ON COLUMN "_THRBaslinguistic".UMAuthType IS '인증구분';
COMMENT ON COLUMN "_THRBaslinguistic".Score IS '점수';
COMMENT ON COLUMN "_THRBaslinguistic".UMGrade IS '등급';
COMMENT ON COLUMN "_THRBaslinguistic".BegDate IS '시작일';
COMMENT ON COLUMN "_THRBaslinguistic".EndDate IS '종료일';
COMMENT ON COLUMN "_THRBaslinguistic".IsAllowPay IS '급여지급여부';
COMMENT ON COLUMN "_THRBaslinguistic".Remark IS '비고';
COMMENT ON COLUMN "_THRBaslinguistic".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THRBaslinguistic".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_THRBaslinguistic".CharScore IS '점수(문자)';
COMMENT ON TABLE  "_THREvalGrd" IS '평가등급';
COMMENT ON COLUMN "_THREvalGrd".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_THREvalGrd".GrdType IS '등급구분';
COMMENT ON COLUMN "_THREvalGrd".GrdSeq IS '등급코드';
COMMENT ON COLUMN "_THREvalGrd".GrdName IS '등급명';
COMMENT ON COLUMN "_THREvalGrd".GrdScore IS '등급점수';
COMMENT ON COLUMN "_THREvalGrd".BegValue IS '시작값';
COMMENT ON COLUMN "_THREvalGrd".EndValue IS '종료값';
COMMENT ON COLUMN "_THREvalGrd".Sort IS '순서';
COMMENT ON COLUMN "_THREvalGrd".Rem IS '비고';
COMMENT ON COLUMN "_THREvalGrd".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THREvalGrd".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_THREvalGrd".Descript IS '개요';
COMMENT ON TABLE  "_THREvalMBORst" IS '업적평가결과';
COMMENT ON COLUMN "_THREvalMBORst".CompanySeq IS '법인코드';
COMMENT ON COLUMN "_THREvalMBORst".EvalYyRev IS '평가년도차수';
COMMENT ON COLUMN "_THREvalMBORst".SMEvalSeq IS '평가유형';
COMMENT ON COLUMN "_THREvalMBORst".EmpSeq IS '피평가자사원코드';
COMMENT ON COLUMN "_THREvalMBORst".EvalEmpSeq IS '평가자사원코드';
COMMENT ON COLUMN "_THREvalMBORst".SMEvalStepSeq IS '평가단계';
COMMENT ON COLUMN "_THREvalMBORst".Rank IS '순위';
COMMENT ON COLUMN "_THREvalMBORst".TotScore IS '총점수';
COMMENT ON COLUMN "_THREvalMBORst".AdjScore IS '환산점수';
COMMENT ON COLUMN "_THREvalMBORst".Rem IS '평가자의견';
COMMENT ON COLUMN "_THREvalMBORst".IsEnd IS '완료여부';
COMMENT ON COLUMN "_THREvalMBORst".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THREvalMBORst".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_THREvalMBORst".TotGrdSeq IS '종합점수등급';
COMMENT ON COLUMN "_THREvalMBORst".AdjGrdSeq IS '조정점수등급';
COMMENT ON COLUMN "_THREvalMBORst".FileSeq IS '파일';
COMMENT ON TABLE  "_THREvalMSideRst" IS '다면평가결과';
COMMENT ON COLUMN "_THREvalMSideRst".CompanySeq IS '법인코드';
COMMENT ON COLUMN "_THREvalMSideRst".EvalYyRev IS '평가년도차수';
COMMENT ON COLUMN "_THREvalMSideRst".SMEvalSeq IS '평가유형';
COMMENT ON COLUMN "_THREvalMSideRst".EmpSeq IS '피평가자사원코드';
COMMENT ON COLUMN "_THREvalMSideRst".EvalEmpSeq IS '평가자사원코드';
COMMENT ON COLUMN "_THREvalMSideRst".SMEvalStepSeq IS '평가단계';
COMMENT ON COLUMN "_THREvalMSideRst".Rank IS '순위';
COMMENT ON COLUMN "_THREvalMSideRst".TotScore IS '총점수';
COMMENT ON COLUMN "_THREvalMSideRst".AdjScore IS '환산점수';
COMMENT ON COLUMN "_THREvalMSideRst".Rem IS '평가자의견';
COMMENT ON COLUMN "_THREvalMSideRst".IsEnd IS '완료여부';
COMMENT ON COLUMN "_THREvalMSideRst".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THREvalMSideRst".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_THREvalMSideRst".TotGrdSeq IS '종합점수등급';
COMMENT ON COLUMN "_THREvalMSideRst".AdjGrdSeq IS '조정점수등급';
COMMENT ON COLUMN "_THREvalMSideRst".SMExecptSeq IS '최고값최저값제외';
COMMENT ON TABLE  "_THREvalStepRst" IS '역량평가결과';
COMMENT ON COLUMN "_THREvalStepRst".CompanySeq IS '법인코드';
COMMENT ON COLUMN "_THREvalStepRst".EvalYyRev IS '평가년도차수';
COMMENT ON COLUMN "_THREvalStepRst".SMEvalSeq IS '평가유형';
COMMENT ON COLUMN "_THREvalStepRst".EvalEmpSeq IS '평가자사원코드';
COMMENT ON COLUMN "_THREvalStepRst".EmpSeq IS '피평가자사원코드';
COMMENT ON COLUMN "_THREvalStepRst".SMEvalStepSeq IS '평가단계';
COMMENT ON COLUMN "_THREvalStepRst".Rank IS '순위';
COMMENT ON COLUMN "_THREvalStepRst".TotScore IS '총점수';
COMMENT ON COLUMN "_THREvalStepRst".AdjScore IS '환산점수';
COMMENT ON COLUMN "_THREvalStepRst".Rem IS '평가자의견';
COMMENT ON COLUMN "_THREvalStepRst".IsEnd IS '완료여부';
COMMENT ON COLUMN "_THREvalStepRst".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THREvalStepRst".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_THREvalStepRst".TotGrdSeq IS '종합점수등급';
COMMENT ON COLUMN "_THREvalStepRst".AdjGrdSeq IS '조정점수등급';
COMMENT ON TABLE  "_THREvalTotYyEmpScore" IS '종합평가평가유형별점수';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".CompanySeq IS '법인코드';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".EvalYy IS '평가년도';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".SMEvalSeq IS '평가유형';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".Ratio IS '가중치';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".TotScore IS '총점수';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".FinalScore IS '최종점수';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".AdjScore IS '조정점수';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THREvalTotYyEmpScore".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_THROrgDeptLast" IS '최종부서조직';
COMMENT ON COLUMN "_THROrgDeptLast".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_THROrgDeptLast".OrgType IS '조직구분';
COMMENT ON COLUMN "_THROrgDeptLast".DeptSeq IS '부서내부코드';
COMMENT ON COLUMN "_THROrgDeptLast".UppDeptSeq IS '상위부서';
COMMENT ON COLUMN "_THROrgDeptLast".BegDate IS '시작일';
COMMENT ON COLUMN "_THROrgDeptLast".EndDate IS '종료일';
COMMENT ON COLUMN "_THROrgDeptLast".UMDeptLevel IS '부서레벨';
COMMENT ON COLUMN "_THROrgDeptLast".DispSeq IS '순서';
COMMENT ON COLUMN "_THROrgDeptLast".OrgCd IS '조직코드';
COMMENT ON COLUMN "_THROrgDeptLast".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THROrgDeptLast".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_THRWelSchEmp" IS '학자금내역';
COMMENT ON COLUMN "_THRWelSchEmp".CompanySeq IS '법인코드';
COMMENT ON COLUMN "_THRWelSchEmp".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_THRWelSchEmp".Seq IS '일련번호';
COMMENT ON COLUMN "_THRWelSchEmp".SchSeq IS '학자금코드';
COMMENT ON COLUMN "_THRWelSchEmp".FamilySeq IS '가족일련번호';
COMMENT ON COLUMN "_THRWelSchEmp".ChildResidID IS '주민등록번호';
COMMENT ON COLUMN "_THRWelSchEmp".AppDate IS '신청일자';
COMMENT ON COLUMN "_THRWelSchEmp".Yy IS '대상년도';
COMMENT ON COLUMN "_THRWelSchEmp".PaySortSeq IS '지급종류코드';
COMMENT ON COLUMN "_THRWelSchEmp".SchoolName IS '학교';
COMMENT ON COLUMN "_THRWelSchEmp".MajorName IS '학과';
COMMENT ON COLUMN "_THRWelSchEmp".SchoolGrade IS '학년';
COMMENT ON COLUMN "_THRWelSchEmp".SchoolScore IS '학점';
COMMENT ON COLUMN "_THRWelSchEmp".AppAmt IS '납입액';
COMMENT ON COLUMN "_THRWelSchEmp".PayRate IS '지급율';
COMMENT ON COLUMN "_THRWelSchEmp".PayAmt IS '지급액';
COMMENT ON COLUMN "_THRWelSchEmp".Scholarship IS '장학금';
COMMENT ON COLUMN "_THRWelSchEmp".PayDate IS '지급일자';
COMMENT ON COLUMN "_THRWelSchEmp".PbYm IS '적용년월';
COMMENT ON COLUMN "_THRWelSchEmp".PbSeq IS '급상여구분';
COMMENT ON COLUMN "_THRWelSchEmp".AppSeq IS '신청일련번호';
COMMENT ON COLUMN "_THRWelSchEmp".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_THRWelSchEmp".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPEAcCause" IS '공기업 지출원인행위';
COMMENT ON COLUMN "_TPEAcCause".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcCause".CauseSeq IS '원인행위내부코드';
COMMENT ON COLUMN "_TPEAcCause".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEAcCause".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEAcCause".CauseDate IS '원인행위일';
COMMENT ON COLUMN "_TPEAcCause".DeptSeq IS '발의부서';
COMMENT ON COLUMN "_TPEAcCause".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEAcCause".EmpSeq IS '발의담당자';
COMMENT ON COLUMN "_TPEAcCause".SMExpKind IS '지출예산구분';
COMMENT ON COLUMN "_TPEAcCause".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEAcCause".SMExpType IS '지출구분';
COMMENT ON COLUMN "_TPEAcCause".CauseName IS '원인행위명';
COMMENT ON COLUMN "_TPEAcCause".CauseRsn IS '원인행위사유';
COMMENT ON COLUMN "_TPEAcCause".DraftSeq IS '품의내부코드';
COMMENT ON COLUMN "_TPEAcCause".OrgDraftSeq IS '원천품의내부코드';
COMMENT ON COLUMN "_TPEAcCause".OrgCauseSeq IS '원천원인행위내부코드';
COMMENT ON COLUMN "_TPEAcCause".IsNew IS '신규여부';
COMMENT ON COLUMN "_TPEAcCause".BizBgtAmt IS '사업편성예산';
COMMENT ON COLUMN "_TPEAcCause".BizBgtExcAmt IS '사업집행예산';
COMMENT ON COLUMN "_TPEAcCause".BizBgtAsgnAmt IS '사업배정액';
COMMENT ON COLUMN "_TPEAcCause".BizBgtAsgnExcAmt IS '사업배정집행액';
COMMENT ON COLUMN "_TPEAcCause".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcCause".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPEAcCause".BizBgtReduceAmt IS '사업절감목표';
COMMENT ON COLUMN "_TPEAcCause".IsConfirm IS '확정여부';
COMMENT ON COLUMN "_TPEAcCause".BatchYN IS '지출원인행위등록여부';
COMMENT ON COLUMN "_TPEAcCause".CauseNo IS '원인행위번호';
COMMENT ON COLUMN "_TPEAcCause".AccUnit IS '회계단위';
COMMENT ON TABLE  "_TPEAcCauseItem" IS '공기업 지출원인행위품목';
COMMENT ON COLUMN "_TPEAcCauseItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcCauseItem".CauseSeq IS '원인행위내부코드';
COMMENT ON COLUMN "_TPEAcCauseItem".Serl IS '순번';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtItemSeq IS '편성목코드';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtItemAmt IS '편성목편성예산';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtItemExcAmt IS '편성목집행예산';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtItemAsgnAmt IS '편성목배정액';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtItemAsgnExcAmt IS '편성목배정집행액';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtClassSeq IS '통계목코드';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtClassAmt IS '통계목편성예산';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtClassExcAmt IS '통계목집행예산';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtClassAsgnAmt IS '통계목배정액';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtClassAsgnExcAmt IS '통계목배정집행액';
COMMENT ON COLUMN "_TPEAcCauseItem".CauseItemName IS '세부내역';
COMMENT ON COLUMN "_TPEAcCauseItem".CauseAmt IS '원인금액';
COMMENT ON COLUMN "_TPEAcCauseItem".Remark IS '비고';
COMMENT ON COLUMN "_TPEAcCauseItem".AccSeq IS '계정과목';
COMMENT ON COLUMN "_TPEAcCauseItem".CustSeq IS '거래처';
COMMENT ON COLUMN "_TPEAcCauseItem".IsBigCust IS '대량거래처여부';
COMMENT ON COLUMN "_TPEAcCauseItem".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcCauseItem".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtItemReduceAmt IS '편성목목표절감액';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtClassReduceAmt IS '통계목목표절감액';
COMMENT ON COLUMN "_TPEAcCauseItem".DetlBizSeq IS '세부사업코드';
COMMENT ON COLUMN "_TPEAcCauseItem".BizBgtAmt IS '사업편성예산';
COMMENT ON COLUMN "_TPEAcCauseItem".BizBgtExcAmt IS '사업집행예산';
COMMENT ON COLUMN "_TPEAcCauseItem".BizBgtAsgnAmt IS '사업배정액';
COMMENT ON COLUMN "_TPEAcCauseItem".BizBgtAsgnExcAmt IS '사업배정집행액';
COMMENT ON COLUMN "_TPEAcCauseItem".BizBgtReduceAmt IS '사업절감목표';
COMMENT ON COLUMN "_TPEAcCauseItem".DraftSerl IS '품의순번';
COMMENT ON COLUMN "_TPEAcCauseItem".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEAcCauseItem".BgtDeptSeq IS '예산부서';
COMMENT ON COLUMN "_TPEAcCauseItem".SourceDiv IS '원천구분';
COMMENT ON COLUMN "_TPEAcCauseItem".SourceSeq IS '원천순번';
COMMENT ON TABLE  "_TPEAcContract" IS '공기업 계약';
COMMENT ON COLUMN "_TPEAcContract".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcContract".ContractSeq IS '계약내부코드';
COMMENT ON COLUMN "_TPEAcContract".ContractYY IS '계약년도';
COMMENT ON COLUMN "_TPEAcContract".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEAcContract".ContractNo IS '계약번호(외부코드)';
COMMENT ON COLUMN "_TPEAcContract".ContractName IS '계약명';
COMMENT ON COLUMN "_TPEAcContract".SMContractKind IS '계약종류';
COMMENT ON COLUMN "_TPEAcContract".UMContractType IS '계약유형';
COMMENT ON COLUMN "_TPEAcContract".UMContractMeth IS '계약방법';
COMMENT ON COLUMN "_TPEAcContract".UMContractMethSub IS '계약방법사유';
COMMENT ON COLUMN "_TPEAcContract".ContractDrDate IS '발의일자';
COMMENT ON COLUMN "_TPEAcContract".ContractDate IS '계약일                ';
COMMENT ON COLUMN "_TPEAcContract".ContractInspDate IS '최종검수일';
COMMENT ON COLUMN "_TPEAcContract".ContractPlanDate IS '준공(납품)예정일';
COMMENT ON COLUMN "_TPEAcContract".BizDeptSeq IS '사업주관부서';
COMMENT ON COLUMN "_TPEAcContract".BizEmpSeq IS '사업담당자';
COMMENT ON COLUMN "_TPEAcContract".ContractEmpSeq IS '계약담당자';
COMMENT ON COLUMN "_TPEAcContract".InspEmpSeq IS '검사담당자';
COMMENT ON COLUMN "_TPEAcContract".DraftSeq IS '품의번호';
COMMENT ON COLUMN "_TPEAcContract".CauseSeq IS '원인행위번호';
COMMENT ON COLUMN "_TPEAcContract".ContractFirstAmt IS '최초계약액';
COMMENT ON COLUMN "_TPEAcContract".ContractSummary IS '계약사업개요';
COMMENT ON COLUMN "_TPEAcContract".BizStartDate IS '착공일자';
COMMENT ON COLUMN "_TPEAcContract".ContractExpireDate IS '실준공일(실납품일)';
COMMENT ON COLUMN "_TPEAcContract".DVPlace IS '납품장소';
COMMENT ON COLUMN "_TPEAcContract".Law IS '관련법규';
COMMENT ON COLUMN "_TPEAcContract".UMItemGroup IS '품목군';
COMMENT ON COLUMN "_TPEAcContract".CustSeq IS '주계약자(업체)';
COMMENT ON COLUMN "_TPEAcContract".ERCustSeq IS '설계업체';
COMMENT ON COLUMN "_TPEAcContract".InspCustSeq IS '감리업체';
COMMENT ON COLUMN "_TPEAcContract".WarrentyPeriod IS '담보기간';
COMMENT ON COLUMN "_TPEAcContract".DelayRate IS '지체상율';
COMMENT ON COLUMN "_TPEAcContract".ContractPoint IS '주요사항';
COMMENT ON COLUMN "_TPEAcContract".AttachData IS '붙임서류';
COMMENT ON COLUMN "_TPEAcContract".AttachData2 IS '붙임서류2';
COMMENT ON COLUMN "_TPEAcContract".ContractPeriodDate IS '계약납기일';
COMMENT ON COLUMN "_TPEAcContract".IsChecked IS '검수확인';
COMMENT ON COLUMN "_TPEAcContract".AcEmpSeq IS '회계책임자';
COMMENT ON COLUMN "_TPEAcContract".IsVAT IS '부가세포함';
COMMENT ON COLUMN "_TPEAcContract".InsectionNo IS '검사번호';
COMMENT ON COLUMN "_TPEAcContract".InsectionRemark IS '검수내역';
COMMENT ON COLUMN "_TPEAcContract".BuyReqNo IS '';
COMMENT ON COLUMN "_TPEAcContract".RegGubun IS '';
COMMENT ON COLUMN "_TPEAcContract".WorkRemark IS '사내비고';
COMMENT ON COLUMN "_TPEAcContract".OutRemark IS '사외비고';
COMMENT ON COLUMN "_TPEAcContract".POReqNo IS '구매발주번호';
COMMENT ON COLUMN "_TPEAcContract".IsCoContract IS '공동계약여부';
COMMENT ON COLUMN "_TPEAcContract".BiddingSeq IS '입찰내부코드';
COMMENT ON COLUMN "_TPEAcContract".BiddingSerl IS '입찰차수';
COMMENT ON COLUMN "_TPEAcContract".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcContract".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPEAcCurrDayAmt" IS '공기업일지출현액';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".SMBgtCurrType IS '예산현액구분';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".PayDate IS '지출일';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".AccDeptSeq IS '발의부서';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".BgtItemSeq IS '편성목';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".BgtClassSeq IS '통계목';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".SMExpKind IS '지출구분';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".CurrAmt IS '금액';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcCurrDayAmt".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPEAcDetlBizBankAcc" IS '공기업 사업별계좌';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".BankAccSeq IS '계좌코드';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".BankAccType IS '공통계좌여부';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".InOutType IS '지출/수입구분';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".IsFundAcc IS '자금계좌여부';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".IsDelegateAcc IS '사업대표계좌여부';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".DeptSeq IS '부서코드';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".IsRepresentAcc IS '대표계좌여부';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".SMExpKind IS '예산지출구분';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcDetlBizBankAcc".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPEAcIncoming" IS '공기업수입';
COMMENT ON COLUMN "_TPEAcIncoming".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcIncoming".IncomingSeq IS '수입내부코드';
COMMENT ON COLUMN "_TPEAcIncoming".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEAcIncoming".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEAcIncoming".IncomingDate IS '결의일자';
COMMENT ON COLUMN "_TPEAcIncoming".DeptSeq IS '수입부서';
COMMENT ON COLUMN "_TPEAcIncoming".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEAcIncoming".EmpSeq IS '수입담당자';
COMMENT ON COLUMN "_TPEAcIncoming".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEAcIncoming".UMIncomingKind IS '수입구분';
COMMENT ON COLUMN "_TPEAcIncoming".IncomingName IS '수입내역';
COMMENT ON COLUMN "_TPEAcIncoming".IncomingRsn IS '적요';
COMMENT ON COLUMN "_TPEAcIncoming".IncomingNo IS '수입결의번호';
COMMENT ON COLUMN "_TPEAcIncoming".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TPEAcIncoming".SourceDiv IS '원천구분';
COMMENT ON COLUMN "_TPEAcIncoming".SourceSeq IS '원천코드';
COMMENT ON COLUMN "_TPEAcIncoming".AttachData IS '첨부파일';
COMMENT ON COLUMN "_TPEAcIncoming".SMExpKind IS '예산재원구분';
COMMENT ON COLUMN "_TPEAcIncoming".AccDate IS '회계일자';
COMMENT ON COLUMN "_TPEAcIncoming".SMBgtKind IS 'SMBgtKind';
COMMENT ON COLUMN "_TPEAcIncoming".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcIncoming".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPEAcIncomingItem" IS '공기업수입세부';
COMMENT ON COLUMN "_TPEAcIncomingItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".IncomingSeq IS '수입내부코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".Serl IS '순번';
COMMENT ON COLUMN "_TPEAcIncomingItem".BgtItemSeq IS '편성목코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".BgtClassSeq IS '통계목코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEAcIncomingItem".IncomingAmt IS '수입금액';
COMMENT ON COLUMN "_TPEAcIncomingItem".CurAmt IS '공급가액';
COMMENT ON COLUMN "_TPEAcIncomingItem".CurVat IS '부가세';
COMMENT ON COLUMN "_TPEAcIncomingItem".CustSeq IS '거래처내부코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".EvidSeq IS '증빙내부코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".AccSeq IS '계정내부코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".OppAccSeq IS '상대계정';
COMMENT ON COLUMN "_TPEAcIncomingItem".VatAccSeq IS '부가세계정';
COMMENT ON COLUMN "_TPEAcIncomingItem".BankSeq IS '금융기관지점내부코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".BankAccSeq IS '계좌코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".Remark IS '비고';
COMMENT ON COLUMN "_TPEAcIncomingItem".SlipSeq IS '전표내부코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcIncomingItem".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPEAcIncomingItem".IncomingItemName IS '수입세부내역';
COMMENT ON COLUMN "_TPEAcIncomingItem".TaxDate IS '입금일자';
COMMENT ON COLUMN "_TPEAcIncomingItem".IncomingWay IS '입금방법코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".DetlBizSeq IS '세부사업코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".IsRepay IS '입금처리사용';
COMMENT ON COLUMN "_TPEAcIncomingItem".SourceDiv IS '원천구분';
COMMENT ON COLUMN "_TPEAcIncomingItem".SourceSeq IS '원천코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".BillSeq IS '세금계산서코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".BillSerl IS '세금계산서하위코드';
COMMENT ON COLUMN "_TPEAcIncomingItem".CustBankInfo IS '거래처금융정보';
COMMENT ON COLUMN "_TPEAcIncomingItem".SMVatType IS '부가세종류';
COMMENT ON COLUMN "_TPEAcIncomingItem".Remark2 IS '비고2';
COMMENT ON COLUMN "_TPEAcIncomingItem".UseDeptSeq IS '사용부서';
COMMENT ON COLUMN "_TPEAcIncomingItem".UseEmpSeq IS '사용자';
COMMENT ON TABLE  "_TPEAcMonthClose" IS '공기업지출월마감';
COMMENT ON COLUMN "_TPEAcMonthClose".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcMonthClose".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEAcMonthClose".SMBgtCurrType IS '예산현액구분';
COMMENT ON COLUMN "_TPEAcMonthClose".PayYM IS '지출월';
COMMENT ON COLUMN "_TPEAcMonthClose".IsClose IS '마감여부';
COMMENT ON COLUMN "_TPEAcMonthClose".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcMonthClose".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPEAcOutgoing" IS '공기업지출';
COMMENT ON COLUMN "_TPEAcOutgoing".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcOutgoing".OutgoingSeq IS '지출내부코드';
COMMENT ON COLUMN "_TPEAcOutgoing".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEAcOutgoing".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEAcOutgoing".OutgoingDate IS '지출일자';
COMMENT ON COLUMN "_TPEAcOutgoing".DeptSeq IS '지출부서';
COMMENT ON COLUMN "_TPEAcOutgoing".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEAcOutgoing".EmpSeq IS '지출담당자';
COMMENT ON COLUMN "_TPEAcOutgoing".SMExpKind IS '지출예산구분';
COMMENT ON COLUMN "_TPEAcOutgoing".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEAcOutgoing".SMExpType IS '지출구분';
COMMENT ON COLUMN "_TPEAcOutgoing".OutgoingName IS '지출명';
COMMENT ON COLUMN "_TPEAcOutgoing".OutgoingRsn IS '지출사유';
COMMENT ON COLUMN "_TPEAcOutgoing".CauseSeq IS '원인행위내부코드';
COMMENT ON COLUMN "_TPEAcOutgoing".BatchYN IS '지출원인행위등록여부';
COMMENT ON COLUMN "_TPEAcOutgoing".OutgoingNo IS '지출결의번호';
COMMENT ON COLUMN "_TPEAcOutgoing".AttachData IS '첨부자료';
COMMENT ON COLUMN "_TPEAcOutgoing".IsConfirm IS '확정여부';
COMMENT ON COLUMN "_TPEAcOutgoing".AccUnit IS '회계단위내부코드';
COMMENT ON COLUMN "_TPEAcOutgoing".SourceDiv IS '원천구분';
COMMENT ON COLUMN "_TPEAcOutgoing".SourceSeq IS '원천코드';
COMMENT ON COLUMN "_TPEAcOutgoing".AccDate IS '';
COMMENT ON COLUMN "_TPEAcOutgoing".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcOutgoing".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPEAcOutgoingItem" IS '공기업지출세부';
COMMENT ON COLUMN "_TPEAcOutgoingItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".OutgoingSeq IS '지출내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".Serl IS '순번';
COMMENT ON COLUMN "_TPEAcOutgoingItem".BgtItemSeq IS '편성목코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".BgtClassSeq IS '통계목코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEAcOutgoingItem".SetAmt IS '지출금액';
COMMENT ON COLUMN "_TPEAcOutgoingItem".PayAmt IS '지급명령금액';
COMMENT ON COLUMN "_TPEAcOutgoingItem".CurAmt IS '공급가액';
COMMENT ON COLUMN "_TPEAcOutgoingItem".CurVat IS '부가세';
COMMENT ON COLUMN "_TPEAcOutgoingItem".ChargeAmt IS '수수료';
COMMENT ON COLUMN "_TPEAcOutgoingItem".EvidSeq IS '증빙내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".TaxDate IS '세금계산서일';
COMMENT ON COLUMN "_TPEAcOutgoingItem".NDVATAmt IS '불공제세';
COMMENT ON COLUMN "_TPEAcOutgoingItem".AccSeq IS '계정내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".CustSeq IS '거래처내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".IsBigCust IS '대량거래처여부';
COMMENT ON COLUMN "_TPEAcOutgoingItem".CustBankInfo IS '거래처금융정보';
COMMENT ON COLUMN "_TPEAcOutgoingItem".BankSeq IS '금융기관지점내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".OppAccSeq IS '상대계정';
COMMENT ON COLUMN "_TPEAcOutgoingItem".VatAccSeq IS '부가세계정';
COMMENT ON COLUMN "_TPEAcOutgoingItem".ChargeAccSeq IS '수수료계정';
COMMENT ON COLUMN "_TPEAcOutgoingItem".IsUsePay IS '지급명령 사용여부';
COMMENT ON COLUMN "_TPEAcOutgoingItem".BankAccSeq IS '계좌코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".CardSeq IS '카드내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".Remark IS '비고';
COMMENT ON COLUMN "_TPEAcOutgoingItem".SlipSeq IS '지출전표내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".OnSlipSeq IS '지급명령전표내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".PayOppAccSeq IS '지급상대계정';
COMMENT ON COLUMN "_TPEAcOutgoingItem".PayBankSeq IS '지급금융기관지점내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".PayBankAccSeq IS '지급계좌코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".PayCardSeq IS '지급카드내부코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".PayRemark IS '지급비고';
COMMENT ON COLUMN "_TPEAcOutgoingItem".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEAcOutgoingItem".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPEAcOutgoingItem".PayDate IS '지급명령일';
COMMENT ON COLUMN "_TPEAcOutgoingItem".PaymentWay IS '지급방법';
COMMENT ON COLUMN "_TPEAcOutgoingItem".DetlBizSeq IS '세부사업코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".CauseSerl IS '원인행위순번';
COMMENT ON COLUMN "_TPEAcOutgoingItem".CustText IS '거래처(Text)';
COMMENT ON COLUMN "_TPEAcOutgoingItem".UMCostType IS '비용구분코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".SourceDiv IS '원천구분';
COMMENT ON COLUMN "_TPEAcOutgoingItem".SourceSeq IS '원천코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".IsFundAssign IS '자금배정사용';
COMMENT ON COLUMN "_TPEAcOutgoingItem".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".ExpectedPayDate IS '출납예정일';
COMMENT ON COLUMN "_TPEAcOutgoingItem".TaxAmt IS '예수금';
COMMENT ON COLUMN "_TPEAcOutgoingItem".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEAcOutgoingItem".BgtDeptSeq IS '예산부서';
COMMENT ON COLUMN "_TPEAcOutgoingItem".SMVatType IS '부가세종류';
COMMENT ON COLUMN "_TPEAcOutgoingItem".NDVATSeq IS '부가세구분';
COMMENT ON COLUMN "_TPEAcOutgoingItem".PaymentNo IS '지급명령번호';
COMMENT ON COLUMN "_TPEAcOutgoingItem".SpeciExpensUser IS 'SpeciExpensUser';
COMMENT ON COLUMN "_TPEAcOutgoingItem".VatCustSeq IS '부가세거래처코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".BizNoText IS '거래처사업자번호(Text)';
COMMENT ON COLUMN "_TPEAcOutgoingItem".SourceDetlBizSeq IS '원천세부사업';
COMMENT ON COLUMN "_TPEAcOutgoingItem".EvidFileSeq IS '증빙파일코드';
COMMENT ON COLUMN "_TPEAcOutgoingItem".EvidFileName IS '증빙파일명';
COMMENT ON COLUMN "_TPEAcOutgoingItem".BizExpSeq IS '사업비내부순번';
COMMENT ON COLUMN "_TPEAcOutgoingItem".UMSBgtItemSeq IS '세세목코드';
COMMENT ON TABLE  "_TPEBasAttachDept" IS '공기업 예산소속부서';
COMMENT ON COLUMN "_TPEBasAttachDept".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBasAttachDept".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBasAttachDept".BgtDeptSeq IS '예산부서내부코드';
COMMENT ON COLUMN "_TPEBasAttachDept".AttachDeptSeq IS '소속부서';
COMMENT ON COLUMN "_TPEBasAttachDept".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBasAttachDept".LastDateTime IS '작성일시';
COMMENT ON TABLE  "_TPEBasBgtDept" IS '공기업 예산부서';
COMMENT ON COLUMN "_TPEBasBgtDept".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBasBgtDept".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBasBgtDept".BgtDeptSeq IS '예산부서내부코드';
COMMENT ON COLUMN "_TPEBasBgtDept".DispSort IS '출력순서';
COMMENT ON COLUMN "_TPEBasBgtDept".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBasBgtDept".LastDateTime IS '작성일시';
COMMENT ON TABLE  "_TPEBgtCfm" IS '공기업 예산편성';
COMMENT ON COLUMN "_TPEBgtCfm".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtCfm".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtCfm".SMBgtType IS '예산구분';
COMMENT ON COLUMN "_TPEBgtCfm".CompileDeg IS '편성차수';
COMMENT ON COLUMN "_TPEBgtCfm".CompileDesc IS '편성내용';
COMMENT ON COLUMN "_TPEBgtCfm".ApplyDate IS '적용일';
COMMENT ON COLUMN "_TPEBgtCfm".IsCfm IS '확정여부';
COMMENT ON COLUMN "_TPEBgtCfm".Remark IS '비고';
COMMENT ON COLUMN "_TPEBgtCfm".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtCfm".LastDateTime IS '작성일시';
COMMENT ON COLUMN "_TPEBgtCfm".PreAppIsCfm IS '성립전적용여부';
COMMENT ON COLUMN "_TPEBgtCfm".PreDemdDeg IS '성립전요구차수';
COMMENT ON TABLE  "_TPEBgtChgBulk" IS '공기업 예산일괄변경';
COMMENT ON COLUMN "_TPEBgtChgBulk".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtChgBulk".ChgBulkSeq IS '일괄변경내부코드';
COMMENT ON COLUMN "_TPEBgtChgBulk".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtChgBulk".SMExpKind IS '재원구분';
COMMENT ON COLUMN "_TPEBgtChgBulk".ChgBulkDate IS '일괄변경일';
COMMENT ON COLUMN "_TPEBgtChgBulk".ChgBulkDesc IS '일괄변경내역';
COMMENT ON COLUMN "_TPEBgtChgBulk".IsCfm IS '확정여부';
COMMENT ON COLUMN "_TPEBgtChgBulk".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtChgBulk".LastDateTime IS '작성일시';
COMMENT ON TABLE  "_TPEBgtChgBulkItem" IS '공기업 예산일괄변경세부';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".ChgBulkSeq IS '일괄변경내부코드';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".Serl IS '순번';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".UMObjType IS '변경대상';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".AccDeptSeq IS '발의부서';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".BgtItemSeq IS '편성목';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".BgtClassSeq IS '통계목';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".BgtAmt IS '예산액';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".ExcAmt IS '예산집행액';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".ChgAmt IS '변경금액';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtChgBulkItem".LastDateTime IS '작성일시';
COMMENT ON TABLE  "_TPEBgtCompile" IS '공기업 요구예산편성';
COMMENT ON COLUMN "_TPEBgtCompile".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtCompile".DemdSeq IS '편성내부코드';
COMMENT ON COLUMN "_TPEBgtCompile".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtCompile".SMBgtType IS '예산구분';
COMMENT ON COLUMN "_TPEBgtCompile".SMBgtCate IS '예산유형';
COMMENT ON COLUMN "_TPEBgtCompile".CompileDeg IS '편성차수';
COMMENT ON COLUMN "_TPEBgtCompile".DemdDeg IS '요구차수';
COMMENT ON COLUMN "_TPEBgtCompile".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEBgtCompile".AccDeptSeq IS '발의부서';
COMMENT ON COLUMN "_TPEBgtCompile".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEBgtCompile".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEBgtCompile".BgtItemSeq IS '편성목';
COMMENT ON COLUMN "_TPEBgtCompile".BgtClassSeq IS '통계목';
COMMENT ON COLUMN "_TPEBgtCompile".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEBgtCompile".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtCompile".LastDateTime IS '작성일시';
COMMENT ON COLUMN "_TPEBgtCompile".AppPgmSeq IS '화면코드';
COMMENT ON COLUMN "_TPEBgtCompile".SourceSeq IS '원천코드';
COMMENT ON TABLE  "_TPEBgtCurrAmt" IS '공기업 지출예산현액';
COMMENT ON COLUMN "_TPEBgtCurrAmt".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtCurrAmt".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtCurrAmt".SMBgtCurrType IS '예산현액구분';
COMMENT ON COLUMN "_TPEBgtCurrAmt".BgtDate IS '적용일';
COMMENT ON COLUMN "_TPEBgtCurrAmt".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEBgtCurrAmt".AccDeptSeq IS '발의부서';
COMMENT ON COLUMN "_TPEBgtCurrAmt".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEBgtCurrAmt".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEBgtCurrAmt".BgtItemSeq IS '편성목';
COMMENT ON COLUMN "_TPEBgtCurrAmt".BgtClassSeq IS '통계목';
COMMENT ON COLUMN "_TPEBgtCurrAmt".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEBgtCurrAmt".SMExpKind IS '지출구분';
COMMENT ON COLUMN "_TPEBgtCurrAmt".CurrAmt IS '금액';
COMMENT ON COLUMN "_TPEBgtCurrAmt".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEBgtCurrAmt".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPEBgtCurrAmt".CompileDeg IS '편성차수';
COMMENT ON TABLE  "_TPEBgtDetlBiz" IS '공기업 예산세부사업';
COMMENT ON COLUMN "_TPEBgtDetlBiz".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtDetlBiz".DetlBizSeq IS '세부사업내부코드';
COMMENT ON COLUMN "_TPEBgtDetlBiz".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtDetlBiz".PolicyBizSeq IS '정책사업내부코드';
COMMENT ON COLUMN "_TPEBgtDetlBiz".UnitBizSeq IS '단위사업내부코드';
COMMENT ON COLUMN "_TPEBgtDetlBiz".DetlBizNo IS '세부사업외부코드';
COMMENT ON COLUMN "_TPEBgtDetlBiz".DetlBizName IS '세부사업명';
COMMENT ON COLUMN "_TPEBgtDetlBiz".DeptSeq IS '부서내부코드';
COMMENT ON COLUMN "_TPEBgtDetlBiz".UMDriveType IS '추진여부';
COMMENT ON COLUMN "_TPEBgtDetlBiz".SMDetlUnBiz IS '세부비사업구분';
COMMENT ON COLUMN "_TPEBgtDetlBiz".UMAccKind IS '회계구분';
COMMENT ON COLUMN "_TPEBgtDetlBiz".UMBizKind IS '사업구분';
COMMENT ON COLUMN "_TPEBgtDetlBiz".BizAmt IS '당해년도사업비';
COMMENT ON COLUMN "_TPEBgtDetlBiz".TotalAmt IS '총사업비';
COMMENT ON COLUMN "_TPEBgtDetlBiz".SMBizMethod IS '사업유형';
COMMENT ON COLUMN "_TPEBgtDetlBiz".SMBizType IS '사업형태';
COMMENT ON COLUMN "_TPEBgtDetlBiz".UMSupportType IS '지원형태';
COMMENT ON COLUMN "_TPEBgtDetlBiz".BizBegDate IS '사업시작일';
COMMENT ON COLUMN "_TPEBgtDetlBiz".BizEndDate IS '사업종료일';
COMMENT ON COLUMN "_TPEBgtDetlBiz".IsConsign IS '수탁사업여부';
COMMENT ON COLUMN "_TPEBgtDetlBiz".BizAim IS '사업목적';
COMMENT ON COLUMN "_TPEBgtDetlBiz".BizSize IS '사업규모';
COMMENT ON COLUMN "_TPEBgtDetlBiz".BizCont IS '사업내용';
COMMENT ON COLUMN "_TPEBgtDetlBiz".SupportCont IS '지원조건';
COMMENT ON COLUMN "_TPEBgtDetlBiz".DriveGrounds IS '추진근거';
COMMENT ON COLUMN "_TPEBgtDetlBiz".EnforceSubject IS '시행주체';
COMMENT ON COLUMN "_TPEBgtDetlBiz".SMWorkingStatus IS '진행상태';
COMMENT ON COLUMN "_TPEBgtDetlBiz".DispSort IS '순서';
COMMENT ON COLUMN "_TPEBgtDetlBiz".ReqEmpSeq IS '요청자';
COMMENT ON COLUMN "_TPEBgtDetlBiz".ReqDate IS '요청일';
COMMENT ON COLUMN "_TPEBgtDetlBiz".SetEmpSeq IS '확정자';
COMMENT ON COLUMN "_TPEBgtDetlBiz".SetDate IS '확정일';
COMMENT ON COLUMN "_TPEBgtDetlBiz".CCtrSeq IS '활동센터코드';
COMMENT ON COLUMN "_TPEBgtDetlBiz".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtDetlBiz".LastDateTime IS '작성일시';
COMMENT ON COLUMN "_TPEBgtDetlBiz".BgtInComing IS '수입예산사용';
COMMENT ON COLUMN "_TPEBgtDetlBiz".BgtOutComing IS '지출예산사용';
COMMENT ON COLUMN "_TPEBgtDetlBiz".FileSeq IS '파일순번';
COMMENT ON COLUMN "_TPEBgtDetlBiz".IsFundAssign IS '자금배정사용여부';
COMMENT ON COLUMN "_TPEBgtDetlBiz".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TPEBgtDetlBiz".IsEnd IS '마감여부';
COMMENT ON COLUMN "_TPEBgtDetlBiz".IsEndEmpSeq IS '마감담당자';
COMMENT ON COLUMN "_TPEBgtDetlBiz".BgtCurrYN IS '예산미통제';
COMMENT ON COLUMN "_TPEBgtDetlBiz".DetlAgencyCode IS '세부사업기관코드';
COMMENT ON COLUMN "_TPEBgtDetlBiz".SubjSeq IS '연구과제내부코드';
COMMENT ON TABLE  "_TPEBgtDetlBizCardAcc" IS '공기업 예산사업별카드';
COMMENT ON COLUMN "_TPEBgtDetlBizCardAcc".CompanySeq IS '회사내부코드';
COMMENT ON COLUMN "_TPEBgtDetlBizCardAcc".CardSeq IS '카드코드';
COMMENT ON COLUMN "_TPEBgtDetlBizCardAcc".AccYY IS '회계년도';
COMMENT ON COLUMN "_TPEBgtDetlBizCardAcc".DetlBizSeq IS '세부사업코드';
COMMENT ON COLUMN "_TPEBgtDetlBizCardAcc".DeptSeq IS '사용부서코드';
COMMENT ON COLUMN "_TPEBgtDetlBizCardAcc".IsCommon IS '공통여부';
COMMENT ON COLUMN "_TPEBgtDetlBizCardAcc".BgtDeptSeq IS '예산부서';
COMMENT ON COLUMN "_TPEBgtDetlBizCardAcc".LastUserSeq IS '최종작업자';
COMMENT ON COLUMN "_TPEBgtDetlBizCardAcc".LastDateTime IS '최종작업일';
COMMENT ON TABLE  "_TPEBgtDetlBizEmp" IS '공기업 예산세부사업 담당자';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".DetlBizSeq IS '세부사업내부코드';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".Serl IS '순번';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".UMMgtType IS '담당구분';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".EmpSeq IS '담당자';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".BegDate IS '사업담당일';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".Remark IS '비고';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtDetlBizEmp".LastDateTime IS '작성일시';
COMMENT ON TABLE  "_TPEBgtForwd" IS '공기업 예산이월';
COMMENT ON COLUMN "_TPEBgtForwd".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtForwd".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtForwd".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEBgtForwd".AccDeptSeq IS '발의부서';
COMMENT ON COLUMN "_TPEBgtForwd".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEBgtForwd".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEBgtForwd".BgtItemSeq IS '편성목';
COMMENT ON COLUMN "_TPEBgtForwd".BgtClassSeq IS '통계목';
COMMENT ON COLUMN "_TPEBgtForwd".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEBgtForwd".SMForwdType IS '이월예산구분';
COMMENT ON COLUMN "_TPEBgtForwd".ForwdDesc IS '이월내역';
COMMENT ON COLUMN "_TPEBgtForwd".ForwdAmt IS '이월금액';
COMMENT ON COLUMN "_TPEBgtForwd".IsCfm IS '확정여부';
COMMENT ON COLUMN "_TPEBgtForwd".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtForwd".LastDateTime IS '작성일시';
COMMENT ON TABLE  "_TPEBgtInCurrAmt" IS '공기업 수입예산현액';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".SMBgtCurrType IS '예산현액구분';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".BgtDate IS '적용일';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".AccDeptSeq IS '발의부서';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".BgtItemSeq IS '편성목';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".BgtClassSeq IS '통계목';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".SMExpKind IS '지출구분';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".CurrAmt IS '금액';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPEBgtInCurrAmt".CompileDeg IS '편성차수';
COMMENT ON TABLE  "_TPEBgtMultiBgtItem" IS '공기업 예산멀티계정등록';
COMMENT ON COLUMN "_TPEBgtMultiBgtItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtMultiBgtItem".MultiConnSeq IS '멀티연결내부코드';
COMMENT ON COLUMN "_TPEBgtMultiBgtItem".ConnBgtItemSeq IS '연결예산코드';
COMMENT ON COLUMN "_TPEBgtMultiBgtItem".ConnAccSeq IS '계정과목';
COMMENT ON COLUMN "_TPEBgtMultiBgtItem".AccYY IS '예산년도';
COMMENT ON COLUMN "_TPEBgtMultiBgtItem".SMAccConStd IS '계정연결기준';
COMMENT ON COLUMN "_TPEBgtMultiBgtItem".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtMultiBgtItem".LastDateTime IS '작성일시';
COMMENT ON TABLE  "_TPEBgtNonControl" IS '공기업 예산비통제항목등록';
COMMENT ON COLUMN "_TPEBgtNonControl".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtNonControl".NonControlSeq IS '예산비통제';
COMMENT ON COLUMN "_TPEBgtNonControl".SMInOut IS '세입세출구분';
COMMENT ON COLUMN "_TPEBgtNonControl".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtNonControl".BgtDate IS '적용일';
COMMENT ON COLUMN "_TPEBgtNonControl".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEBgtNonControl".AccDeptSeq IS '발의부서';
COMMENT ON COLUMN "_TPEBgtNonControl".BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPEBgtNonControl".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEBgtNonControl".BgtItemSeq IS '편성목';
COMMENT ON COLUMN "_TPEBgtNonControl".BgtClassSeq IS '통계목';
COMMENT ON COLUMN "_TPEBgtNonControl".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEBgtNonControl".IsCfm IS '예산비통제확정';
COMMENT ON COLUMN "_TPEBgtNonControl".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPEBgtNonControl".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPEBgtPolicyBiz" IS '공기업 예산정책사업';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".PolicyBizSeq IS '정책사업내부코드';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".PolicyBizNo IS '정책사업외부코드';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".PolicyBizName IS '정책사업명';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".UMFieldType IS '분야코드';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".UMSectorType IS '부문코드';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".SMUnBizType IS '비사업구분';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".BizAim IS '사업목적';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".Effect IS '기대효과';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".DispSort IS '순서';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".LastDateTime IS '작성일시';
COMMENT ON COLUMN "_TPEBgtPolicyBiz".PolicyAgencyCode IS '정책사업기관코드';
COMMENT ON TABLE  "_TPEBgtUnitBiz" IS '공기업 예산단위사업';
COMMENT ON COLUMN "_TPEBgtUnitBiz".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEBgtUnitBiz".UnitBizSeq IS '단위사업내부코드';
COMMENT ON COLUMN "_TPEBgtUnitBiz".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEBgtUnitBiz".PolicyBizSeq IS '정책사업내부코드';
COMMENT ON COLUMN "_TPEBgtUnitBiz".UnitBizNo IS '단위사업외부코드';
COMMENT ON COLUMN "_TPEBgtUnitBiz".UnitBizName IS '단위사업명';
COMMENT ON COLUMN "_TPEBgtUnitBiz".DeptSeq IS '부서내부코드';
COMMENT ON COLUMN "_TPEBgtUnitBiz".UMDriveType IS '추진구분';
COMMENT ON COLUMN "_TPEBgtUnitBiz".SMUnitUnBiz IS '단위비사업구분';
COMMENT ON COLUMN "_TPEBgtUnitBiz".BizAim IS '사업목적';
COMMENT ON COLUMN "_TPEBgtUnitBiz".BizScale IS '사업규모';
COMMENT ON COLUMN "_TPEBgtUnitBiz".BizCont IS '사업내용';
COMMENT ON COLUMN "_TPEBgtUnitBiz".DriveGrounds IS '추진근거';
COMMENT ON COLUMN "_TPEBgtUnitBiz".SMWorkingStatus IS '진행상태';
COMMENT ON COLUMN "_TPEBgtUnitBiz".DispSort IS '순서';
COMMENT ON COLUMN "_TPEBgtUnitBiz".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEBgtUnitBiz".LastDateTime IS '작성일시';
COMMENT ON COLUMN "_TPEBgtUnitBiz".UnitAgencyCode IS '단위사업기관코드';
COMMENT ON TABLE  "_TPEEstblsdBgtCompile" IS '공기업 추경기정편성';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".EstablishedSeq IS '기정내부코드';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".SourceSeq IS '원천코드';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".AccYY IS '회계연도';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".SMBgtType IS '예산구분';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".SMBgtCate IS '예산유형';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".CompileDeg IS '편성차수';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".DemdDeg IS '요구차수';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".BizUnit IS '사업부문';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".AccDeptSeq IS '발의부서';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".BgtDeptSeq IS '예산관리단위';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".DetlBizSeq IS '세부사업';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".BgtItemSeq IS '편성목';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".BgtClassSeq IS '통계목';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".BgtClassName IS '통계목명';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".AppPgmSeq IS '화면코드';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".LastDateTime IS '작성일시';
COMMENT ON COLUMN "_TPEEstblsdBgtCompile".BaseSourceSeq IS '기준원천코드';
COMMENT ON TABLE  "_TPEEstblsdBgtCompileItem" IS '공기업 추경기정편성세부';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".EstablishedSeq IS '기정내부코드';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".EstablishedSerl IS '기정순번';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".SourceSeq IS '원천코드';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".SourceSerl IS '원천순번';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".DemdNo IS '편성번호';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".HigDemdNo IS '상위편성번호';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".AdiDispSort IS '조정출력순번';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".UMAdjCompType IS '조정산출근거구분';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".AdjCompGround IS '조정산출근거';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".AdjCompFormular IS '조정산출근거식';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".AdjAmt IS '조정금액';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".IsAdjAmtReg IS '조정금액기표여부';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".IsNewAddAdj IS '조정신규추가여부';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".LastUserSeq IS '작성자';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".LastDateTime IS '작성일시';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".SMBgtType IS '예산구분';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".CompileDeg IS '편성차수';
COMMENT ON COLUMN "_TPEEstblsdBgtCompileItem".DemdDeg IS '요구차수';
COMMENT ON TABLE  "_TPRAdjIncomeEtc" IS '자유직업기타소득';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".Serl IS '일련번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".TaxUnit IS '사업자번호내부코드';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".InhabitantsBizSeq IS '주민세사업장';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".YM IS '귀속연월';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".CustSeq IS '거래처내부코드';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".SMDomForSeq IS '국내외구분';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".SMResidenceSeq IS '거주구분';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".UMNationalSeq IS '거주국가';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".SMIncomeDivSeq IS '소득자구분';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".PayDate IS '지급일';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".WithholdDate IS '원천징수일';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".Amt IS '지급액';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".ExpnsAmt IS '필요경비';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".InComeAmt IS '소득금액';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".TaxRate IS '세율';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".IncomeTax IS '소득세';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".InhabitantsTax IS '주민세';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".CorpTax IS '법인세';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".FarmTax IS '농특세';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".Remark IS '비고';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".CustName IS '상호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".BizNo IS '사업자등록번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".Owner IS '성명';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".Personid IS '주민등록번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".BizAddr IS '주소';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".TelNo IS '연락처';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".SMBizPers IS '법인/개인';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".LawRegNo IS '법인등록번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".SMInputType IS '입력방법';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".BankInAmt IS '통장입금액';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".SlipSeq IS '전표번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".UMCostType IS '비용구분';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".CostDeptSeq IS '비용부서';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".CostCCtrSeq IS '비용활동센터';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".LinkTableName IS '링크테이블명';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".LinkSeq IS '링크일련번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".UMAccGrpSeq IS '회계처리그룹정의코드';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".ReducTaxCause IS '세액감면근거';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".ProgFromTableSeq IS '원천테이블번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".ProgFromSeq IS '원천번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".ProgFromSerl IS '원천순번';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".ProgFromSubSerl IS '원천하부순번';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".InvestNo IS '투자등록번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".BankAccNo IS '계좌번호';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".UMBankHQ IS '금융기관코드';
COMMENT ON COLUMN "_TPRAdjIncomeEtc".AccOwner IS '예금주';
COMMENT ON TABLE  "_TPRAdjWithHoldRep" IS '원천징수이행상황신고';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".BizSeq IS '정산사업장';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".RevertYM IS '귀속연월';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".PayYM IS '지급연월';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".ReportYM IS '신고년월';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".SMReturnType IS '신고구분';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".IsAdj IS '연말정산반영여부';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".IsLump IS '일괄납부여부';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".AdjYY IS '연말정산반영년도';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".OldTaxRebateAmt IS '전월미환급세액';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".OldReqTaxRebateAmt IS '전월기환급신청세액';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".OldBalanceAmt IS '전월차감잔액';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".TaxRebateAmt IS '당월일반환급';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".TrustRebateAmt IS '당월신탁재산환급';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".EtcRebateAmt IS '당월기타환급';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".SettledAmt IS '조정대상환급세액';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".SettledTotAmt IS '당월조정환급세액계';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".ForwardAmt IS '차월이월환급세액';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".ReportDate IS '신고일';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".EtcMergeRebateAmt IS '합병등의 환급세액';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".IsBizUnitTax IS '사업자단위과세여부';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".IsEnd IS '마감여부';
COMMENT ON COLUMN "_TPRAdjWithHoldRep".ReportDiv IS '신고구분';
COMMENT ON TABLE  "_TPRAdjWithHoldRepDtl" IS '원천징수이행상황신고부표';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".BizSeq IS '정산사업장';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".RevertYM IS '귀속연월';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".PayYM IS '지급연월';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".ReportYM IS '신고년월';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".SMHoldRepItemSeq IS '신고항목코드';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".Cnt IS '인원';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".Amt IS '총지급액';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".LevyIncomeTax IS '징수소득세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".LevyFarmTax IS '징수농특세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".LevyPenaltyTax IS '징수가산세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".RebateTax IS '조정환급세액';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".PaymentIncomeTax IS '납부소득세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".PaymentFarmTax IS '납부농특세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRAdjWithHoldRepDtl".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRAdjWithHoldRepItem" IS '원천징수이행상황신고항목';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".BizSeq IS '정산사업장';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".RevertYM IS '귀속연월';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".PayYM IS '지급연월';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".ReportYM IS '신고년월';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".SMHoldRepItemSeq IS '신고항목코드';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".Cnt IS '인원';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".Amt IS '총지급액';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".LevyIncomeTax IS '징수소득세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".LevyFarmTax IS '징수농특세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".LevyPenaltyTax IS '징수가산세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".RebateTax IS '조정환급세액';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".PaymentIncomeTax IS '납부소득세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".PaymentFarmTax IS '납부농특세';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRAdjWithHoldRepItem".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRBasCompositItem" IS '기준구성항목';
COMMENT ON COLUMN "_TPRBasCompositItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRBasCompositItem".YM IS '기준년월';
COMMENT ON COLUMN "_TPRBasCompositItem".SMCompositSeq IS '기준구성일련번호';
COMMENT ON COLUMN "_TPRBasCompositItem".ItemSeq IS '항목코드';
COMMENT ON COLUMN "_TPRBasCompositItem".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRBasCompositItem".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRBasDateBase" IS '급상여일자기준내역';
COMMENT ON COLUMN "_TPRBasDateBase".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRBasDateBase".PuSeq IS '급여작업군';
COMMENT ON COLUMN "_TPRBasDateBase".PbSeq IS '급상여구분';
COMMENT ON COLUMN "_TPRBasDateBase".SMBelongMmSeq IS '귀속월';
COMMENT ON COLUMN "_TPRBasDateBase".SMPayMmSeq IS '지급월';
COMMENT ON COLUMN "_TPRBasDateBase".PayDdCnt IS '지급일';
COMMENT ON COLUMN "_TPRBasDateBase".SMBegMmSeq IS '적용시작월';
COMMENT ON COLUMN "_TPRBasDateBase".BegDdCnt IS '적용시작일';
COMMENT ON COLUMN "_TPRBasDateBase".SMEndMmSeq IS '적용종료월';
COMMENT ON COLUMN "_TPRBasDateBase".EndDdCnt IS '적용종료일';
COMMENT ON COLUMN "_TPRBasDateBase".SMRepMmSeq IS '신고월';
COMMENT ON COLUMN "_TPRBasDateBase".SMBaseMmSeq IS '기준년월';
COMMENT ON COLUMN "_TPRBasDateBase".IsWk IS '근태적용여부';
COMMENT ON COLUMN "_TPRBasDateBase".SMWkBegMmSeq IS '근태시작월';
COMMENT ON COLUMN "_TPRBasDateBase".WkBegDdCnt IS '근태시작일';
COMMENT ON COLUMN "_TPRBasDateBase".SMWkEndMmSeq IS '근태종료월';
COMMENT ON COLUMN "_TPRBasDateBase".WkEndDdCnt IS '근태종료일';
COMMENT ON COLUMN "_TPRBasDateBase".IsExPrb IS '수습자제외여부';
COMMENT ON COLUMN "_TPRBasDateBase".SMBnsType IS '지급방식';
COMMENT ON COLUMN "_TPRBasDateBase".SMObjRange IS '상여대상자범위';
COMMENT ON COLUMN "_TPRBasDateBase".SMTaxBegMmSeq IS '세금적용시작월';
COMMENT ON COLUMN "_TPRBasDateBase".SMTaxEndMmSeq IS '세금적용종료월';
COMMENT ON COLUMN "_TPRBasDateBase".IsBnsLastOrd IS '최종발령상여처리여부';
COMMENT ON COLUMN "_TPRBasDateBase".SMLastOrdEntSeq IS '처리기간중입사자';
COMMENT ON COLUMN "_TPRBasDateBase".SMLastOrdRetSeq IS '처리기간중퇴사자';
COMMENT ON COLUMN "_TPRBasDateBase".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRBasDateBase".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRBasDateBase".TaxApplyRate IS '세금적용율';
COMMENT ON TABLE  "_TPRBasEmpAmt" IS '개인별금액';
COMMENT ON COLUMN "_TPRBasEmpAmt".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRBasEmpAmt".EmpSeq IS '사번';
COMMENT ON COLUMN "_TPRBasEmpAmt".PbSeq IS '급상여구분';
COMMENT ON COLUMN "_TPRBasEmpAmt".ItemSeq IS '급여항목코드';
COMMENT ON COLUMN "_TPRBasEmpAmt".Seq IS '일련번호';
COMMENT ON COLUMN "_TPRBasEmpAmt".BegDate IS '시작일';
COMMENT ON COLUMN "_TPRBasEmpAmt".EndDate IS '종료일';
COMMENT ON COLUMN "_TPRBasEmpAmt".Amt IS '금액';
COMMENT ON COLUMN "_TPRBasEmpAmt".Remark IS '비고';
COMMENT ON COLUMN "_TPRBasEmpAmt".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRBasEmpAmt".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRBasEmpAmt".LinkTableName IS '원천테이블명';
COMMENT ON COLUMN "_TPRBasEmpAmt".LinkSeq IS '원천키';
COMMENT ON COLUMN "_TPRBasEmpAmt".PgmSeq IS '입력화면';
COMMENT ON TABLE  "_TPRBasGrpAmt" IS '그룹별금액';
COMMENT ON COLUMN "_TPRBasGrpAmt".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRBasGrpAmt".YM IS '기준년월';
COMMENT ON COLUMN "_TPRBasGrpAmt".SMAppType IS '적용구분';
COMMENT ON COLUMN "_TPRBasGrpAmt".ItemSeq IS '급여항목코드';
COMMENT ON COLUMN "_TPRBasGrpAmt".PayGrpSeq IS '지급방식그룹';
COMMENT ON COLUMN "_TPRBasGrpAmt".GrpSeq IS '그룹코드';
COMMENT ON COLUMN "_TPRBasGrpAmt".Amt IS '금액';
COMMENT ON COLUMN "_TPRBasGrpAmt".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRBasGrpAmt".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRBasPayItem" IS '급여항목';
COMMENT ON COLUMN "_TPRBasPayItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRBasPayItem".ItemSeq IS '급여항목코드';
COMMENT ON COLUMN "_TPRBasPayItem".ItemName IS '급여항목명';
COMMENT ON COLUMN "_TPRBasPayItem".UMTaxExemptType IS '비과세구분';
COMMENT ON COLUMN "_TPRBasPayItem".SMIsAorD IS '지급공제여부';
COMMENT ON COLUMN "_TPRBasPayItem".SMItemType IS '항목구분';
COMMENT ON COLUMN "_TPRBasPayItem".SMUnitType IS '금액계산방식';
COMMENT ON COLUMN "_TPRBasPayItem".SMUnitLoc IS '금액계산위치';
COMMENT ON COLUMN "_TPRBasPayItem".IsPrevAllow IS '기지급여부';
COMMENT ON COLUMN "_TPRBasPayItem".IsAllowBns IS '인정상여여부';
COMMENT ON COLUMN "_TPRBasPayItem".IsCompanyCost IS '회사부담금여부';
COMMENT ON COLUMN "_TPRBasPayItem".IsObjChk IS '대상체크여부';
COMMENT ON COLUMN "_TPRBasPayItem".IsSystem IS '시스템코드여부';
COMMENT ON COLUMN "_TPRBasPayItem".DispSeq IS '순서';
COMMENT ON COLUMN "_TPRBasPayItem".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRBasPayItem".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRBasPayItem".Remark IS '비고';
COMMENT ON TABLE  "_TPRBasPayMthByYm" IS '항목별지급공제방법';
COMMENT ON COLUMN "_TPRBasPayMthByYm".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRBasPayMthByYm".ItemSeq IS '급여항목코드';
COMMENT ON COLUMN "_TPRBasPayMthByYm".Seq IS '일련번호';
COMMENT ON COLUMN "_TPRBasPayMthByYm".BegYM IS '시작월';
COMMENT ON COLUMN "_TPRBasPayMthByYm".EndYM IS '종료월';
COMMENT ON COLUMN "_TPRBasPayMthByYm".SMPayMth IS '지급방식';
COMMENT ON COLUMN "_TPRBasPayMthByYm".SMGrpSortSeq IS '그룹종류';
COMMENT ON COLUMN "_TPRBasPayMthByYm".IsPrevRetro IS '전월소급적용여부';
COMMENT ON COLUMN "_TPRBasPayMthByYm".SMApplyMth IS '적용방법';
COMMENT ON COLUMN "_TPRBasPayMthByYm".SMAmtApplyMth IS '상여기간계산적용방법';
COMMENT ON COLUMN "_TPRBasPayMthByYm".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRBasPayMthByYm".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRBasPb" IS '급상여구분';
COMMENT ON COLUMN "_TPRBasPb".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRBasPb".PbSeq IS '급상여구분일련번호';
COMMENT ON COLUMN "_TPRBasPb".PbName IS '급상여구분명';
COMMENT ON COLUMN "_TPRBasPb".SMPbType IS '급상여구분';
COMMENT ON COLUMN "_TPRBasPb".IsPayTax IS '급여세금적용여부';
COMMENT ON COLUMN "_TPRBasPb".PrtItemSeq IS '출력항목명';
COMMENT ON COLUMN "_TPRBasPb".UMAccNoType IS '계좌구분';
COMMENT ON COLUMN "_TPRBasPb".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRBasPb".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRBasPb".DispSeq IS '순서';
COMMENT ON TABLE  "_TPRBasPt" IS '급여형태';
COMMENT ON COLUMN "_TPRBasPt".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRBasPt".PtSeq IS '급여형태일련번호';
COMMENT ON COLUMN "_TPRBasPt".PtName IS '급여형태명';
COMMENT ON COLUMN "_TPRBasPt".SMPtType IS '급여형태구분';
COMMENT ON COLUMN "_TPRBasPt".SMBasDsTmPayMth IS '기본일급시급계산지급방식';
COMMENT ON COLUMN "_TPRBasPt".SMGrpSortSeq IS '그룹종류';
COMMENT ON COLUMN "_TPRBasPt".FullDays IS '만근기준일수';
COMMENT ON COLUMN "_TPRBasPt".Remark IS '비고';
COMMENT ON COLUMN "_TPRBasPt".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRBasPt".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRBasPt".DispSeq IS '순서';
COMMENT ON TABLE  "_TPRBasPu" IS '급여작업군';
COMMENT ON COLUMN "_TPRBasPu".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRBasPu".PuSeq IS '급여작업군일련번호';
COMMENT ON COLUMN "_TPRBasPu".PuName IS '급여작업군명';
COMMENT ON COLUMN "_TPRBasPu".DispSeq IS '순서';
COMMENT ON TABLE  "_TPRPayDateDtl" IS '급상여일자내역';
COMMENT ON COLUMN "_TPRPayDateDtl".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRPayDateDtl".PuSeq IS '급여작업군코드';
COMMENT ON COLUMN "_TPRPayDateDtl".PbYM IS '적용연월';
COMMENT ON COLUMN "_TPRPayDateDtl".SerialNo IS '일련번호';
COMMENT ON COLUMN "_TPRPayDateDtl".PbSeq IS '급상여구분코드';
COMMENT ON COLUMN "_TPRPayDateDtl".BelongYM IS '귀속연월';
COMMENT ON COLUMN "_TPRPayDateDtl".PayYM IS '신고지급년월';
COMMENT ON COLUMN "_TPRPayDateDtl".RepYM IS '신고년월';
COMMENT ON COLUMN "_TPRPayDateDtl".BaseYM IS '기준년월';
COMMENT ON COLUMN "_TPRPayDateDtl".IsExPrb IS '수습자제외여부';
COMMENT ON COLUMN "_TPRPayDateDtl".IsEnd IS '급여확정여부';
COMMENT ON COLUMN "_TPRPayDateDtl".PayDate IS '급여지급일자';
COMMENT ON COLUMN "_TPRPayDateDtl".BegDate IS '급여적용시작일자';
COMMENT ON COLUMN "_TPRPayDateDtl".EndDate IS '급여적용종료일자';
COMMENT ON COLUMN "_TPRPayDateDtl".IsWk IS '근태적용';
COMMENT ON COLUMN "_TPRPayDateDtl".WkBegDate IS '근태적용시작일자';
COMMENT ON COLUMN "_TPRPayDateDtl".WkEndDate IS '근태적용종료일자';
COMMENT ON COLUMN "_TPRPayDateDtl".lsImpTax IS '세금계산안함여부';
COMMENT ON COLUMN "_TPRPayDateDtl".SMBnsGrpSortSeq IS '상여그룹종류';
COMMENT ON COLUMN "_TPRPayDateDtl".SMBnsType IS '상여지급형태';
COMMENT ON COLUMN "_TPRPayDateDtl".BnsRate IS '상여지급율';
COMMENT ON COLUMN "_TPRPayDateDtl".BnsAmt IS '상여일정금액';
COMMENT ON COLUMN "_TPRPayDateDtl".BnsObjBegDate IS '상여대상자범위시작일';
COMMENT ON COLUMN "_TPRPayDateDtl".BnsObjEndDate IS '상여대상자범위종료일';
COMMENT ON COLUMN "_TPRPayDateDtl".BnsTaxBegYM IS '상여세금적용기간 시작월';
COMMENT ON COLUMN "_TPRPayDateDtl".BnsTaxEndYM IS '상여세금적용기간 종료월';
COMMENT ON COLUMN "_TPRPayDateDtl".IsBnsLastOrd IS '상여최종발령상태로만상여처리여부';
COMMENT ON COLUMN "_TPRPayDateDtl".SMBnsEntCalcOpt IS '입사자상여계산기준';
COMMENT ON COLUMN "_TPRPayDateDtl".SMBnsRetCalcOpt IS '퇴사자상여계산기준';
COMMENT ON COLUMN "_TPRPayDateDtl".RetroBegYM IS '소급적용시작월';
COMMENT ON COLUMN "_TPRPayDateDtl".RetroEndYM IS '소급적용종료월';
COMMENT ON COLUMN "_TPRPayDateDtl".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRPayDateDtl".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRPayDateDtl".TaxApplyRate IS '세금적용율';
COMMENT ON TABLE  "_TPRPayDeduc" IS '급상여공제결과';
COMMENT ON COLUMN "_TPRPayDeduc".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRPayDeduc".PbYm IS '적용연월';
COMMENT ON COLUMN "_TPRPayDeduc".SerialNo IS '일련번호';
COMMENT ON COLUMN "_TPRPayDeduc".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRPayDeduc".ItemSeq IS '급여항목코드';
COMMENT ON COLUMN "_TPRPayDeduc".CurAmt IS '금액';
COMMENT ON COLUMN "_TPRPayDeduc".CurRetroAmt IS '소급차액';
COMMENT ON COLUMN "_TPRPayDeduc".Amt IS '원화금액';
COMMENT ON COLUMN "_TPRPayDeduc".RetroAmt IS '소급원화차액';
COMMENT ON COLUMN "_TPRPayDeduc".IsCompanyCost IS '회사부담금여부';
COMMENT ON COLUMN "_TPRPayDeduc".IsExcept IS '예외적용여부';
COMMENT ON COLUMN "_TPRPayDeduc".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRPayDeduc".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRPayPay" IS '급상여지급결과';
COMMENT ON COLUMN "_TPRPayPay".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRPayPay".PbYm IS '적용연월';
COMMENT ON COLUMN "_TPRPayPay".SerialNo IS '일련번호';
COMMENT ON COLUMN "_TPRPayPay".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRPayPay".ItemSeq IS '급여항목코드';
COMMENT ON COLUMN "_TPRPayPay".CurAmt IS '금액';
COMMENT ON COLUMN "_TPRPayPay".CurRetroAmt IS '소급차액';
COMMENT ON COLUMN "_TPRPayPay".Amt IS '원화금액';
COMMENT ON COLUMN "_TPRPayPay".RetroAmt IS '소급원화차액';
COMMENT ON COLUMN "_TPRPayPay".IsPrevAllow IS '기지급여부';
COMMENT ON COLUMN "_TPRPayPay".IsBnsAllow IS '인정상여여부';
COMMENT ON COLUMN "_TPRPayPay".IsCalc IS '가상금액여부';
COMMENT ON COLUMN "_TPRPayPay".IsExcept IS '예외적용여부';
COMMENT ON COLUMN "_TPRPayPay".UMTaxExemptType IS '비과세유형';
COMMENT ON COLUMN "_TPRPayPay".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRPayPay".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRPayResult" IS '급상여결과';
COMMENT ON COLUMN "_TPRPayResult".ReduceTaxRate IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".IsUpload IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".CompensatoryAmt IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".IsConfirm IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".JobSeq IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".IsImpTax IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".ProjectSeq IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".ExRateDate IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".WkMmCnt IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".SMExRateType IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".Under20ChildCnt IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".PayDate IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".UmPsSeq IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".IsCalc IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".StndBasePay IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".CompensatoryRetroAmt IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".IsPerConfirm IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".LocalBizSeq IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".TotPrevDeducAmt IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".IsAdj IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".BizSeq IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".WkTrm IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".DeducFamilyCnt IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".IsExRateDateEx IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".IsWk IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".TotRetroPrevDeducAmt IS 'NULL';
COMMENT ON COLUMN "_TPRPayResult".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRPayResult".PbYm IS '적용연월';
COMMENT ON COLUMN "_TPRPayResult".SerialNo IS '일련번호';
COMMENT ON COLUMN "_TPRPayResult".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRPayResult".PbSeq IS '급상여구분코드';
COMMENT ON COLUMN "_TPRPayResult".BelongYm IS '귀속월';
COMMENT ON COLUMN "_TPRPayResult".RepYm IS '신고월';
COMMENT ON COLUMN "_TPRPayResult".BasMmAmt IS '기본월급';
COMMENT ON COLUMN "_TPRPayResult".BasDdAmt IS '기본일급';
COMMENT ON COLUMN "_TPRPayResult".BasTmAmt IS '기본시급';
COMMENT ON COLUMN "_TPRPayResult".GenMmAmt IS '통상임금';
COMMENT ON COLUMN "_TPRPayResult".GenDdAmt IS '통상일급';
COMMENT ON COLUMN "_TPRPayResult".GenTmAmt IS '통상시급';
COMMENT ON COLUMN "_TPRPayResult".TotPayAmt IS '지급총액';
COMMENT ON COLUMN "_TPRPayResult".TotRetroPayAmt IS '소급지급총액차액';
COMMENT ON COLUMN "_TPRPayResult".TotPrevPayAmt IS '기지급총액';
COMMENT ON COLUMN "_TPRPayResult".TotRetroPrevPayAmt IS '소급기지급총액차액';
COMMENT ON COLUMN "_TPRPayResult".TotAllowBnsAmt IS '인정상여총액';
COMMENT ON COLUMN "_TPRPayResult".TotRetroAllowBnsAmt IS '소급인정상여총액차액';
COMMENT ON COLUMN "_TPRPayResult".TotDeducAmt IS '공제총액';
COMMENT ON COLUMN "_TPRPayResult".TotRetroDeducAmt IS '소급공제총액차액';
COMMENT ON COLUMN "_TPRPayResult".ActPayAmt IS '실지급액';
COMMENT ON COLUMN "_TPRPayResult".ActRetroPayAmt IS '소급실지급액차액';
COMMENT ON COLUMN "_TPRPayResult".OrdDate IS '발령일';
COMMENT ON COLUMN "_TPRPayResult".IntSeq IS '발령일련번호';
COMMENT ON COLUMN "_TPRPayResult".OrdSeq IS '발령사유코드';
COMMENT ON COLUMN "_TPRPayResult".PuSeq IS '급여작업군';
COMMENT ON COLUMN "_TPRPayResult".DeptSeq IS '소속부서코드';
COMMENT ON COLUMN "_TPRPayResult".WkDeptSeq IS '근무부서코드';
COMMENT ON COLUMN "_TPRPayResult".PosSeq IS '포지션내부코드';
COMMENT ON COLUMN "_TPRPayResult".UMPgSeq IS '직급코드';
COMMENT ON COLUMN "_TPRPayResult".Ps IS '호봉';
COMMENT ON COLUMN "_TPRPayResult".UMJpSeq IS '직위코드';
COMMENT ON COLUMN "_TPRPayResult".UMJdSeq IS '직책코드';
COMMENT ON COLUMN "_TPRPayResult".UMJoSeq IS '직종코드';
COMMENT ON COLUMN "_TPRPayResult".PtSeq IS '급여형태내부코드';
COMMENT ON COLUMN "_TPRPayResult".UMWsSeq IS '근무상태코드';
COMMENT ON COLUMN "_TPRPayResult".SMSexSeq IS '성별';
COMMENT ON COLUMN "_TPRPayResult".SpouseACnt IS '가족수당배우자';
COMMENT ON COLUMN "_TPRPayResult".DepenACnt IS '가족수당부양자수';
COMMENT ON COLUMN "_TPRPayResult".DepenBCnt IS '보육수당6세이하수';
COMMENT ON COLUMN "_TPRPayResult".BnsRate IS '상여율';
COMMENT ON COLUMN "_TPRPayResult".AbrTaxExempt IS '국외비과세';
COMMENT ON COLUMN "_TPRPayResult".WkTaxExempt IS '근로비과세';
COMMENT ON COLUMN "_TPRPayResult".EtcTaxExempt IS '기타비과세';
COMMENT ON COLUMN "_TPRPayResult".LabManTaxExempt IS '연구직비과세';
COMMENT ON COLUMN "_TPRPayResult".FrgnTaxExempt IS '외국인비과세';
COMMENT ON COLUMN "_TPRPayResult".ResTax IS '산출세액';
COMMENT ON COLUMN "_TPRPayResult".TaxDeducAmt IS '근로소득세액공제액';
COMMENT ON COLUMN "_TPRPayResult".AbrTaxDeducAmt IS '외국납부세액공제액';
COMMENT ON COLUMN "_TPRPayResult".SavTaxDeducAmt IS '저축세액공제액';
COMMENT ON COLUMN "_TPRPayResult".ReducTax IS '감면세액';
COMMENT ON COLUMN "_TPRPayResult".IsYear IS '연봉직여부';
COMMENT ON COLUMN "_TPRPayResult".UMYearGrdSeq IS '연봉등급';
COMMENT ON COLUMN "_TPRPayResult".IsUnion IS '노조여부';
COMMENT ON COLUMN "_TPRPayResult".IsAttach IS '가압류대상여부';
COMMENT ON COLUMN "_TPRPayResult".IsAbrWk IS '국외근로비과세대상자';
COMMENT ON COLUMN "_TPRPayResult".IsLabMan IS '연구원비과세대상자';
COMMENT ON COLUMN "_TPRPayResult".IsRet IS '퇴직여부';
COMMENT ON COLUMN "_TPRPayResult".ApplyBegDate IS '적용시작일';
COMMENT ON COLUMN "_TPRPayResult".ApplyEndDate IS '적용종료일';
COMMENT ON COLUMN "_TPRPayResult".FullDays IS '전체일수';
COMMENT ON COLUMN "_TPRPayResult".SMTaxAppType IS '세급적용구분';
COMMENT ON COLUMN "_TPRPayResult".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRPayResult".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRPayResult".TaxRate IS '세율';
COMMENT ON TABLE  "_TPRRetEstAccSlip" IS '퇴직추계전표내역';
COMMENT ON COLUMN "_TPRRetEstAccSlip".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRRetEstAccSlip".Seq IS '순번';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RetEstYm IS '추계연월';
COMMENT ON COLUMN "_TPRRetEstAccSlip".EnvValue IS '원가구분';
COMMENT ON COLUMN "_TPRRetEstAccSlip".SlipDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPRRetEstAccSlip".CostDeptSeq IS '귀속부서';
COMMENT ON COLUMN "_TPRRetEstAccSlip".SlipCCtrSeq IS '#예산관리단위';
COMMENT ON COLUMN "_TPRRetEstAccSlip".CostCCtrSeq IS '귀속활동센터';
COMMENT ON COLUMN "_TPRRetEstAccSlip".DeptSeq IS '발생부서';
COMMENT ON COLUMN "_TPRRetEstAccSlip".DtlSeq IS '발생원천';
COMMENT ON COLUMN "_TPRRetEstAccSlip".AccUnit IS '회계단위';
COMMENT ON COLUMN "_TPRRetEstAccSlip".SlipUnit IS '전표관리단위';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RowSlipUnit IS '행별전표관리단위';
COMMENT ON COLUMN "_TPRRetEstAccSlip".AccSeq IS '계정내부코드';
COMMENT ON COLUMN "_TPRRetEstAccSlip".UMCostType IS '비용구분';
COMMENT ON COLUMN "_TPRRetEstAccSlip".SMDrOrCr IS '차대구분';
COMMENT ON COLUMN "_TPRRetEstAccSlip".BgtSeq IS '예산과목내부코드';
COMMENT ON COLUMN "_TPRRetEstAccSlip".DrAmt IS '차변금액';
COMMENT ON COLUMN "_TPRRetEstAccSlip".CrAmt IS '대변금액';
COMMENT ON COLUMN "_TPRRetEstAccSlip".DrForAmt IS '외화차변금액';
COMMENT ON COLUMN "_TPRRetEstAccSlip".CrForAmt IS '외화대변금액';
COMMENT ON COLUMN "_TPRRetEstAccSlip".CurrSeq IS '통화내부코드';
COMMENT ON COLUMN "_TPRRetEstAccSlip".ExRate IS '환율';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemSeq1 IS '관리항목내부코드1';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValSeq1 IS '관리항목내부코드값1';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValText1 IS '관리항목텍스트값1';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemSeq2 IS '관리항목내부코드2';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValSeq2 IS '관리항목내부코드값2';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValText2 IS '관리항목텍스트값2';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemSeq3 IS '관리항목내부코드3';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValSeq3 IS '관리항목내부코드값3';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValText3 IS '관리항목텍스트값3';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemSeq4 IS '관리항목내부코드4';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValSeq4 IS '관리항목내부코드값4';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValText4 IS '관리항목텍스트값4';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemSeq5 IS '관리항목내부코드5';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValSeq5 IS '관리항목내부코드값5';
COMMENT ON COLUMN "_TPRRetEstAccSlip".RemValText5 IS '관리항목텍스트값5';
COMMENT ON COLUMN "_TPRRetEstAccSlip".AccDate IS '회계일';
COMMENT ON COLUMN "_TPRRetEstAccSlip".Remark IS '적요';
COMMENT ON COLUMN "_TPRRetEstAccSlip".SlipSeq IS '전표번호';
COMMENT ON COLUMN "_TPRRetEstAccSlip".IsSet IS '승인여부';
COMMENT ON COLUMN "_TPRRetEstAccSlip".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRRetEstAccSlip".LastUserSeq IS '작업자';
COMMENT ON TABLE  "_TPRRetFundRimitAmt" IS '개인별퇴직연금납입내역';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".CompanySeq IS '법인코드';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".Serl IS '일련번호';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".RimitYM IS '납입연월';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".SMRimitType IS '퇴직연금납입자구분';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".UMCapitalSeq IS '연금운영사';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".Amt IS '금액';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".Remark IS '비고';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRRetFundRimitAmt".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRWkAbsEmp" IS '결근자내역';
COMMENT ON COLUMN "_TPRWkAbsEmp".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRWkAbsEmp".AbsDate IS '결근일자';
COMMENT ON COLUMN "_TPRWkAbsEmp".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRWkAbsEmp".WkItemSeq IS '결근근태항목코드';
COMMENT ON COLUMN "_TPRWkAbsEmp".IsHalf IS '반차여부';
COMMENT ON COLUMN "_TPRWkAbsEmp".Remark IS '비고';
COMMENT ON COLUMN "_TPRWkAbsEmp".CCSeq IS '경조사코드';
COMMENT ON COLUMN "_TPRWkAbsEmp".SMInputType IS '입력구분';
COMMENT ON COLUMN "_TPRWkAbsEmp".UMGrpSeq IS '근무그룹';
COMMENT ON COLUMN "_TPRWkAbsEmp".UMWkGrpSeq IS '근무조';
COMMENT ON COLUMN "_TPRWkAbsEmp".Seq IS '일련번호';
COMMENT ON COLUMN "_TPRWkAbsEmp".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRWkAbsEmp".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRWkAbsEmp".AbsHour IS '결근시간';
COMMENT ON TABLE  "_TPRWkEmpVacApp" IS '휴가신청';
COMMENT ON COLUMN "_TPRWkEmpVacApp".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRWkEmpVacApp".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRWkEmpVacApp".VacSeq IS '일련번호';
COMMENT ON COLUMN "_TPRWkEmpVacApp".WkItemSeq IS '근태항목코드';
COMMENT ON COLUMN "_TPRWkEmpVacApp".WkFrDate IS '휴가시작일자';
COMMENT ON COLUMN "_TPRWkEmpVacApp".WkToDate IS '휴가종료일자';
COMMENT ON COLUMN "_TPRWkEmpVacApp".PrevUseDays IS '휴가일수';
COMMENT ON COLUMN "_TPRWkEmpVacApp".AppDate IS '신청일자';
COMMENT ON COLUMN "_TPRWkEmpVacApp".VacReason IS '휴가사유';
COMMENT ON COLUMN "_TPRWkEmpVacApp".CrisisTel IS '긴급연락처';
COMMENT ON COLUMN "_TPRWkEmpVacApp".TelNo IS '전화번호';
COMMENT ON COLUMN "_TPRWkEmpVacApp".AccptEmpSeq IS '인수자';
COMMENT ON COLUMN "_TPRWkEmpVacApp".CCSeq IS '경조사';
COMMENT ON COLUMN "_TPRWkEmpVacApp".IsHalf IS '반차여부';
COMMENT ON COLUMN "_TPRWkEmpVacApp".IsEnd IS '확정여부';
COMMENT ON COLUMN "_TPRWkEmpVacApp".IsReturn IS '반송여부';
COMMENT ON COLUMN "_TPRWkEmpVacApp".ReturnReason IS '반송사유';
COMMENT ON COLUMN "_TPRWkEmpVacApp".TimeTerm IS '반차기준시간';
COMMENT ON COLUMN "_TPRWkEmpVacApp".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRWkEmpVacApp".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRWkEmpVacApp".LeaveName IS '휴가신청명';
COMMENT ON COLUMN "_TPRWkEmpVacApp".IsCC IS '경조사여부';
COMMENT ON COLUMN "_TPRWkEmpVacApp".WkFrTime IS '휴가시작시간';
COMMENT ON COLUMN "_TPRWkEmpVacApp".WkToTime IS '휴가종료시간';
COMMENT ON COLUMN "_TPRWkEmpVacApp".WkEmpName IS '업무대체자';
COMMENT ON COLUMN "_TPRWkEmpVacApp".VacHour IS '휴가시간';
COMMENT ON TABLE  "_TPRWkItem" IS '근태항목';
COMMENT ON COLUMN "_TPRWkItem".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRWkItem".WkItemSeq IS '근태항목코드';
COMMENT ON COLUMN "_TPRWkItem".WkItemName IS '근태항목명';
COMMENT ON COLUMN "_TPRWkItem".WkItemSName IS '근태약명';
COMMENT ON COLUMN "_TPRWkItem".SMWkItemType IS '근태항목구분';
COMMENT ON COLUMN "_TPRWkItem".SMDTCType IS '근태구분';
COMMENT ON COLUMN "_TPRWkItem".DecPntCnt IS '소숫점자리수';
COMMENT ON COLUMN "_TPRWkItem".IsAbsReason IS '결근사유여부';
COMMENT ON COLUMN "_TPRWkItem".IsLongAbs IS '장기결근여부';
COMMENT ON COLUMN "_TPRWkItem".SMAbsWkSort IS '결근근태종류';
COMMENT ON COLUMN "_TPRWkItem".IsPaid IS '유급여부';
COMMENT ON COLUMN "_TPRWkItem".IsHalf IS '반차여부';
COMMENT ON COLUMN "_TPRWkItem".IsDeduc IS '금액공제여부';
COMMENT ON COLUMN "_TPRWkItem".IsSat IS '토요일적용여부';
COMMENT ON COLUMN "_TPRWkItem".IsSun IS '일요일적용여부';
COMMENT ON COLUMN "_TPRWkItem".IsHoli IS '휴일적용여부';
COMMENT ON COLUMN "_TPRWkItem".IsLimit IS '한도여부';
COMMENT ON COLUMN "_TPRWkItem".IsUse IS '사용여부';
COMMENT ON COLUMN "_TPRWkItem".SMLimitGrp IS '한도그룹종류';
COMMENT ON COLUMN "_TPRWkItem".SMWkMth IS '생성방식';
COMMENT ON COLUMN "_TPRWkItem".SMWkMthGrp IS '생성방식그룹종류';
COMMENT ON COLUMN "_TPRWkItem".TmUnit IS '시간단위';
COMMENT ON COLUMN "_TPRWkItem".SMAppMth IS '적용방식';
COMMENT ON COLUMN "_TPRWkItem".DispSeq IS '출현순서';
COMMENT ON COLUMN "_TPRWkItem".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRWkItem".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRWkItem".IsPrint IS '출력여부';
COMMENT ON COLUMN "_TPRWkItem".Remark IS '비고';
COMMENT ON TABLE  "_TPRWkMmEmpDays" IS '개인별월차발생';
COMMENT ON COLUMN "_TPRWkMmEmpDays".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRWkMmEmpDays".YM IS '발생년월';
COMMENT ON COLUMN "_TPRWkMmEmpDays".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRWkMmEmpDays".BasePayYM IS '기준지급월';
COMMENT ON COLUMN "_TPRWkMmEmpDays".PayYM IS '실지급월';
COMMENT ON COLUMN "_TPRWkMmEmpDays".OccurDays IS '발생일수';
COMMENT ON COLUMN "_TPRWkMmEmpDays".OccurFrDate IS '발생기준시작일';
COMMENT ON COLUMN "_TPRWkMmEmpDays".OccurToDate IS '발생기준종료일';
COMMENT ON COLUMN "_TPRWkMmEmpDays".UseFrDate IS '사용시작일';
COMMENT ON COLUMN "_TPRWkMmEmpDays".UseToDate IS '사용종료일';
COMMENT ON COLUMN "_TPRWkMmEmpDays".UseEndDate IS '사용마감일';
COMMENT ON COLUMN "_TPRWkMmEmpDays".PbSeq IS '급상여구분';
COMMENT ON COLUMN "_TPRWkMmEmpDays".IsEnd IS '마감여부';
COMMENT ON COLUMN "_TPRWkMmEmpDays".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRWkMmEmpDays".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRWkMmEmpDays".GnerAmtYyMm IS '통상임금기준월';
COMMENT ON TABLE  "_TPRWkYyEmpDays" IS '개인별년차발생';
COMMENT ON COLUMN "_TPRWkYyEmpDays".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRWkYyEmpDays".YY IS '발생연도';
COMMENT ON COLUMN "_TPRWkYyEmpDays".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRWkYyEmpDays".ProcMM IS '처리월';
COMMENT ON COLUMN "_TPRWkYyEmpDays".BasePayYM IS '기준지급월';
COMMENT ON COLUMN "_TPRWkYyEmpDays".PayYM IS '실지급월';
COMMENT ON COLUMN "_TPRWkYyEmpDays".PileDays IS '이월적치일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".ExProbOccurDays IS '1년미만자발생일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".ExProbUseDays IS '1면미만자사용일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".OccurDays IS '발생일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".RestDays IS '휴직일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".AbsDays IS '결근일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".OccurFrDate IS '발생기준시작일';
COMMENT ON COLUMN "_TPRWkYyEmpDays".OccurToDate IS '발생기준종료일';
COMMENT ON COLUMN "_TPRWkYyEmpDays".UseFrDate IS '사용시작일';
COMMENT ON COLUMN "_TPRWkYyEmpDays".UseToDate IS '사용종료일';
COMMENT ON COLUMN "_TPRWkYyEmpDays".UseEndDate IS '사용마감일';
COMMENT ON COLUMN "_TPRWkYyEmpDays".BasePileDays IS '기본적치일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".AddPileDays IS '추가적치일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".PbSeq IS '급상여구분';
COMMENT ON COLUMN "_TPRWkYyEmpDays".IsEnd IS '마감여부';
COMMENT ON COLUMN "_TPRWkYyEmpDays".GnerAmtYyMm IS '통상임금기준월';
COMMENT ON COLUMN "_TPRWkYyEmpDays".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRWkYyEmpDays".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRWkYyEmpDays".DutyDays IS '당직일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".AddDays IS '추가발생일수';
COMMENT ON COLUMN "_TPRWkYyEmpDays".PileTime IS '이월적치시간';
COMMENT ON COLUMN "_TPRWkYyEmpDays".OccurTime IS '발생시간';
COMMENT ON COLUMN "_TPRWkYyEmpDays".RestTime IS '휴직일수시간';
COMMENT ON COLUMN "_TPRWkYyEmpDays".AbsTime IS '결근일수시간';
COMMENT ON TABLE  "_TPRWkYyEmpDaysExProb" IS '개인별1년미만자년차발생';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".YM IS '발생년월';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".YY IS '처리년도';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".BasePayYM IS '기준지급월';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".PayYM IS '실지급월';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".OccurDays IS '발생일수';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".OccurFrDate IS '발생기준시작일';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".OccurToDate IS '발생기준종료일';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".UseFrDate IS '사용시작일';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".UseToDate IS '사용종료일';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".UseEndDate IS '사용마감일';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".PbSeq IS '급상여구분';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRWkYyEmpDaysExProb".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRWkYyEmpPileDaysApp" IS '연차적치신청';
COMMENT ON COLUMN "_TPRWkYyEmpPileDaysApp".CompanySeq IS '법인코드';
COMMENT ON COLUMN "_TPRWkYyEmpPileDaysApp".AppSeq IS '신청일련번호';
COMMENT ON COLUMN "_TPRWkYyEmpPileDaysApp".Yy IS '발생년도';
COMMENT ON COLUMN "_TPRWkYyEmpPileDaysApp".AppDate IS '신청일';
COMMENT ON COLUMN "_TPRWkYyEmpPileDaysApp".EmpSeq IS '사원코드';
COMMENT ON COLUMN "_TPRWkYyEmpPileDaysApp".PileDays IS '적치일수';
COMMENT ON COLUMN "_TPRWkYyEmpPileDaysApp".Rem IS '비고';
COMMENT ON COLUMN "_TPRWkYyEmpPileDaysApp".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRWkYyEmpPileDaysApp".LastDateTime IS '작업일시';
COMMENT ON TABLE  "_TPRWkYyMm5Days" IS '년월차기준';
COMMENT ON COLUMN "_TPRWkYyMm5Days".CompanySeq IS '법인내부코드';
COMMENT ON COLUMN "_TPRWkYyMm5Days".Seq IS '순번';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMYyOccurType IS '년차발생구분';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMYyBaseType IS '년차기준구분';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMCmpOccurBegYy IS '회사별발생기준시작년도';
COMMENT ON COLUMN "_TPRWkYyMm5Days".CmpOccurBegMmDd IS '회사별발생기준시작월일';
COMMENT ON COLUMN "_TPRWkYyMm5Days".CmpOccurEndMmDd IS '회사별발생기준종료월일';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMCmpOccurMm IS '회사별발생처리월';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMCmpPayYy IS '회사별지급년도';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMCmpPayMm IS '회사별지급월';
COMMENT ON COLUMN "_TPRWkYyMm5Days".CmpYyAmtPbSeq IS '회사별년차수당지급급상여';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMCmpGnerAmtYy IS '회사별통상임금기준년도';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMCmpGnerAmtMm IS '회사별통상임금기준월';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMEmpPayType IS '개인별지급기준';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMEmpPayYy IS '개인별회사기준지급년도';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMEmpPayMm IS '개인별회사기준지급월';
COMMENT ON COLUMN "_TPRWkYyMm5Days".EmpYyAmtPbSeq IS '개인별년차수당지급급상여';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMEmpGnerAmtYyMm IS '개인별통상임금기준월';
COMMENT ON COLUMN "_TPRWkYyMm5Days".FullApplyDays IS '만근시년차발생기준일수';
COMMENT ON COLUMN "_TPRWkYyMm5Days".AbsRate IS '결근적용출근율';
COMMENT ON COLUMN "_TPRWkYyMm5Days".AbsApplyDays IS '결근적용발생기준일수';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMExProbMth IS '1년미만자발생기준';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMYyAppMth IS '년차발생소수점적용방식';
COMMENT ON COLUMN "_TPRWkYyMm5Days".IsMmOccur IS '월차발생여부';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmOccurType IS '월차발생구분';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmUseType IS '월차사용구분';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmUseFrMm IS '월차사용시작월';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmUseToMm IS '월차사용종료월';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmPayType IS '월차재직자지급구분';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmPayMm IS '월차재직자회사기준월';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmPayTypeUnder IS '월차1년미만자지급구분';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmPayMmUnder IS '월차1년미만자회사기준월';
COMMENT ON COLUMN "_TPRWkYyMm5Days".MmAmtPbSeq IS '월차수당지급급상여';
COMMENT ON COLUMN "_TPRWkYyMm5Days".AttdRate5Days IS '5일근무출근율';
COMMENT ON COLUMN "_TPRWkYyMm5Days".FullApply5Days IS '5일근무만근시년차발생기준일수';
COMMENT ON COLUMN "_TPRWkYyMm5Days".YyInc5Days IS '5일근무년차증가년수';
COMMENT ON COLUMN "_TPRWkYyMm5Days".IsdescAgree IS '5일근무년차발생일수소수점인정';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMExProb5DaysOccurType IS '5일근무매월발생구분';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMExProb5DaysMth IS '5일근무1년미만자발생기준';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMYy5DaysAppMth IS '5일근무년차발생소수점적용방식';
COMMENT ON COLUMN "_TPRWkYyMm5Days".Limit5Days IS '5일근무한도일수';
COMMENT ON COLUMN "_TPRWkYyMm5Days".IsHealthOccur IS '보건휴가발생';
COMMENT ON COLUMN "_TPRWkYyMm5Days".HealthAmtPbSeq IS '보건휴가수당지급급상여';
COMMENT ON COLUMN "_TPRWkYyMm5Days".YyWkItemSeq IS '년차지급항목';
COMMENT ON COLUMN "_TPRWkYyMm5Days".MmWkItemSeq IS '월차지급항목';
COMMENT ON COLUMN "_TPRWkYyMm5Days".HealthWkItemSeq IS '보건휴가지급항목';
COMMENT ON COLUMN "_TPRWkYyMm5Days".LastUserSeq IS '작업자';
COMMENT ON COLUMN "_TPRWkYyMm5Days".LastDateTime IS '작업일시';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMExProbYy5DaysAppMth IS '5일근무년차발생소수점적용방식(1년미만자)';
COMMENT ON COLUMN "_TPRWkYyMm5Days".IsRetOccur IS '퇴직년도발생분생성(사용안함)';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMRetAppMth IS '퇴직년도소수점적용방식';
COMMENT ON COLUMN "_TPRWkYyMm5Days".ExProbFixDays IS '5일근무1년미만자만근기준일수';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMRetYyOccurMth IS '퇴직년도발생기준';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMEntYyOccurMth IS '입사년도발생기준';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMEmpRetYyOccurMth IS '개인별퇴직년도발생기준';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMEmpRetAppMth IS '개인별퇴직년도소수점적용방식';
COMMENT ON COLUMN "_TPRWkYyMm5Days".IsFlexitime IS '유연근무제여부';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmPayYy IS '월차 지급기준';
COMMENT ON COLUMN "_TPRWkYyMm5Days".SMMmPayYyUnder IS '월차 지급기준(1년미만자)';
ALTER TABLE "_TACAsst" ADD CONSTRAINT "PK__TACAsst" PRIMARY KEY (CompanySeq,AsstSeq);
ALTER TABLE "_TACAsstAccSet" ADD CONSTRAINT "PK__TACAsstAccSet" PRIMARY KEY (CompanySeq,AsstAccTypeSeq);
ALTER TABLE "_TACAsstDefault" ADD CONSTRAINT "PK__TACAsstDefault" PRIMARY KEY (CompanySeq,AsstTypeSeq);
ALTER TABLE "_TACAsstDepreStdHist" ADD CONSTRAINT "PK__TACAsstDepreStdHist" PRIMARY KEY (CompanySeq,AsstSeq,HistSerl);
ALTER TABLE "_TACAsstDispo" ADD CONSTRAINT "PK__TACAsstDispo" PRIMARY KEY (CompanySeq,SMAccStd,AsstSeq,DispoSerl);
ALTER TABLE "_TACAsstImpairmentLossAsst" ADD CONSTRAINT "PK__TACAsstImpairmentLossAsst" PRIMARY KEY (CompanySeq,AccYM,AsstSeq);
ALTER TABLE "_TACDCashItem" ADD CONSTRAINT "PK__TACDCashItem" PRIMARY KEY (CompanySeq,CashItemSeq);
ALTER TABLE "_TACFundExec" ADD CONSTRAINT "PK__TACFundExec" PRIMARY KEY (CompanySeq,AccUnit,FundDate,Serl);
ALTER TABLE "_TACFundPlan" ADD CONSTRAINT "PK__TACFundPlan" PRIMARY KEY (AccUnit,FundDate,Serl);
ALTER TABLE "_TACLoan" ADD CONSTRAINT "PK__TACLoan" PRIMARY KEY (CompanySeq,LoanSeq);
ALTER TABLE "_TACLoanInterestOpt" ADD CONSTRAINT "PK__TACLoanInterestOpt" PRIMARY KEY (CompanySeq,LoanSeq,Serl);
ALTER TABLE "_TACLoanPlan" ADD CONSTRAINT "PK__TACLoanPlan" PRIMARY KEY (CompanySeq,LoanSeq,Serl);
ALTER TABLE "_TACLoanRepayOpt" ADD CONSTRAINT "PK__TACLoanRepayOpt" PRIMARY KEY (CompanySeq,LoanSeq,Serl);
ALTER TABLE "_TACSlipSum" ADD CONSTRAINT "PK__TACSlipSum" PRIMARY KEY (CompanySeq,SMAccStd,AccUnit,AccYM,SlipUnit,IsIni,AccSeq,UMCostType);
ALTER TABLE "_TACSlipSumFor" ADD CONSTRAINT "PK__TACSlipSumFor" PRIMARY KEY (CompanySeq,SMAccStd,AccUnit,AccYM,SlipUnit,IsIni,AccSeq,UMCostType,CurrSeq);
ALTER TABLE "_TDAAccount" ADD CONSTRAINT "PK__TDAAccount" PRIMARY KEY (CompanySeq,AccSeq);
ALTER TABLE "_TDABankAcc" ADD CONSTRAINT "PK__TDABankAcc" PRIMARY KEY (CompanySeq,BankAccSeq);
ALTER TABLE "_TDACard" ADD CONSTRAINT "PK__TDACard" PRIMARY KEY (CompanySeq,BizUnit,CardSeq);
ALTER TABLE "_TDACust" ADD CONSTRAINT "PK__TDACust" PRIMARY KEY (CompanySeq,CustSeq);
ALTER TABLE "_TDACustBankAcc" ADD CONSTRAINT "PK__TDACustBankAcc" PRIMARY KEY (CompanySeq,CustSeq,CustBankAccSerl);
ALTER TABLE "_TDADept" ADD CONSTRAINT "PK__TDADept" PRIMARY KEY (CompanySeq,DeptSeq);
ALTER TABLE "_TDAEmp" ADD CONSTRAINT "PK__TDAEmp" PRIMARY KEY (CompanySeq,EmpSeq);
ALTER TABLE "_TDAEmpIn" ADD CONSTRAINT "PK__TDAEmpIn" PRIMARY KEY (CompanySeq,EmpSeq);
ALTER TABLE "_TDAEvid" ADD CONSTRAINT "PK__TDAEvid" PRIMARY KEY (CompanySeq,EvidSeq);
ALTER TABLE "_TDASMajor" ADD CONSTRAINT "PK__TDASMajor" PRIMARY KEY (CompanySeq,MajorSeq);
ALTER TABLE "_TDASMinor" ADD CONSTRAINT "PK__TDASMinor" PRIMARY KEY (CompanySeq,MinorSeq);
ALTER TABLE "_TDATaxUnit" ADD CONSTRAINT "PK__TDATaxUnit" PRIMARY KEY (CompanySeq,TaxUnit);
ALTER TABLE "_TDATaxUnitHist" ADD CONSTRAINT "PK__TDATaxUnitHist" PRIMARY KEY (CompanySeq,Serl,TaxUnit);
ALTER TABLE "_TDAUMajor" ADD CONSTRAINT "PK__TDAUMajor" PRIMARY KEY (CompanySeq,MajorSeq);
ALTER TABLE "_TDAUMinor" ADD CONSTRAINT "PK__TDAUMinor" PRIMARY KEY (CompanySeq,MinorSeq);
ALTER TABLE "_THRAdmOrd" ADD CONSTRAINT "PK__THRAdmOrd" PRIMARY KEY (CompanySeq,OrdSeq);
ALTER TABLE "_THRAdmOrdEmp" ADD CONSTRAINT "PK__THRAdmOrdEmp" PRIMARY KEY (CompanySeq,EmpSeq,IntSeq);
ALTER TABLE "_THRAdmWkOrdEmp" ADD CONSTRAINT "PK__THRAdmWkOrdEmp" PRIMARY KEY (CompanySeq,EmpSeq,WkIntSeq);
ALTER TABLE "_THRBasLicense" ADD CONSTRAINT "PK__THRBasLicense" PRIMARY KEY (CompanySeq,EmpSeq,LicenseSeq);
ALTER TABLE "_THRBasPrzPnl" ADD CONSTRAINT "PK__THRBasPrzPnl" PRIMARY KEY (CompanySeq,EmpSeq,PrzPnlSeq);
ALTER TABLE "_THRBaslinguistic" ADD CONSTRAINT "PK__THRBaslinguistic" PRIMARY KEY (CompanySeq,EmpSeq,linguisticSeq);
ALTER TABLE "_THROrgDeptLast" ADD CONSTRAINT "PK__THROrgDeptLast" PRIMARY KEY (CompanySeq,OrgType,DeptSeq);
ALTER TABLE "_TPEAcCause" ADD CONSTRAINT "PK__TPEAcCause" PRIMARY KEY (CompanySeq,CauseSeq);
ALTER TABLE "_TPEAcCauseItem" ADD CONSTRAINT "PK__TPEAcCauseItem" PRIMARY KEY (CompanySeq,CauseSeq,Serl);
ALTER TABLE "_TPEAcContract" ADD CONSTRAINT "PK__TPEAcContract" PRIMARY KEY (CompanySeq,ContractSeq);
ALTER TABLE "_TPEAcIncoming" ADD CONSTRAINT "PK__TPEAcIncoming" PRIMARY KEY (CompanySeq,IncomingSeq);
ALTER TABLE "_TPEAcIncomingItem" ADD CONSTRAINT "PK__TPEAcIncomingItem" PRIMARY KEY (CompanySeq,IncomingSeq,Serl);
ALTER TABLE "_TPEAcOutgoing" ADD CONSTRAINT "PK__TPEAcOutgoing" PRIMARY KEY (CompanySeq,OutgoingSeq);
ALTER TABLE "_TPEAcOutgoingItem" ADD CONSTRAINT "PK__TPEAcOutgoingItem" PRIMARY KEY (CompanySeq,OutgoingSeq,Serl);
ALTER TABLE "_TPEBasAttachDept" ADD CONSTRAINT "PK__TPEBasAttachDept" PRIMARY KEY (CompanySeq,AccYY,BgtDeptSeq,AttachDeptSeq);
ALTER TABLE "_TPEBasBgtDept" ADD CONSTRAINT "PK__TPEBasBgtDept" PRIMARY KEY (CompanySeq,AccYY,BgtDeptSeq);
ALTER TABLE "_TPEBgtCfm" ADD CONSTRAINT "PK__TPEBgtCfm" PRIMARY KEY (CompanySeq,AccYY,SMBgtType,CompileDeg);
ALTER TABLE "_TPEBgtCompile" ADD CONSTRAINT "PK__TPEBgtCompile" PRIMARY KEY (CompanySeq,DemdSeq);
ALTER TABLE "_TPEBgtCurrAmt" ADD CONSTRAINT "PK__TPEBgtCurrAmt" PRIMARY KEY (CompanySeq,AccYY,SMBgtCurrType,BgtDate,BizUnit,AccDeptSeq,BgtDeptSeq,DetlBizSeq,BgtItemSeq,BgtClassSeq,BgtClassName,SMExpKind);
ALTER TABLE "_TPEBgtDetlBiz" ADD CONSTRAINT "PK__TPEBgtDetlBiz" PRIMARY KEY (CompanySeq,DetlBizSeq);
ALTER TABLE "_TPEBgtDetlBizEmp" ADD CONSTRAINT "PK__TPEBgtDetlBizEmp" PRIMARY KEY (CompanySeq,DetlBizSeq,Serl);
ALTER TABLE "_TPEBgtForwd" ADD CONSTRAINT "PK__TPEBgtForwd" PRIMARY KEY (CompanySeq,AccYY,BizUnit,AccDeptSeq,BgtDeptSeq,DetlBizSeq,BgtItemSeq,BgtClassSeq,BgtClassName,SMForwdType);
ALTER TABLE "_TPEBgtNonControl" ADD CONSTRAINT "PK__TPEBgtNonControl" PRIMARY KEY (CompanySeq,NonControlSeq);
ALTER TABLE "_TPEBgtPolicyBiz" ADD CONSTRAINT "PK__TPEBgtPolicyBiz" PRIMARY KEY (CompanySeq,PolicyBizSeq);
ALTER TABLE "_TPEBgtUnitBiz" ADD CONSTRAINT "PK__TPEBgtUnitBiz" PRIMARY KEY (CompanySeq,UnitBizSeq);
ALTER TABLE "_TPRAdjIncomeEtc" ADD CONSTRAINT "PK__TPRAdjIncomeEtc" PRIMARY KEY (CompanySeq,Serl);
ALTER TABLE "_TPRAdjWithHoldRep" ADD CONSTRAINT "PK__TPRAdjWithHoldRep" PRIMARY KEY (CompanySeq,BizSeq,RevertYM,PayYM,ReportYM);
ALTER TABLE "_TPRAdjWithHoldRepDtl" ADD CONSTRAINT "PK__TPRAdjWithHoldRepDtl" PRIMARY KEY (CompanySeq,BizSeq,RevertYM,PayYM,ReportYM,SMHoldRepItemSeq);
ALTER TABLE "_TPRAdjWithHoldRepItem" ADD CONSTRAINT "PK__TPRAdjWithHoldRepItem" PRIMARY KEY (CompanySeq,BizSeq,RevertYM,PayYM,ReportYM,SMHoldRepItemSeq);
ALTER TABLE "_TPRBasCompositItem" ADD CONSTRAINT "PK__TPRBasCompositItem" PRIMARY KEY (CompanySeq,YM,SMCompositSeq,ItemSeq);
ALTER TABLE "_TPRBasDateBase" ADD CONSTRAINT "PK__TPRBasDateBase" PRIMARY KEY (CompanySeq,PuSeq,PbSeq);
ALTER TABLE "_TPRBasEmpAmt" ADD CONSTRAINT "PK__TPRBasEmpAmt" PRIMARY KEY (CompanySeq,EmpSeq,PbSeq,ItemSeq,Seq);
ALTER TABLE "_TPRBasGrpAmt" ADD CONSTRAINT "PK__TPRBasGrpAmt" PRIMARY KEY (CompanySeq,YM,SMAppType,ItemSeq,PayGrpSeq,GrpSeq);
ALTER TABLE "_TPRBasPayItem" ADD CONSTRAINT "PK__TPRBasPayItem" PRIMARY KEY (CompanySeq,ItemSeq);
ALTER TABLE "_TPRBasPayMthByYm" ADD CONSTRAINT "PK__TPRBasPayMthByYm" PRIMARY KEY (CompanySeq,ItemSeq,Seq);
ALTER TABLE "_TPRBasPb" ADD CONSTRAINT "PK__TPRBasPb" PRIMARY KEY (CompanySeq,PbSeq);
ALTER TABLE "_TPRBasPt" ADD CONSTRAINT "PK__TPRBasPt" PRIMARY KEY (CompanySeq,PtSeq);
ALTER TABLE "_TPRBasPu" ADD CONSTRAINT "PK__TPRBasPu" PRIMARY KEY (CompanySeq,PuSeq);
ALTER TABLE "_TPRPayDateDtl" ADD CONSTRAINT "PK__TPRPayDateDtl" PRIMARY KEY (CompanySeq,PuSeq,PbYM,SerialNo);
ALTER TABLE "_TPRPayDeduc" ADD CONSTRAINT "PK__TPRPayDeduc" PRIMARY KEY (CompanySeq,PbYm,SerialNo,EmpSeq,ItemSeq);
ALTER TABLE "_TPRPayPay" ADD CONSTRAINT "PK__TPRPayPay" PRIMARY KEY (CompanySeq,PbYm,SerialNo,EmpSeq,ItemSeq);
ALTER TABLE "_TPRPayResult" ADD CONSTRAINT "PK__TPRPayResult" PRIMARY KEY (CompanySeq,PbYm,SerialNo,EmpSeq);
ALTER TABLE "_TPRWkAbsEmp" ADD CONSTRAINT "PK__TPRWkAbsEmp" PRIMARY KEY (CompanySeq,AbsDate,EmpSeq,WkItemSeq);
ALTER TABLE "_TPRWkEmpVacApp" ADD CONSTRAINT "PK__TPRWkEmpVacApp" PRIMARY KEY (CompanySeq,EmpSeq,VacSeq);
ALTER TABLE "_TPRWkItem" ADD CONSTRAINT "PK__TPRWkItem" PRIMARY KEY (CompanySeq,WkItemSeq);
ALTER TABLE "_TPRWkMmEmpDays" ADD CONSTRAINT "PK__TPRWkMmEmpDays" PRIMARY KEY (CompanySeq,YM,EmpSeq);
ALTER TABLE "_TPRWkYyEmpDays" ADD CONSTRAINT "PK__TPRWkYyEmpDays" PRIMARY KEY (CompanySeq,YY,EmpSeq);
ALTER TABLE "_TPRWkYyEmpDaysExProb" ADD CONSTRAINT "PK__TPRWkYyEmpDaysExProb" PRIMARY KEY (CompanySeq,YM,EmpSeq);
ALTER TABLE "_TPRWkYyMm5Days" ADD CONSTRAINT "PK__TPRWkYyMm5Days" PRIMARY KEY (CompanySeq,Seq);
