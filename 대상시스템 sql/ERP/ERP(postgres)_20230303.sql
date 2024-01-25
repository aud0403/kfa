
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



COMMENT ON TABLE  _TACSlip IS '전표';
COMMENT ON COLUMN _TACSlip.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TACSlip.SlipMstSeq IS '전표마스터내부코드';
COMMENT ON COLUMN _TACSlip.SlipMstID IS '전표마스터번호';
COMMENT ON COLUMN _TACSlip.AccUnit IS '회계단위';
COMMENT ON COLUMN _TACSlip.SlipUnit IS '전표관리단위코드';
COMMENT ON COLUMN _TACSlip.AccDate IS '회계일';
COMMENT ON COLUMN _TACSlip.SlipNo IS '기표일련번호';
COMMENT ON COLUMN _TACSlip.SlipKind IS '전표분개유형내부코드';
COMMENT ON COLUMN _TACSlip.RegEmpSeq IS '기표자';
COMMENT ON COLUMN _TACSlip.RegDeptSeq IS '기표부서';
COMMENT ON COLUMN _TACSlip.Remark IS '비고';
COMMENT ON COLUMN _TACSlip.SMCurrStatus IS '전표상태';
COMMENT ON COLUMN _TACSlip.AptDate IS '접수일';
COMMENT ON COLUMN _TACSlip.AptEmpSeq IS '접수자';
COMMENT ON COLUMN _TACSlip.AptDeptSeq IS '접수부서';
COMMENT ON COLUMN _TACSlip.AptRemark IS '접수비고';
COMMENT ON COLUMN _TACSlip.SMCheckStatus IS '정정상태';
COMMENT ON COLUMN _TACSlip.CheckOrigin IS '원천번호';
COMMENT ON COLUMN _TACSlip.IsSet IS '승인여부';
COMMENT ON COLUMN _TACSlip.SetSlipNo IS '승인일련번호';
COMMENT ON COLUMN _TACSlip.SetEmpSeq IS '승인자';
COMMENT ON COLUMN _TACSlip.SetDeptSeq IS '승인부서';
COMMENT ON COLUMN _TACSlip.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TACSlip.LastDateTime IS '작업일시';
COMMENT ON COLUMN _TACSlip.RegDateTime IS '기표일시';
COMMENT ON COLUMN _TACSlip.RegAccDate IS '기표일';
COMMENT ON COLUMN _TACSlip.SetSlipID IS '승인외부번호';

COMMENT ON TABLE  _TACSlipRem IS '전표의계정관리항목';
COMMENT ON COLUMN _TACSlipRem.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TACSlipRem.SlipSeq IS '전표내부코드';
COMMENT ON COLUMN _TACSlipRem.RemSeq IS '관리항목내부코드';
COMMENT ON COLUMN _TACSlipRem.RemValSeq IS '관리항목내부코드값';
COMMENT ON COLUMN _TACSlipRem.RemValText IS '관리항목텍스트값';

COMMENT ON TABLE  _TACSlipRow IS '전표의행정보';
COMMENT ON COLUMN _TACSlipRow.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TACSlipRow.SlipSeq IS '전표내부코드';
COMMENT ON COLUMN _TACSlipRow.SlipMstSeq IS '전표마스터내부코드';
COMMENT ON COLUMN _TACSlipRow.SlipID IS '전표기표번호';
COMMENT ON COLUMN _TACSlipRow.AccUnit IS '회계단위';
COMMENT ON COLUMN _TACSlipRow.SlipUnit IS '전표관리단위코드';
COMMENT ON COLUMN _TACSlipRow.AccDate IS '회계일';
COMMENT ON COLUMN _TACSlipRow.SlipNo IS '기표일련번호';
COMMENT ON COLUMN _TACSlipRow.RowNo IS '행번호';
COMMENT ON COLUMN _TACSlipRow.RowSlipUnit IS '행별전표관리단위';
COMMENT ON COLUMN _TACSlipRow.AccSeq IS '계정내부코드';
COMMENT ON COLUMN _TACSlipRow.UMCostType IS '비용구분';
COMMENT ON COLUMN _TACSlipRow.SMDrOrCr IS '차대구분';
COMMENT ON COLUMN _TACSlipRow.DrAmt IS '차변금액';
COMMENT ON COLUMN _TACSlipRow.CrAmt IS '대변금액';
COMMENT ON COLUMN _TACSlipRow.DrForAmt IS '외화차변금액';
COMMENT ON COLUMN _TACSlipRow.CrForAmt IS '외화대변금액';
COMMENT ON COLUMN _TACSlipRow.CurrSeq IS '통화내부코드';
COMMENT ON COLUMN _TACSlipRow.ExRate IS '환율';
COMMENT ON COLUMN _TACSlipRow.DivExRate IS '나누기환율';
COMMENT ON COLUMN _TACSlipRow.EvidSeq IS '증빙내부코드';
COMMENT ON COLUMN _TACSlipRow.TaxKindSeq IS '세무구분코드(삭제)';
COMMENT ON COLUMN _TACSlipRow.NDVATAmt IS '불공제세(삭제)';
COMMENT ON COLUMN _TACSlipRow.CashItemSeq IS '현금흐름표과목코드';
COMMENT ON COLUMN _TACSlipRow.SMCostItemKind IS '원가항목유형';
COMMENT ON COLUMN _TACSlipRow.CostItemSeq IS '원가항목';
COMMENT ON COLUMN _TACSlipRow.Summary IS '적요';
COMMENT ON COLUMN _TACSlipRow.BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN _TACSlipRow.BgtCCtrSeq IS '#예산관리단위';
COMMENT ON COLUMN _TACSlipRow.BgtSeq IS '예산과목내부코드';
COMMENT ON COLUMN _TACSlipRow.IsSet IS '승인여부';
COMMENT ON COLUMN _TACSlipRow.CoCustSeq IS '관계사코드';
COMMENT ON COLUMN _TACSlipRow.LastDateTime IS '작업일시';
COMMENT ON COLUMN _TACSlipRow.LastUserSeq IS '작업자';

COMMENT ON TABLE  _TDAAccount IS '계정과목';
COMMENT ON COLUMN _TDAAccount.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TDAAccount.AccSeq IS '계정내부코드';
COMMENT ON COLUMN _TDAAccount.AccNo IS '계정코드';
COMMENT ON COLUMN _TDAAccount.AccName IS '계정과목';
COMMENT ON COLUMN _TDAAccount.SMDrOrCr IS '차대구분(4001)';
COMMENT ON COLUMN _TDAAccount.IsAnti IS '차감계정여부';
COMMENT ON COLUMN _TDAAccount.IsSlip IS '전표기표여부';
COMMENT ON COLUMN _TDAAccount.IsEssCostDept IS '귀속부서필수여부';
COMMENT ON COLUMN _TDAAccount.IsLevel2 IS '2레벨잔액여부';
COMMENT ON COLUMN _TDAAccount.IsZeroAllow IS '금액0허용여부';
COMMENT ON COLUMN _TDAAccount.IsEssForAmt IS '외화금액필수여부';
COMMENT ON COLUMN _TDAAccount.SMIsEssEvid IS '증빙필수여부(4006)';
COMMENT ON COLUMN _TDAAccount.IsEssCost IS '원가항목필수여부';
COMMENT ON COLUMN _TDAAccount.IsCostTrn IS '원가집합여부(삭제)';
COMMENT ON COLUMN _TDAAccount.SMIsUseRNP IS '출납사용여부(4003)';
COMMENT ON COLUMN _TDAAccount.SMRNPMethod IS '출납방법(4004)';
COMMENT ON COLUMN _TDAAccount.SMBgtType IS '예산유형(4005)';
COMMENT ON COLUMN _TDAAccount.IsCash IS '현금성여부';
COMMENT ON COLUMN _TDAAccount.SMCashItemKind IS '현금흐름과목종류(4007)';
COMMENT ON COLUMN _TDAAccount.IsFundSet IS '자금승인여부';
COMMENT ON COLUMN _TDAAccount.IsAutoExec IS '자동출납집행여부';
COMMENT ON COLUMN _TDAAccount.SMAccType IS '계정구분(4002)';
COMMENT ON COLUMN _TDAAccount.SMAccKind IS '계정대분류(4018)';
COMMENT ON COLUMN _TDAAccount.OffRemSeq IS '건별반제';
COMMENT ON COLUMN _TDAAccount.RemSeq1 IS '관리항목1';
COMMENT ON COLUMN _TDAAccount.RemSeq2 IS '관리항목2';
COMMENT ON COLUMN _TDAAccount.BgtRemSeq IS '예산';
COMMENT ON COLUMN _TDAAccount.SMSetType IS '승인구분';
COMMENT ON COLUMN _TDAAccount.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TDAAccount.SMCostAccType IS '계정타입';
COMMENT ON COLUMN _TDAAccount.LastDateTime IS '작업일시';

COMMENT ON TABLE  _TDADept IS '부서';
COMMENT ON COLUMN _TDADept.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TDADept.DeptSeq IS '부서내부코드';
COMMENT ON COLUMN _TDADept.DeptName IS '부서명';
COMMENT ON COLUMN _TDADept.AbrDeptName IS '부서약명';
COMMENT ON COLUMN _TDADept.EngDeptName IS '영문명';
COMMENT ON COLUMN _TDADept.AbrEngDeptName IS '영문약명';
COMMENT ON COLUMN _TDADept.BegDate IS '부서시작일';
COMMENT ON COLUMN _TDADept.EndDate IS '부서종료일';
COMMENT ON COLUMN _TDADept.SMDeptType IS '부서구분';
COMMENT ON COLUMN _TDADept.SMDeptClass IS '부서분류';
COMMENT ON COLUMN _TDADept.DeptPhone IS '부서전화번호';
COMMENT ON COLUMN _TDADept.DeptFax IS '부서팩스번호';
COMMENT ON COLUMN _TDADept.TaxUnit IS '사업자번호내부코드';
COMMENT ON COLUMN _TDADept.AccUnit IS '회계단위';
COMMENT ON COLUMN _TDADept.BizUnit IS '사업부문';
COMMENT ON COLUMN _TDADept.FactUnit IS '생산사업장';
COMMENT ON COLUMN _TDADept.SlipUnit IS '전표단위';
COMMENT ON COLUMN _TDADept.UMCostType IS '비용구분';
COMMENT ON COLUMN _TDADept.PJTSeq IS '프로젝트내부코드';
COMMENT ON COLUMN _TDADept.DispSeq IS '순서';
COMMENT ON COLUMN _TDADept.Remark IS '비고';
COMMENT ON COLUMN _TDADept.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TDADept.LastDateTime IS '작업일시';


COMMENT ON TABLE  _TDAEmp IS '인사마스타';
COMMENT ON COLUMN _TDAEmp.RetireDate IS 'NULL';
COMMENT ON COLUMN _TDAEmp.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TDAEmp.EmpSeq IS '사원코드';
COMMENT ON COLUMN _TDAEmp.ResidID IS '주민등록번호';
COMMENT ON COLUMN _TDAEmp.EmpName IS '풀이름';
COMMENT ON COLUMN _TDAEmp.EmpFamilyName IS '성';
COMMENT ON COLUMN _TDAEmp.EmpFirstName IS '이름';
COMMENT ON COLUMN _TDAEmp.EmpChnName IS '한자이름';
COMMENT ON COLUMN _TDAEmp.EmpEngFirstName IS '영문이름';
COMMENT ON COLUMN _TDAEmp.EmpEngLastName IS '영문성';
COMMENT ON COLUMN _TDAEmp.UMEmpType IS '사원구분';
COMMENT ON COLUMN _TDAEmp.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TDAEmp.LastDateTime IS '작업일시';
COMMENT ON COLUMN _TDAEmp.Empid IS '사번';
COMMENT ON COLUMN _TDAEmp.DeptSeq IS '부서내부코드';
COMMENT ON COLUMN _TDAEmp.WkDeptSeq IS '근무부서코드';

COMMENT ON TABLE  _TDAEmpIn IS '정직원마스터';
COMMENT ON COLUMN _TDAEmpIn.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TDAEmpIn.EmpSeq IS '사원코드';
COMMENT ON COLUMN _TDAEmpIn.EmpID IS '외부사번';
COMMENT ON COLUMN _TDAEmpIn.UMEmpType IS '사원구분';
COMMENT ON COLUMN _TDAEmpIn.EntDate IS '입사일';
COMMENT ON COLUMN _TDAEmpIn.RetireDate IS '퇴사일';
COMMENT ON COLUMN _TDAEmpIn.IsDisabled IS '장애인여부';
COMMENT ON COLUMN _TDAEmpIn.IsForeigner IS '외국인여부';
COMMENT ON COLUMN _TDAEmpIn.SMBirthType IS '양/음';
COMMENT ON COLUMN _TDAEmpIn.BirthDate IS '생년월일';
COMMENT ON COLUMN _TDAEmpIn.UMNationSeq IS '국적';
COMMENT ON COLUMN _TDAEmpIn.SMSexSeq IS '성별';
COMMENT ON COLUMN _TDAEmpIn.IsMarriage IS '결혼여부';
COMMENT ON COLUMN _TDAEmpIn.MarriageDate IS '결혼기념일';
COMMENT ON COLUMN _TDAEmpIn.UMReligionSeq IS '종교';
COMMENT ON COLUMN _TDAEmpIn.Hobby IS '취미';
COMMENT ON COLUMN _TDAEmpIn.Speciality IS '특기';
COMMENT ON COLUMN _TDAEmpIn.Phone IS '전화번호';
COMMENT ON COLUMN _TDAEmpIn.Cellphone IS '휴대전화';
COMMENT ON COLUMN _TDAEmpIn.Extension IS '사내번호';
COMMENT ON COLUMN _TDAEmpIn.Email IS '이메일';
COMMENT ON COLUMN _TDAEmpIn.Remark IS '비고';
COMMENT ON COLUMN _TDAEmpIn.UMEmployType IS '채용형태';
COMMENT ON COLUMN _TDAEmpIn.WishTask1 IS '입사시 희망직무1';
COMMENT ON COLUMN _TDAEmpIn.WishTask2 IS '입사시 희망직무2';
COMMENT ON COLUMN _TDAEmpIn.Recommender IS '추천인 명';
COMMENT ON COLUMN _TDAEmpIn.RcmmndrCom IS '추천인 회사';
COMMENT ON COLUMN _TDAEmpIn.RcmmndrRank IS '추천인 직위';
COMMENT ON COLUMN _TDAEmpIn.PrevEmpSeq IS '이전사원코드';
COMMENT ON COLUMN _TDAEmpIn.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TDAEmpIn.LastDateTime IS '작업일시';
COMMENT ON COLUMN _TDAEmpIn.Height IS '키';
COMMENT ON COLUMN _TDAEmpIn.Weight IS '몸무게';
COMMENT ON COLUMN _TDAEmpIn.SMBloodType IS '혈액형';
COMMENT ON COLUMN _TDAEmpIn.UMHandiType IS '장애유형';
COMMENT ON COLUMN _TDAEmpIn.UMHandiGrd IS '장애등급';
COMMENT ON COLUMN _TDAEmpIn.HandiAppdate IS '장애등록일';
COMMENT ON COLUMN _TDAEmpIn.IsVeteranEmp IS '보훈대상자여부';
COMMENT ON COLUMN _TDAEmpIn.VeteranNo IS '보훈번호';
COMMENT ON COLUMN _TDAEmpIn.UMRelSeq IS '국가유공자와의관계';
COMMENT ON COLUMN _TDAEmpIn.IsJobEmp IS '취업지원대상여부';
COMMENT ON COLUMN _TDAEmpIn.EyeLt IS '좌측 시력';
COMMENT ON COLUMN _TDAEmpIn.EyeRt IS '우측 시력';
COMMENT ON COLUMN _TDAEmpIn.People IS '민족';
COMMENT ON COLUMN _TDAEmpIn.UMHouseSort IS '호구구분';
COMMENT ON COLUMN _TDAEmpIn.IsDivision IS '분리보관여부';
COMMENT ON COLUMN _TDAEmpIn.IsDelete IS '개인정보삭제여부';

COMMENT ON TABLE  _TDASMinor IS '시스템재공 기타코드 소분류';
COMMENT ON COLUMN _TDASMinor.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TDASMinor.MinorSeq IS '소분류코드';
COMMENT ON COLUMN _TDASMinor.MajorSeq IS '대분류코드';
COMMENT ON COLUMN _TDASMinor.MinorName IS '소분류명';
COMMENT ON COLUMN _TDASMinor.MinorValue IS '값';
COMMENT ON COLUMN _TDASMinor.MinorSort IS '순서';
COMMENT ON COLUMN _TDASMinor.Remark IS '비고';
COMMENT ON COLUMN _TDASMinor.WordSeq IS '사전코드';
COMMENT ON COLUMN _TDASMinor.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TDASMinor.LastDateTime IS '작업일시';
COMMENT ON COLUMN _TDASMinor.IsUse IS 'IsUse';

COMMENT ON TABLE  _TDAUMinor IS '사용자정의 기타코드 소분류';
COMMENT ON COLUMN _TDAUMinor.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TDAUMinor.MinorSeq IS '소분류코드';
COMMENT ON COLUMN _TDAUMinor.MajorSeq IS '대분류코드';
COMMENT ON COLUMN _TDAUMinor.MinorName IS '소분류명';
COMMENT ON COLUMN _TDAUMinor.MinorSort IS '순서';
COMMENT ON COLUMN _TDAUMinor.Remark IS '비고';
COMMENT ON COLUMN _TDAUMinor.WordSeq IS '사전코드';
COMMENT ON COLUMN _TDAUMinor.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TDAUMinor.LastDateTime IS '작업일시';
COMMENT ON COLUMN _TDAUMinor.IsUse IS '사용여부';

COMMENT ON TABLE  _THRAdmOrdEmp IS '발령관리';
COMMENT ON COLUMN _THRAdmOrdEmp.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _THRAdmOrdEmp.EmpSeq IS '사원코드';
COMMENT ON COLUMN _THRAdmOrdEmp.IntSeq IS '발령일련번호';
COMMENT ON COLUMN _THRAdmOrdEmp.OrdSeq IS '발령사유코드';
COMMENT ON COLUMN _THRAdmOrdEmp.OrdDate IS '발령일                ';
COMMENT ON COLUMN _THRAdmOrdEmp.OrdEndDate IS '발령종료일자';
COMMENT ON COLUMN _THRAdmOrdEmp.PuSeq IS '급여작업군';
COMMENT ON COLUMN _THRAdmOrdEmp.DeptSeq IS '소속부서';
COMMENT ON COLUMN _THRAdmOrdEmp.WkDeptSeq IS '근무부서';
COMMENT ON COLUMN _THRAdmOrdEmp.PosSeq IS '포지션내부코드';
COMMENT ON COLUMN _THRAdmOrdEmp.UMPgSeq IS '직급';
COMMENT ON COLUMN _THRAdmOrdEmp.Ps IS '호봉';
COMMENT ON COLUMN _THRAdmOrdEmp.UMJpSeq IS '직위코드';
COMMENT ON COLUMN _THRAdmOrdEmp.UMJdSeq IS '직책';
COMMENT ON COLUMN _THRAdmOrdEmp.UMJoSeq IS '직종';
COMMENT ON COLUMN _THRAdmOrdEmp.JobSeq IS '직무코드';
COMMENT ON COLUMN _THRAdmOrdEmp.PtSeq IS '급여형태';
COMMENT ON COLUMN _THRAdmOrdEmp.UMWsSeq IS '근무상태';
COMMENT ON COLUMN _THRAdmOrdEmp.IsBoss IS '부서장여부';
COMMENT ON COLUMN _THRAdmOrdEmp.Contents IS '발령내역';
COMMENT ON COLUMN _THRAdmOrdEmp.Remark IS '비고';
COMMENT ON COLUMN _THRAdmOrdEmp.IsOrdDateLast IS '일최종여부';
COMMENT ON COLUMN _THRAdmOrdEmp.IsLast IS '최종여부';
COMMENT ON COLUMN _THRAdmOrdEmp.LastUserSeq IS '작업자';
COMMENT ON COLUMN _THRAdmOrdEmp.LastDateTime IS '작업일시';
COMMENT ON COLUMN _THRAdmOrdEmp.IsWkOrd IS '근무발령생성여부';


COMMENT ON TABLE  _TPEAcIncoming IS '공기업수입';
COMMENT ON COLUMN _TPEAcIncoming.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TPEAcIncoming.IncomingSeq IS '수입내부코드';
COMMENT ON COLUMN _TPEAcIncoming.BizUnit IS '사업부문';
COMMENT ON COLUMN _TPEAcIncoming.AccYY IS '회계연도';
COMMENT ON COLUMN _TPEAcIncoming.IncomingDate IS '결의일자';
COMMENT ON COLUMN _TPEAcIncoming.DeptSeq IS '수입부서';
COMMENT ON COLUMN _TPEAcIncoming.BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN _TPEAcIncoming.EmpSeq IS '수입담당자';
COMMENT ON COLUMN _TPEAcIncoming.DetlBizSeq IS '세부사업';
COMMENT ON COLUMN _TPEAcIncoming.UMIncomingKind IS '수입구분';
COMMENT ON COLUMN _TPEAcIncoming.IncomingName IS '수입내역';
COMMENT ON COLUMN _TPEAcIncoming.IncomingRsn IS '적요';
COMMENT ON COLUMN _TPEAcIncoming.IncomingNo IS '수입결의번호';
COMMENT ON COLUMN _TPEAcIncoming.AccUnit IS '회계단위';
COMMENT ON COLUMN _TPEAcIncoming.SourceDiv IS '원천구분';
COMMENT ON COLUMN _TPEAcIncoming.SourceSeq IS '원천코드';
COMMENT ON COLUMN _TPEAcIncoming.AttachData IS '첨부파일';
COMMENT ON COLUMN _TPEAcIncoming.SMExpKind IS '예산재원구분';
COMMENT ON COLUMN _TPEAcIncoming.AccDate IS '회계일자';
COMMENT ON COLUMN _TPEAcIncoming.SMBgtKind IS 'SMBgtKind';
COMMENT ON COLUMN _TPEAcIncoming.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TPEAcIncoming.LastDateTime IS '작업일시';
COMMENT ON TABLE  _TPEAcIncomingItem IS '공기업수입세부';
COMMENT ON COLUMN _TPEAcIncomingItem.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TPEAcIncomingItem.IncomingSeq IS '수입내부코드';
COMMENT ON COLUMN _TPEAcIncomingItem.Serl IS '순번';
COMMENT ON COLUMN _TPEAcIncomingItem.BgtItemSeq IS '편성목코드';
COMMENT ON COLUMN _TPEAcIncomingItem.BgtClassSeq IS '통계목코드';
COMMENT ON COLUMN _TPEAcIncomingItem.BgtClassName IS '통계목명';
COMMENT ON COLUMN _TPEAcIncomingItem.IncomingAmt IS '수입금액';
COMMENT ON COLUMN _TPEAcIncomingItem.CurAmt IS '공급가액';
COMMENT ON COLUMN _TPEAcIncomingItem.CurVat IS '부가세';
COMMENT ON COLUMN _TPEAcIncomingItem.CustSeq IS '거래처내부코드';
COMMENT ON COLUMN _TPEAcIncomingItem.EvidSeq IS '증빙내부코드';
COMMENT ON COLUMN _TPEAcIncomingItem.AccSeq IS '계정내부코드';
COMMENT ON COLUMN _TPEAcIncomingItem.OppAccSeq IS '상대계정';
COMMENT ON COLUMN _TPEAcIncomingItem.VatAccSeq IS '부가세계정';
COMMENT ON COLUMN _TPEAcIncomingItem.BankSeq IS '금융기관지점내부코드';
COMMENT ON COLUMN _TPEAcIncomingItem.BankAccSeq IS '계좌코드';
COMMENT ON COLUMN _TPEAcIncomingItem.Remark IS '비고';
COMMENT ON COLUMN _TPEAcIncomingItem.SlipSeq IS '전표내부코드';
COMMENT ON COLUMN _TPEAcIncomingItem.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TPEAcIncomingItem.LastDateTime IS '작업일시';
COMMENT ON COLUMN _TPEAcIncomingItem.IncomingItemName IS '수입세부내역';
COMMENT ON COLUMN _TPEAcIncomingItem.TaxDate IS '입금일자';
COMMENT ON COLUMN _TPEAcIncomingItem.IncomingWay IS '입금방법코드';
COMMENT ON COLUMN _TPEAcIncomingItem.DetlBizSeq IS '세부사업코드';
COMMENT ON COLUMN _TPEAcIncomingItem.IsRepay IS '입금처리사용';
COMMENT ON COLUMN _TPEAcIncomingItem.SourceDiv IS '원천구분';
COMMENT ON COLUMN _TPEAcIncomingItem.SourceSeq IS '원천코드';
COMMENT ON COLUMN _TPEAcIncomingItem.BillSeq IS '세금계산서코드';
COMMENT ON COLUMN _TPEAcIncomingItem.BillSerl IS '세금계산서하위코드';
COMMENT ON COLUMN _TPEAcIncomingItem.CustBankInfo IS '거래처금융정보';
COMMENT ON COLUMN _TPEAcIncomingItem.SMVatType IS '부가세종류';
COMMENT ON COLUMN _TPEAcIncomingItem.Remark2 IS '비고2';
COMMENT ON COLUMN _TPEAcIncomingItem.UseDeptSeq IS '사용부서';
COMMENT ON COLUMN _TPEAcIncomingItem.UseEmpSeq IS '사용자';

COMMENT ON TABLE  _TPEAcOutgoing IS '공기업지출';
COMMENT ON COLUMN _TPEAcOutgoing.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TPEAcOutgoing.OutgoingSeq IS '지출내부코드';
COMMENT ON COLUMN _TPEAcOutgoing.BizUnit IS '사업부문';
COMMENT ON COLUMN _TPEAcOutgoing.AccYY IS '회계연도';
COMMENT ON COLUMN _TPEAcOutgoing.OutgoingDate IS '지출일자';
COMMENT ON COLUMN _TPEAcOutgoing.DeptSeq IS '지출부서';
COMMENT ON COLUMN _TPEAcOutgoing.BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN _TPEAcOutgoing.EmpSeq IS '지출담당자';
COMMENT ON COLUMN _TPEAcOutgoing.SMExpKind IS '지출예산구분';
COMMENT ON COLUMN _TPEAcOutgoing.DetlBizSeq IS '세부사업';
COMMENT ON COLUMN _TPEAcOutgoing.SMExpType IS '지출구분';
COMMENT ON COLUMN _TPEAcOutgoing.OutgoingName IS '지출명';
COMMENT ON COLUMN _TPEAcOutgoing.OutgoingRsn IS '지출사유';
COMMENT ON COLUMN _TPEAcOutgoing.CauseSeq IS '원인행위내부코드';
COMMENT ON COLUMN _TPEAcOutgoing.BatchYN IS '지출원인행위등록여부';
COMMENT ON COLUMN _TPEAcOutgoing.OutgoingNo IS '지출결의번호';
COMMENT ON COLUMN _TPEAcOutgoing.AttachData IS '첨부자료';
COMMENT ON COLUMN _TPEAcOutgoing.IsConfirm IS '확정여부';
COMMENT ON COLUMN _TPEAcOutgoing.AccUnit IS '회계단위내부코드';
COMMENT ON COLUMN _TPEAcOutgoing.SourceDiv IS '원천구분';
COMMENT ON COLUMN _TPEAcOutgoing.SourceSeq IS '원천코드';
COMMENT ON COLUMN _TPEAcOutgoing.AccDate IS '';
COMMENT ON COLUMN _TPEAcOutgoing.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TPEAcOutgoing.LastDateTime IS '작업일시';
COMMENT ON TABLE  _TPEAcOutgoingItem IS '공기업지출세부';
COMMENT ON COLUMN _TPEAcOutgoingItem.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.OutgoingSeq IS '지출내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.Serl IS '순번';
COMMENT ON COLUMN _TPEAcOutgoingItem.BgtItemSeq IS '편성목코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.BgtClassSeq IS '통계목코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.BgtClassName IS '통계목명';
COMMENT ON COLUMN _TPEAcOutgoingItem.SetAmt IS '지출금액';
COMMENT ON COLUMN _TPEAcOutgoingItem.PayAmt IS '지급명령금액';
COMMENT ON COLUMN _TPEAcOutgoingItem.CurAmt IS '공급가액';
COMMENT ON COLUMN _TPEAcOutgoingItem.CurVat IS '부가세';
COMMENT ON COLUMN _TPEAcOutgoingItem.ChargeAmt IS '수수료';
COMMENT ON COLUMN _TPEAcOutgoingItem.EvidSeq IS '증빙내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.TaxDate IS '세금계산서일';
COMMENT ON COLUMN _TPEAcOutgoingItem.NDVATAmt IS '불공제세';
COMMENT ON COLUMN _TPEAcOutgoingItem.AccSeq IS '계정내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.CustSeq IS '거래처내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.IsBigCust IS '대량거래처여부';
COMMENT ON COLUMN _TPEAcOutgoingItem.CustBankInfo IS '거래처금융정보';
COMMENT ON COLUMN _TPEAcOutgoingItem.BankSeq IS '금융기관지점내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.OppAccSeq IS '상대계정';
COMMENT ON COLUMN _TPEAcOutgoingItem.VatAccSeq IS '부가세계정';
COMMENT ON COLUMN _TPEAcOutgoingItem.ChargeAccSeq IS '수수료계정';
COMMENT ON COLUMN _TPEAcOutgoingItem.IsUsePay IS '지급명령 사용여부';
COMMENT ON COLUMN _TPEAcOutgoingItem.BankAccSeq IS '계좌코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.CardSeq IS '카드내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.Remark IS '비고';
COMMENT ON COLUMN _TPEAcOutgoingItem.SlipSeq IS '지출전표내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.OnSlipSeq IS '지급명령전표내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.PayOppAccSeq IS '지급상대계정';
COMMENT ON COLUMN _TPEAcOutgoingItem.PayBankSeq IS '지급금융기관지점내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.PayBankAccSeq IS '지급계좌코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.PayCardSeq IS '지급카드내부코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.PayRemark IS '지급비고';
COMMENT ON COLUMN _TPEAcOutgoingItem.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TPEAcOutgoingItem.LastDateTime IS '작업일시';
COMMENT ON COLUMN _TPEAcOutgoingItem.PayDate IS '지급명령일';
COMMENT ON COLUMN _TPEAcOutgoingItem.PaymentWay IS '지급방법';
COMMENT ON COLUMN _TPEAcOutgoingItem.DetlBizSeq IS '세부사업코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.CauseSerl IS '원인행위순번';
COMMENT ON COLUMN _TPEAcOutgoingItem.CustText IS '거래처(Text)';
COMMENT ON COLUMN _TPEAcOutgoingItem.UMCostType IS '비용구분코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.SourceDiv IS '원천구분';
COMMENT ON COLUMN _TPEAcOutgoingItem.SourceSeq IS '원천코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.IsFundAssign IS '자금배정사용';
COMMENT ON COLUMN _TPEAcOutgoingItem.EmpSeq IS '사원코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.ExpectedPayDate IS '출납예정일';
COMMENT ON COLUMN _TPEAcOutgoingItem.TaxAmt IS '예수금';
COMMENT ON COLUMN _TPEAcOutgoingItem.BizUnit IS '사업부문';
COMMENT ON COLUMN _TPEAcOutgoingItem.BgtDeptSeq IS '예산부서';
COMMENT ON COLUMN _TPEAcOutgoingItem.SMVatType IS '부가세종류';
COMMENT ON COLUMN _TPEAcOutgoingItem.NDVATSeq IS '부가세구분';
COMMENT ON COLUMN _TPEAcOutgoingItem.PaymentNo IS '지급명령번호';
COMMENT ON COLUMN _TPEAcOutgoingItem.SpeciExpensUser IS 'SpeciExpensUser';
COMMENT ON COLUMN _TPEAcOutgoingItem.VatCustSeq IS '부가세거래처코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.BizNoText IS '거래처사업자번호(Text)';
COMMENT ON COLUMN _TPEAcOutgoingItem.SourceDetlBizSeq IS '원천세부사업';
COMMENT ON COLUMN _TPEAcOutgoingItem.EvidFileSeq IS '증빙파일코드';
COMMENT ON COLUMN _TPEAcOutgoingItem.EvidFileName IS '증빙파일명';
COMMENT ON COLUMN _TPEAcOutgoingItem.BizExpSeq IS '사업비내부순번';
COMMENT ON COLUMN _TPEAcOutgoingItem.UMSBgtItemSeq IS '세세목코드';

COMMENT ON TABLE  _TPEBgtDetlBiz IS '공기업 예산세부사업';
COMMENT ON COLUMN _TPEBgtDetlBiz.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TPEBgtDetlBiz.DetlBizSeq IS '세부사업내부코드';
COMMENT ON COLUMN _TPEBgtDetlBiz.AccYY IS '회계연도';
COMMENT ON COLUMN _TPEBgtDetlBiz.PolicyBizSeq IS '정책사업내부코드';
COMMENT ON COLUMN _TPEBgtDetlBiz.UnitBizSeq IS '단위사업내부코드';
COMMENT ON COLUMN _TPEBgtDetlBiz.DetlBizNo IS '세부사업외부코드';
COMMENT ON COLUMN _TPEBgtDetlBiz.DetlBizName IS '세부사업명';
COMMENT ON COLUMN _TPEBgtDetlBiz.DeptSeq IS '부서내부코드';
COMMENT ON COLUMN _TPEBgtDetlBiz.UMDriveType IS '추진여부';
COMMENT ON COLUMN _TPEBgtDetlBiz.SMDetlUnBiz IS '세부비사업구분';
COMMENT ON COLUMN _TPEBgtDetlBiz.UMAccKind IS '회계구분';
COMMENT ON COLUMN _TPEBgtDetlBiz.UMBizKind IS '사업구분';
COMMENT ON COLUMN _TPEBgtDetlBiz.BizAmt IS '당해년도사업비';
COMMENT ON COLUMN _TPEBgtDetlBiz.TotalAmt IS '총사업비';
COMMENT ON COLUMN _TPEBgtDetlBiz.SMBizMethod IS '사업유형';
COMMENT ON COLUMN _TPEBgtDetlBiz.SMBizType IS '사업형태';
COMMENT ON COLUMN _TPEBgtDetlBiz.UMSupportType IS '지원형태';
COMMENT ON COLUMN _TPEBgtDetlBiz.BizBegDate IS '사업시작일';
COMMENT ON COLUMN _TPEBgtDetlBiz.BizEndDate IS '사업종료일';
COMMENT ON COLUMN _TPEBgtDetlBiz.IsConsign IS '수탁사업여부';
COMMENT ON COLUMN _TPEBgtDetlBiz.BizAim IS '사업목적';
COMMENT ON COLUMN _TPEBgtDetlBiz.BizSize IS '사업규모';
COMMENT ON COLUMN _TPEBgtDetlBiz.BizCont IS '사업내용';
COMMENT ON COLUMN _TPEBgtDetlBiz.SupportCont IS '지원조건';
COMMENT ON COLUMN _TPEBgtDetlBiz.DriveGrounds IS '추진근거';
COMMENT ON COLUMN _TPEBgtDetlBiz.EnforceSubject IS '시행주체';
COMMENT ON COLUMN _TPEBgtDetlBiz.SMWorkingStatus IS '진행상태';
COMMENT ON COLUMN _TPEBgtDetlBiz.DispSort IS '순서';
COMMENT ON COLUMN _TPEBgtDetlBiz.ReqEmpSeq IS '요청자';
COMMENT ON COLUMN _TPEBgtDetlBiz.ReqDate IS '요청일';
COMMENT ON COLUMN _TPEBgtDetlBiz.SetEmpSeq IS '확정자';
COMMENT ON COLUMN _TPEBgtDetlBiz.SetDate IS '확정일';
COMMENT ON COLUMN _TPEBgtDetlBiz.CCtrSeq IS '활동센터코드';
COMMENT ON COLUMN _TPEBgtDetlBiz.LastUserSeq IS '작성자';
COMMENT ON COLUMN _TPEBgtDetlBiz.LastDateTime IS '작성일시';
COMMENT ON COLUMN _TPEBgtDetlBiz.BgtInComing IS '수입예산사용';
COMMENT ON COLUMN _TPEBgtDetlBiz.BgtOutComing IS '지출예산사용';
COMMENT ON COLUMN _TPEBgtDetlBiz.FileSeq IS '파일순번';
COMMENT ON COLUMN _TPEBgtDetlBiz.IsFundAssign IS '자금배정사용여부';
COMMENT ON COLUMN _TPEBgtDetlBiz.AccUnit IS '회계단위';
COMMENT ON COLUMN _TPEBgtDetlBiz.IsEnd IS '마감여부';
COMMENT ON COLUMN _TPEBgtDetlBiz.IsEndEmpSeq IS '마감담당자';
COMMENT ON COLUMN _TPEBgtDetlBiz.BgtCurrYN IS '예산미통제';
COMMENT ON COLUMN _TPEBgtDetlBiz.DetlAgencyCode IS '세부사업기관코드';
COMMENT ON COLUMN _TPEBgtDetlBiz.SubjSeq IS '연구과제내부코드';

COMMENT ON TABLE  _TPEBgtInCurrAmt IS '공기업 수입예산현액';
COMMENT ON COLUMN _TPEBgtInCurrAmt.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TPEBgtInCurrAmt.AccYY IS '회계연도';
COMMENT ON COLUMN _TPEBgtInCurrAmt.SMBgtCurrType IS '예산현액구분';
COMMENT ON COLUMN _TPEBgtInCurrAmt.BgtDate IS '적용일';
COMMENT ON COLUMN _TPEBgtInCurrAmt.BizUnit IS '사업부문';
COMMENT ON COLUMN _TPEBgtInCurrAmt.AccDeptSeq IS '발의부서';
COMMENT ON COLUMN _TPEBgtInCurrAmt.BgtDeptSeq IS '#예산관리단위';
COMMENT ON COLUMN _TPEBgtInCurrAmt.DetlBizSeq IS '세부사업';
COMMENT ON COLUMN _TPEBgtInCurrAmt.BgtItemSeq IS '편성목';
COMMENT ON COLUMN _TPEBgtInCurrAmt.BgtClassSeq IS '통계목';
COMMENT ON COLUMN _TPEBgtInCurrAmt.BgtClassName IS '통계목명';
COMMENT ON COLUMN _TPEBgtInCurrAmt.SMExpKind IS '지출구분';
COMMENT ON COLUMN _TPEBgtInCurrAmt.CurrAmt IS '금액';
COMMENT ON COLUMN _TPEBgtInCurrAmt.LastUserSeq IS '작업자';
COMMENT ON COLUMN _TPEBgtInCurrAmt.LastDateTime IS '작업일시';
COMMENT ON COLUMN _TPEBgtInCurrAmt.CompileDeg IS '편성차수';

COMMENT ON TABLE  _TPEBgtPolicyBiz IS '공기업 예산정책사업';
COMMENT ON COLUMN _TPEBgtPolicyBiz.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TPEBgtPolicyBiz.PolicyBizSeq IS '정책사업내부코드';
COMMENT ON COLUMN _TPEBgtPolicyBiz.AccYY IS '회계연도';
COMMENT ON COLUMN _TPEBgtPolicyBiz.PolicyBizNo IS '정책사업외부코드';
COMMENT ON COLUMN _TPEBgtPolicyBiz.PolicyBizName IS '정책사업명';
COMMENT ON COLUMN _TPEBgtPolicyBiz.UMFieldType IS '분야코드';
COMMENT ON COLUMN _TPEBgtPolicyBiz.UMSectorType IS '부문코드';
COMMENT ON COLUMN _TPEBgtPolicyBiz.SMUnBizType IS '비사업구분';
COMMENT ON COLUMN _TPEBgtPolicyBiz.BizAim IS '사업목적';
COMMENT ON COLUMN _TPEBgtPolicyBiz.Effect IS '기대효과';
COMMENT ON COLUMN _TPEBgtPolicyBiz.DispSort IS '순서';
COMMENT ON COLUMN _TPEBgtPolicyBiz.LastUserSeq IS '작성자';
COMMENT ON COLUMN _TPEBgtPolicyBiz.LastDateTime IS '작성일시';
COMMENT ON COLUMN _TPEBgtPolicyBiz.PolicyAgencyCode IS '정책사업기관코드';

COMMENT ON TABLE  _TPEBgtUnitBiz IS '공기업 예산단위사업';
COMMENT ON COLUMN _TPEBgtUnitBiz.CompanySeq IS '법인내부코드';
COMMENT ON COLUMN _TPEBgtUnitBiz.UnitBizSeq IS '단위사업내부코드';
COMMENT ON COLUMN _TPEBgtUnitBiz.AccYY IS '회계연도';
COMMENT ON COLUMN _TPEBgtUnitBiz.PolicyBizSeq IS '정책사업내부코드';
COMMENT ON COLUMN _TPEBgtUnitBiz.UnitBizNo IS '단위사업외부코드';
COMMENT ON COLUMN _TPEBgtUnitBiz.UnitBizName IS '단위사업명';
COMMENT ON COLUMN _TPEBgtUnitBiz.DeptSeq IS '부서내부코드';
COMMENT ON COLUMN _TPEBgtUnitBiz.UMDriveType IS '추진구분';
COMMENT ON COLUMN _TPEBgtUnitBiz.SMUnitUnBiz IS '단위비사업구분';
COMMENT ON COLUMN _TPEBgtUnitBiz.BizAim IS '사업목적';
COMMENT ON COLUMN _TPEBgtUnitBiz.BizScale IS '사업규모';
COMMENT ON COLUMN _TPEBgtUnitBiz.BizCont IS '사업내용';
COMMENT ON COLUMN _TPEBgtUnitBiz.DriveGrounds IS '추진근거';
COMMENT ON COLUMN _TPEBgtUnitBiz.SMWorkingStatus IS '진행상태';
COMMENT ON COLUMN _TPEBgtUnitBiz.DispSort IS '순서';
COMMENT ON COLUMN _TPEBgtUnitBiz.LastUserSeq IS '작성자';
COMMENT ON COLUMN _TPEBgtUnitBiz.LastDateTime IS '작성일시';
COMMENT ON COLUMN _TPEBgtUnitBiz.UnitAgencyCode IS '단위사업기관코드';



ALTER TABLE "_TDAAccount" ADD CONSTRAINT "PK__TDAAccount" PRIMARY KEY (CompanySeq,AccSeq);

ALTER TABLE "_TDADept" ADD CONSTRAINT "PK__TDADept" PRIMARY KEY (CompanySeq,DeptSeq);

ALTER TABLE "_TDAEmp" ADD CONSTRAINT "PK__TDAEmp" PRIMARY KEY (CompanySeq,EmpSeq);

ALTER TABLE "_TDAEmpIn" ADD CONSTRAINT "PK__TDAEmpIn" PRIMARY KEY (CompanySeq,EmpSeq);

ALTER TABLE "_TDASMinor" ADD CONSTRAINT "PK__TDASMinor" PRIMARY KEY (CompanySeq,MinorSeq);

ALTER TABLE "_TDAUMinor" ADD CONSTRAINT "PK__TDAUMinor" PRIMARY KEY (CompanySeq,MinorSeq);

ALTER TABLE "_THRAdmOrdEmp" ADD CONSTRAINT "PK__THRAdmOrdEmp" PRIMARY KEY (CompanySeq,EmpSeq,IntSeq);

ALTER TABLE "_TPEAcIncoming" ADD CONSTRAINT "PK__TPEAcIncoming" PRIMARY KEY (CompanySeq,IncomingSeq);

ALTER TABLE "_TPEAcIncomingItem" ADD CONSTRAINT "PK__TPEAcIncomingItem" PRIMARY KEY (CompanySeq,IncomingSeq,Serl);

ALTER TABLE "_TPEAcOutgoing" ADD CONSTRAINT "PK__TPEAcOutgoing" PRIMARY KEY (CompanySeq,OutgoingSeq);


ALTER TABLE "_TPEAcOutgoingItem" ADD CONSTRAINT "PK__TPEAcOutgoingItem" PRIMARY KEY (CompanySeq,OutgoingSeq,Serl);

ALTER TABLE "_TPEBgtDetlBiz" ADD CONSTRAINT "PK__TPEBgtDetlBiz" PRIMARY KEY (CompanySeq,DetlBizSeq);

ALTER TABLE "_TPEBgtPolicyBiz" ADD CONSTRAINT "PK__TPEBgtPolicyBiz" PRIMARY KEY (CompanySeq,PolicyBizSeq);

ALTER TABLE "_TPEBgtUnitBiz" ADD CONSTRAINT "PK__TPEBgtUnitBiz" PRIMARY KEY (CompanySeq,UnitBizSeq);