/* checksum : 57e22638477b4aafeb32479f66fdf962 */
@cds.external : true
type insurance_claim.SAP__Message {
  code : LargeString not null;
  message : LargeString not null;
  target : LargeString;
  additionalTargets : many LargeString not null;
  transition : Boolean not null;
  @odata.Type : 'Edm.Byte'
  numericSeverity : Integer not null;
  longtextUrl : LargeString;
};

@cds.external : true
@CodeList.CurrencyCodes : {
  Url: '../../../../default/iwbep/common/0001/$metadata',
  CollectionPath: 'Currencies'
}
@CodeList.UnitsOfMeasure : {
  Url: '../../../../default/iwbep/common/0001/$metadata',
  CollectionPath: 'UnitsOfMeasure'
}
@Aggregation.ApplySupported : {
  Transformations: [ 'aggregate', 'groupby', 'filter' ],
  Rollup: #None
}
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering : true
@Capabilities.FilterFunctions : [
  'eq',
  'ne',
  'gt',
  'ge',
  'lt',
  'le',
  'and',
  'or',
  'contains',
  'startswith',
  'endswith',
  'any',
  'all'
]
@Capabilities.SupportedFormats : [ 'application/json', 'application/pdf' ]
@PDF.Features : {
  DocumentDescriptionReference: '../../../../default/iwbep/common/0001/$metadata',
  DocumentDescriptionCollection: 'MyDocumentDescriptions',
  ArchiveFormat: true,
  Border: true,
  CoverPage: true,
  FitToPage: true,
  FontName: true,
  FontSize: true,
  Margin: true,
  Padding: true,
  Signature: true,
  HeaderFooter: true,
  ResultSizeDefault: 20000,
  ResultSizeMaximum: 20000
}
@Capabilities.KeyAsSegmentSupported : true
@Capabilities.AsynchronousRequestsSupported : true
@Authorization.SecuritySchemes : [
  {
    Authorization: 'OAuth2Auth',
    RequiredScopes: [  ]
  },
  { Authorization: 'BasicAuth' }
]
@Authorization.Authorizations : [
  {
    $Type: 'Auth.OAuth2AuthCode',
    Name: 'OAuth2Auth',
    RefreshUrl: 'https://{host}:{port}',
    AuthorizationUrl: 'https://{host}:{port}',
    TokenUrl: 'https://{host}:{port}',
    Scopes: [  ]
  },
  {
    $Type: 'Auth.Http',
    Name: 'BasicAuth',
    Scheme: 'basic'
  }
]
service insurance_claim {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Loss Location SFC'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsClmSrvcsLossLocSFC {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'FactsCapt.Cat.'
  @Common.QuickInfo : 'Facts Capture Category'
  key InsurClmFactCaptureCategory : String(2) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Subobject'
  @Common.QuickInfo : 'ID of Claim Subobject'
  key InsurFactsSubobject : String(14) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Question'
  @Common.QuickInfo : 'Facts Capture: Question'
  key InsurClmFactCaptureQstn : String(5) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Answer'
  @Common.QuickInfo : 'Facts Capture: Answer'
  key InsurClmFactCaptureAnswer : String(3) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Variant'
  @Common.QuickInfo : 'Variant of a Question Sequence'
  InsurClmFactCaptureSqncVariant : String(2) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Position'
  @Common.QuickInfo : 'Position of Question in Sequence'
  InsurClmFactCaptureQstnPos : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Question Seq.'
  @Common.QuickInfo : 'Facts Capture: Key of Question Sequence'
  InsurClmFactCaptureQstnSqnc : String(3) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Version'
  @Common.QuickInfo : 'Version of Question Sequence'
  InsurClmFactCaptureSqncVersion : String(4) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmChangeDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  InsuranceClaimChangedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'User-DefTextInp'
  @Common.QuickInfo : 'Category for User-Defined Text Input'
  InsurClmFactFreeTextAnswerCat : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : '? Category'
  @Common.QuickInfo : 'Structure Facts Capture: Question Category'
  InsurClmFactCaptureQstnCat : String(1) not null;
  @Common.Label : 'Short Text'
  @Common.QuickInfo : 'Facts Capture: Question Short Text'
  InsurClmFactCaptureQstnShrtTxt : String(30) not null;
  @Common.Label : 'Long Text'
  @Common.QuickInfo : 'Facts Capture: Question Long Text'
  InsurClmFactCaptureQstnLongTxt : String(80) not null;
  @Common.Label : 'Answer - short text'
  @Common.QuickInfo : 'Structured Facts Capture: Answer Short Text'
  InsurClmFactAnswerShortText : String(30) not null;
  @Common.Label : 'Answer - long text'
  @Common.QuickInfo : 'Structured Facts Capture: Answer Long Text'
  InsurClmFactAnswerLongText : String(254) not null;
  @Common.Label : 'Text'
  @Common.QuickInfo : 'Free Format Answer Text'
  InsurClmFactCaptureTextAnswer : String(254) not null;
  @Common.Label : 'Text'
  @Common.QuickInfo : 'Free Format Answer Text'
  InsurClmFactUsrSeldAnswerKeys : String(254) not null;
  @Common.Label : 'Multip. answers'
  @Common.QuickInfo : 'Flag: Multiple Answers Allowed?'
  InsurClmFactQstnIsMltplChoice : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Question'
  @Common.QuickInfo : 'Facts Capture: Question'
  InsurClmFactCaptureNextQstn : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Change category'
  @Common.Heading : 'CCat'
  InsuranceClaimChangeCategory : String(1) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Srvcs SFC for Origin Of Loss'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsClmSrvcsOrignOfLsSFC {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'FactsCapt.Cat.'
  @Common.QuickInfo : 'Facts Capture Category'
  key InsurClmFactCaptureCategory : String(2) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Subobject'
  @Common.QuickInfo : 'ID of Claim Subobject'
  key InsurFactsSubobject : String(14) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Question'
  @Common.QuickInfo : 'Facts Capture: Question'
  key InsurClmFactCaptureQstn : String(5) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Answer'
  @Common.QuickInfo : 'Facts Capture: Answer'
  key InsurClmFactCaptureAnswer : String(3) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Variant'
  @Common.QuickInfo : 'Variant of a Question Sequence'
  InsurClmFactCaptureSqncVariant : String(2) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Position'
  @Common.QuickInfo : 'Position of Question in Sequence'
  InsurClmFactCaptureQstnPos : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Question Seq.'
  @Common.QuickInfo : 'Facts Capture: Key of Question Sequence'
  InsurClmFactCaptureQstnSqnc : String(3) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Version'
  @Common.QuickInfo : 'Version of Question Sequence'
  InsurClmFactCaptureSqncVersion : String(4) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmChangeDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  InsuranceClaimChangedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : '? Category'
  @Common.QuickInfo : 'Structure Facts Capture: Question Category'
  InsurClmFactCaptureQstnCat : String(1) not null;
  @Common.Label : 'Short Text'
  @Common.QuickInfo : 'Facts Capture: Question Short Text'
  InsurClmFactCaptureQstnShrtTxt : String(30) not null;
  @Common.Label : 'Long Text'
  @Common.QuickInfo : 'Facts Capture: Question Long Text'
  InsurClmFactCaptureQstnLongTxt : String(80) not null;
  @Common.Label : 'Answer - short text'
  @Common.QuickInfo : 'Structured Facts Capture: Answer Short Text'
  InsurClmFactAnswerShortText : String(30) not null;
  @Common.Label : 'Answer - long text'
  @Common.QuickInfo : 'Structured Facts Capture: Answer Long Text'
  InsurClmFactAnswerLongText : String(254) not null;
  @Common.Label : 'Text'
  @Common.QuickInfo : 'Free Format Answer Text'
  InsurClmFactCaptureTextAnswer : String(254) not null;
  @Common.Label : 'Text'
  @Common.QuickInfo : 'Free Format Answer Text'
  InsurClmFactUsrSeldAnswerKeys : String(254) not null;
  @Common.Label : 'Multip. answers'
  @Common.QuickInfo : 'Flag: Multiple Answers Allowed?'
  InsurClmFactQstnIsMltplChoice : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Question'
  @Common.QuickInfo : 'Facts Capture: Question'
  InsurClmFactCaptureNextQstn : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Change category'
  @Common.Heading : 'CCat'
  InsuranceClaimChangeCategory : String(1) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Participant SFC'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsClmSrvcsParticipantSFC {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Subobject'
  key InsurClmSubobject : String(16) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subobject Cat.'
  @Common.QuickInfo : 'Claim Subobject Category'
  key InsurClmSubobjectCategory : String(2) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'ParticipantRole'
  @Common.Heading : 'Role'
  @Common.QuickInfo : 'Participant Role Key'
  key InsurClmParticipantRole : String(4) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Participant BP No.'
  @Common.Heading : 'Partic.No.'
  @Common.QuickInfo : 'Claim Participant'
  key BusinessPartner : String(10) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'FactsCapt.Cat.'
  @Common.QuickInfo : 'Facts Capture Category'
  key InsurClmFactCaptureCategory : String(2) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Subobject'
  @Common.QuickInfo : 'ID of Claim Subobject'
  key InsurFactsSubobject : String(14) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Question'
  @Common.QuickInfo : 'Facts Capture: Question'
  key InsurClmFactCaptureQstn : String(5) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Answer'
  @Common.QuickInfo : 'Facts Capture: Answer'
  key InsurClmFactCaptureAnswer : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'User-DefTextInp'
  @Common.QuickInfo : 'Category for User-Defined Text Input'
  InsurClmFactFreeTextAnswerCat : String(1) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Position'
  @Common.QuickInfo : 'Position of Question in Sequence'
  InsurClmFactCaptureQstnPos : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Question Seq.'
  @Common.QuickInfo : 'Facts Capture: Key of Question Sequence'
  InsurClmFactCaptureQstnSqnc : String(3) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Version'
  @Common.QuickInfo : 'Version of Question Sequence'
  InsurClmFactCaptureSqncVersion : String(4) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Variant'
  @Common.QuickInfo : 'Variant of a Question Sequence'
  InsurClmFactCaptureSqncVariant : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : '? Category'
  @Common.QuickInfo : 'Structure Facts Capture: Question Category'
  InsurClmFactCaptureQstnCat : String(1) not null;
  @Common.Label : 'Short Text'
  @Common.QuickInfo : 'Facts Capture: Question Short Text'
  InsurClmFactCaptureQstnShrtTxt : String(30) not null;
  @Common.Label : 'Long Text'
  @Common.QuickInfo : 'Facts Capture: Question Long Text'
  InsurClmFactCaptureQstnLongTxt : String(80) not null;
  @Common.Label : 'Answer - short text'
  @Common.QuickInfo : 'Structured Facts Capture: Answer Short Text'
  InsurClmFactAnswerShortText : String(30) not null;
  @Common.Label : 'Answer - long text'
  @Common.QuickInfo : 'Structured Facts Capture: Answer Long Text'
  InsurClmFactAnswerLongText : String(254) not null;
  @Common.Label : 'Text'
  @Common.QuickInfo : 'Free Format Answer Text'
  InsurClmFactCaptureTextAnswer : String(254) not null;
  @Common.Label : 'Text'
  @Common.QuickInfo : 'Free Format Answer Text'
  InsurClmFactUsrSeldAnswerKeys : String(254) not null;
  @Common.Label : 'Multip. answers'
  @Common.QuickInfo : 'Flag: Multiple Answers Allowed?'
  InsurClmFactQstnIsMltplChoice : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Question'
  @Common.QuickInfo : 'Facts Capture: Question'
  InsurClmFactCaptureNextQstn : String(5) not null;
  @Common.Label : 'Checkbox'
  InsurClmIsHiddenFlag : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Change category'
  @Common.Heading : 'CCat'
  InsuranceClaimChangeCategory : String(1) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  _InsurClmPrtcpnt : Association to one insurance_claim.InsurClmSrvcsParticipant {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Payment'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsuranceClaimServicesPayment {
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subclaim'
  @Common.Heading : 'SubC'
  @Common.QuickInfo : 'Subclaim of Payment'
  key InsurClmSubclm : String(3) not null;
  @Core.Computed : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Payment Number'
  @Common.Heading : 'Payment'
  @Common.QuickInfo : 'Number of Claim Payment'
  key InsurClmPayt : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Payt RecordType'
  @Common.Heading : 'Rec.Type'
  @Common.QuickInfo : 'Record Type of Payment'
  InsurClmPaytCat : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Payment Type'
  @Common.Heading : 'Paymnt Type'
  @Common.QuickInfo : 'Payment Type (Final Payment, Payment After Closure of Claim)'
  InsurClmPaymentType : String(1) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.Heading : 'Crcy'
  @Common.QuickInfo : 'Claim Payment Currency'
  InsurClmPaymentCurrency : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Internal Status'
  @Common.Heading : 'Internal Payment Status'
  @Common.QuickInfo : 'Internal Payment Status (Database Status)'
  InsurClmPaymentDatabaseStatus : String(2) not null;
  @Common.Label : 'Link UUID'
  @Common.Heading : 'UUID of Link'
  @Common.QuickInfo : 'UUID of Entry to be Linked'
  InsurClmAssignUUID : UUID;
  @Common.Label : 'Posting Date'
  @Common.Heading : 'Postg Date'
  InsurClmPaytPostgDte : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Payment Method'
  InsurClmPaytMethod : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Check Number'
  @Common.QuickInfo : 'Check Number for Manual Check Payments'
  InsurClmPaytCheque : String(13) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Bank Details'
  @Common.QuickInfo : 'Bank Details ID'
  InsurClmBankID : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Doc. Reference'
  @Common.Heading : 'Doc. Ref.'
  @Common.QuickInfo : 'Reference for Payment Document Created in Subledger'
  InsurClmPaytDocRefInSubLedger : String(14) not null;
  @Common.Label : 'Net Due Date'
  @Common.QuickInfo : 'Due Date for Net Payment'
  InsurClmPaytDueDate : Date;
  @Common.Label : 'Already Paid'
  @Common.QuickInfo : 'Payment Already Made'
  InsurClmPaytHasAlreadyPaid : Boolean not null;
  @Common.Label : 'Addl Payee'
  @Common.QuickInfo : 'Additional Payee (ICLPAYEE)'
  InsurClmPaytHasAddlPayee : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Payee''s address'
  @Common.Heading : 'Address'
  @Common.QuickInfo : 'Address Number for Checks'
  InsurClmPaytAddrNmbrForChecks : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Payee''s address'
  @Common.Heading : 'Address'
  @Common.QuickInfo : 'Address Number for Checks'
  InsurClmPaytCheckRcpntAddrNmbr : String(10) not null;
  @Common.Label : 'Note to Payee'
  @Common.Heading : 'Purpose'
  @Common.QuickInfo : 'Payment Note'
  InsurClmPaytNote : String(100) not null;
  @Common.Label : 'Service Start'
  @Common.QuickInfo : 'Service Start Date'
  InsurClmServicePeriodStartDate : Date;
  @Common.Label : 'Service End'
  @Common.QuickInfo : 'Service End Date'
  InsurClmServicePeriodEndDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  InsurClmChangedBy : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Time Stamp'
  @Common.QuickInfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  InsurClmChangeTime : DateTime;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Claim Item'
@Common.SemanticKey : [ 'InsurClmSubclm' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: InsurClmItemEvalQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmItemEvalPerUnitAmt,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmItemEvalAmount,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmItmEvalActlCshValAmt,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmItemClmdAmount,
    AllowedExpressions: 'MultiValue'
  }
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClaimServicesClaimItem {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subclaim Number'
  @Common.Heading : 'SubC'
  @Common.QuickInfo : 'Subclaim'
  key InsurClmSubclm : String(3) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Item'
  key InsurClmItem : String(4) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Evaluation'
  @Common.QuickInfo : 'Claim Item Evaluation'
  key InsurClmItemEvaluation : String(2) not null;
  @odata.Precision : 7
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Time Stamp'
  @Common.QuickInfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  LastChangeDateTime : Timestamp;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Item Category'
  InsurClmItemCat : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Object Type'
  @Common.Heading : 'Claim Item Object Type'
  @Common.QuickInfo : 'Claim Item Object Type'
  InsurClmItemType : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Coverage Type'
  InsurClmCoverageType : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Benefit Type'
  InsurBnftType : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Status of Claim Item'
  InsurClmItemStatus : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Rejection Reasn'
  @Common.QuickInfo : 'Claim Item Rejection Reason'
  InsurClmItemRjcnRsn : String(2) not null;
  @Common.Label : 'Description'
  @Common.Heading : 'Claim Item Description'
  @Common.QuickInfo : 'Claim Item Description'
  InsurClmItemDescription : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Evaluation By'
  @Common.QuickInfo : 'Type of Evaluator'
  InsurClmItemEvalBase : String(3) not null;
  @Measures.Unit : InsurClmItemEvalQuantityUnit
  @Common.Label : 'Number'
  @Common.QuickInfo : 'Claim Item: Number (Days, Visits, Area) for Evaluation'
  InsurClmItemEvalQuantity : Decimal(10, 3) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit'
  @Common.Heading : 'Claim Item: Unit of Measure'
  @Common.QuickInfo : 'Claim Item: Unit of Measurement'
  InsurClmItemEvalQuantityUnit : String(3) not null;
  @Measures.ISOCurrency : InsurClmItemEvalCurrency
  @Common.Label : 'Amount per Unit'
  InsurClmItemEvalPerUnitAmt : Decimal(precision: 15) not null;
  @Measures.ISOCurrency : InsurClmItemEvalCurrency
  @Common.Label : 'Evaluated Amount'
  InsurClmItemEvalAmount : Decimal(precision: 15) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.QuickInfo : 'Currency of Evaluated Amount'
  InsurClmItemEvalCurrency : String(3) not null;
  @Measures.ISOCurrency : InsurClmItemEvalCurrency
  @Common.Label : 'Act.Cash Value'
  @Common.QuickInfo : 'Actual Cash Value'
  InsurClmItmEvalActlCshValAmt : Decimal(precision: 15) not null;
  @Common.Label : 'ACV Part'
  @Common.QuickInfo : 'Proportion of Actual Cash Value to Original Cash Value in %'
  InsurClmItmEvalActlCshValPct : Decimal(5, 2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Tax Code'
  InsurClmItemTaxCode : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Belongs To'
  @Common.QuickInfo : 'Subclaim to Which a Claim Item Is Assigned'
  InsurClmItemSubclmRef : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Item'
  InsurClmItemRef : String(4) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Damaged Object'
  InsurClmDamagedObject : String(4) not null;
  @Common.Label : 'Liability Rate'
  @Common.QuickInfo : 'Liability Rate in Percent'
  InsurClmItemLiabilityRate : Decimal(5, 2) not null;
  @Common.Label : 'TRUE'
  @Common.QuickInfo : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
  InsurClmItemHasAlreadyPaidOut : Boolean not null;
  @Measures.ISOCurrency : InsurClmItemEvalCurrency
  @Common.Label : 'Amount Requestd'
  @Common.Heading : 'Amount Requested'
  @Common.QuickInfo : 'Amount Requested'
  InsurClmItemClmdAmount : Decimal(precision: 15) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Change category'
  @Common.Heading : 'CCat'
  InsuranceClaimChangeCategory : String(1) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Subclaim'
@Common.SemanticKey : [ 'InsurClmSubclm' ]
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _InsurClmSrvcsSubclmAttch,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsSubclmItem,
    InsertRestrictions: { Insertable: true }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClaimServicesSubclaim {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subclaim Number'
  @Common.Heading : 'SubC'
  @Common.QuickInfo : 'Subclaim'
  key InsurClmSubclm : String(3) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Time Stamp'
  @Common.QuickInfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  CreationDateTime : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Time Stamp'
  @Common.QuickInfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  LastChangeDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  InsuranceClaimChangedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Created By'
  CreatedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Status of Subclaim'
  InsurClmLifeCycSts : String(2) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Time Stamp'
  @Common.QuickInfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  InsurClmSubclmStsChgdOnDteTime : DateTime;
  @Common.Label : 'No Claim Made'
  InsuranceClaimIsNoClaimMade : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Subclaim Type'
  @Common.Heading : 'Subclm Type'
  InsurClmSubclmType : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Subrogatn/Rcvry'
  @Common.Heading : 'SubroR'
  @Common.QuickInfo : 'Subrogation/Recovery Status'
  InsurClmSubrogtnRecoveryStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Assignment Status'
  @Common.Heading : 'Assgmt Status'
  @Common.QuickInfo : 'Assignment Status of a Claim Subobject'
  InsurClmActyAssgmtSts : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Clm Hdlr Cat.'
  @Common.QuickInfo : 'Object Category of Subclaim Handler'
  InsurClmActyHdlrType : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Clm Hdlr Cat.'
  @Common.QuickInfo : 'Object Category of Subclaim Handler Group'
  InsurClmActyHdlrTypeGrp : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'CH Group'
  @Common.Heading : 'Claim Handler Group'
  @Common.QuickInfo : 'Claim Handler Group for Subclaims'
  InsurClmSubclmHandlerGroupName : String(12) not null;
  @Common.Label : 'Claim/Subclaim'
  @Common.Heading : 'Belongs to Claim/Subclm'
  @Common.QuickInfo : 'Name of Claim/Subclaim'
  InsurClmSubclaimDescription : String(20) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Benefit Type Tree'
  InsurClmBenefitTypeTree : String(8) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Generation'
  @Common.QuickInfo : 'Generation of Benefit Type Tree'
  InsurClmBnftTypeTreeGeneration : String(5) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Version'
  @Common.QuickInfo : 'Version of Benefit Type Tree'
  InsurClmBnftTypeTreeVersion : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Coverage'
  @Common.Heading : 'Coverge'
  InsurClmCoverage : String(4) not null;
  @Common.Label : 'Claim Handling Actve'
  @Common.Heading : 'Claim Handling Process Is Active'
  @Common.QuickInfo : '"Claim Handling" Process Active'
  IsInProcess : Boolean not null;
  @Common.Label : 'Closed'
  @Common.QuickInfo : '"Close (Sub)Claim" Process Executed'
  IsClosed : Boolean not null;
  @Common.Label : 'Subclaim Invalid'
  InsurClmIsSubclaimInvalid : Boolean not null;
  @Common.Label : 'Rejected'
  @Common.QuickInfo : 'Claim/Subclaim Rejected'
  InsurClmIsSubclaimRejected : Boolean not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Time Stamp'
  @Common.QuickInfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  InsurClmWrkflwExecDteTme : DateTime;
  @Common.IsDigitSequence : true
  @Common.Label : 'WF Status'
  @Common.QuickInfo : 'Workflow Status'
  InsurClmWorkflowStatus : String(1) not null;
  @Common.Label : 'Link UUID'
  @Common.Heading : 'UUID of Link'
  @Common.QuickInfo : 'UUID of Entry to be Linked'
  InsurClmSubclaimAssignUUID : UUID;
  @Common.IsUpperCase : true
  @Common.Label : 'Compensable'
  @Common.QuickInfo : 'Indication of Compensability'
  InsurClmCvrgConfirmedFlag : String(1) not null;
  @Common.Label : 'Potential Fraud'
  @Common.QuickInfo : 'Flag: Potential Fraud?'
  InsurClmFraudFlag : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Salvage'
  @Common.Heading : 'Salv'
  @Common.QuickInfo : 'Flag: Salvage?'
  InsurClmSalvageFlag : String(1) not null;
  @Common.Label : 'Litigation'
  @Common.QuickInfo : 'Flag: Litigation?'
  InsurClmLitigationFlag : Boolean not null;
  @Common.Label : 'Negotiation'
  @Common.QuickInfo : 'Flag: Negotiation?'
  InsurClmNegotiationFlag : Boolean not null;
  @Common.Label : 'List Complete'
  @Common.QuickInfo : 'Flag: Claim Item List (Presumably) Complete'
  InsurClmIsSubclaimComplete : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status Reason'
  @Common.QuickInfo : 'Reason for Changing the Status'
  InsurClmSubclmStsRsn : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Complexity'
  @Common.QuickInfo : 'Complexity of Claim/Subclaim'
  InsurClmComplexity : String(1) not null;
  @Common.Label : 'Other Insurance'
  @Common.QuickInfo : 'Flag: Other Insurance?'
  InsurClmIsOtherInsurance : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Highest ClmItNo'
  @Common.QuickInfo : 'Current Highest Claim Item Number'
  InsuranceClaimMaxItemNumber : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Overruling Reason'
  InsuranceClaimOverruleReason : String(3) not null;
  @Common.Label : 'Benefit Start'
  @Common.Heading : 'Start of Benefit'
  @Common.QuickInfo : 'Start of Benefit'
  InsuranceClaimBenefitStartDate : Date;
  @Common.Label : 'Benefit End'
  @Common.Heading : 'End of Benefit'
  @Common.QuickInfo : 'End of Benefit'
  InsuranceClaimBenefitEndDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Compensability'
  InsurClmCompensationAbility : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Subro/Rcv Potntl'
  @Common.QuickInfo : 'Subrogation/Recovery Potential of a Subclaim (Check Status)'
  InsurClmSubrogtnPotential : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Ben.Calculation No.'
  @Common.Heading : 'Number of Benefit Calculation'
  @Common.QuickInfo : 'Sequence Number of Benefit Calculation'
  InsurClmBnftCalcSqncNmbr : String(20) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Insured Object No.'
  @Common.Heading : 'Number of Insured Object'
  @Common.QuickInfo : 'Insured Object Number'
  InsurClmInsuredObject : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Archiving Status'
  InsurClmArchivingStatus : String(1) not null;
  @Common.Label : 'Resubmission Date'
  InsurClmArchResubmsnDte : Date;
  @Common.Label : 'Rejection Reason'
  InsurClmArchRjcnRsn : String(2) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'VersnCovgeContr'
  @Common.QuickInfo : 'Version Number of Coverage Contract'
  InsurClmContractVersion : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Handler'
  @Common.Heading : 'ClaimHandler'
  @Common.QuickInfo : 'Claim Handler for Subclaim'
  InsurClmSubclmHandlerName : String(12) not null;
  @Common.Label : 'Claim Handling Actve'
  @Common.Heading : 'Claim Handling Process Is Active'
  @Common.QuickInfo : '"Claim Handling" Process Active'
  InsuranceClaimIsStatusHandler : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Coverage Type'
  InsurClmCoverageType : String(10) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  @Common.Composition : true
  _InsurClmSrvcsSubclmAttch : Composition of many insurance_claim.InsurClmSrvcsSubclmAttch {  };
  @Common.Composition : true
  _InsurClmSrvcsSubclmItem : Composition of many insurance_claim.InsurClmSrvcsSubclmItem {  };
  _InsurClmSrvcsTask : Association to many insurance_claim.InsurClaimServicesTask {  };
} actions {
  action SetSubClaimToClosed(
    _it : $self not null
  ) returns insurance_claim.InsurClaimServicesSubclaim not null;
  action SetSubClaimToOpen(
    _it : $self not null
  ) returns insurance_claim.InsurClaimServicesSubclaim not null;
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Task'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClaimServicesTask {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subclaim Number'
  @Common.Heading : 'SubC'
  @Common.QuickInfo : 'Subclaim'
  key InsurClmSubclm : String(3) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'No.'
  @Common.QuickInfo : 'Sequence Number of Activity'
  key InsurClmActivitySequenceNumber : String(4) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  CreationDateTime : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  ChangedOnDateTime : DateTime;
  CreationDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Task'
  @Common.QuickInfo : 'Activity Management: Task'
  InsurClmActivity : String(6) not null;
  @Common.Label : 'Manually'
  @Common.QuickInfo : 'Task Set Manually'
  InsurClmTaskManualFlag : Boolean not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmDueDateTime : DateTime;
  InsurClmDueDate : Date;
  InsurClmTaskTimeDifference : Decimal(precision: 15) not null;
  @Common.Label : 'Task Completed'
  InsurClmTaskCompleted : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status of a Task'
  @Common.QuickInfo : 'Activity Management: Status of a Task'
  InsurClmActivityStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Handler'
  @Common.Heading : 'Proposed Handler'
  @Common.QuickInfo : 'Proposed Handler for This Manual Task'
  InsurClmProposedHandler : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Handler Cat.'
  @Common.QuickInfo : 'Manual Task: Claim Handler Category'
  InsurClmProposeHandlerCategory : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Activity Used'
  @Common.QuickInfo : 'Activity Used to Process the Task'
  InsurClmSubActivityUsed : String(6) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Subobject Cat.'
  @Common.QuickInfo : 'Claim Subobject Category'
  InsurClmSubobjectCategory : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Navigation Target'
  @Common.Heading : 'Navigatn Target'
  InsurClmNavigate : String(4) not null;
  @Common.Label : 'Text'
  @Common.QuickInfo : 'Task Name'
  InsurClmTaskName : String(128) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Subobject'
  @Common.QuickInfo : 'ID of Claim Subobject for Navigation'
  InsurClmSubobject : String(16) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Assignment Status'
  @Common.Heading : 'Assgmt Status'
  @Common.QuickInfo : 'Assignment Status of a Claim Subobject'
  InsurClmActyAssgmtSts : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Clm Hdlr Cat.'
  @Common.QuickInfo : 'Object Category of Subclaim Handler'
  InsurClmActyHdlrType : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Clm Hdlr for Task'
  @Common.Heading : 'Claim Handler for Task'
  @Common.QuickInfo : 'Claim Handler for Task'
  InsurClmActyHdlr : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Clm Hdlr Cat.'
  @Common.QuickInfo : 'Object Category of Subclaim Handler Group'
  InsurClmActyHdlrTypeGrp : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'CH Gp Task'
  @Common.Heading : 'Claim Handler Group for Task'
  @Common.QuickInfo : 'Claim Handler Group for Task'
  InsurClmActyHdlrGrp : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Time Stamp'
  @Common.QuickInfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  InsurClmActyResubmsnDteTme : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Task Type'
  @Common.QuickInfo : 'Activity Management: Task Type'
  InsurClmActyTaskType : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Expressn Resp.'
  @Common.Heading : 'Expression Responsible'
  @Common.QuickInfo : 'Expression Responsible for Anomaly (Control Predicate)'
  InsurClmActyExprOrign : String(20) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmActy1stSubmsnDuDteTme : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmActyLtstStrtDteTme : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmActyLtstEndDteTme : DateTime;
  @Common.IsDigitSequence : true
  @Common.Label : 'Priority'
  @Common.Heading : 'Priority of Task'
  @Common.QuickInfo : 'Activity Management: Priority of Task - Workflow'
  InsurClmActyWrkflwPrio : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Authorization Group'
  @Common.Heading : 'Author.Gp'
  InsurClmActyAuthznGrp : String(4) not null;
  @Common.Label : 'System Activity'
  @Common.Heading : 'Activity Is System Activity'
  @Common.QuickInfo : 'Activity Is System Activity'
  InsurClmActyIsSystActy : Boolean not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'WF Status'
  @Common.QuickInfo : 'Workflow Status'
  InsurClmWorkflowStatus : String(1) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Work Item ID'
  @Common.QuickInfo : 'Work item ID'
  InsurClmActyIdOfWrkItm : String(12) not null;
  @Common.Label : 'Purely Manual Task'
  InsurClmActyIsMnlTsk : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Bundle Type'
  InsurClaimBundleType : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Task/Log'
  @Common.QuickInfo : 'Claim Bundle: Task/Log Entry'
  InsurClaimBundleTaskLogEntry : String(6) not null;
  @Common.Label : 'Manual Character'
  @Common.Heading : 'Manual Character of Task'
  @Common.QuickInfo : 'Task Has Manual Character'
  InsurClaimIsManualCharacter : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Object Category'
  @Common.QuickInfo : 'Claims Management Object Category'
  InsurClmObjectCategory : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Number'
  @Common.QuickInfo : 'Claims Management Object'
  InsuranceClaimObject : String(17) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Ref.Task Subclaim'
  @Common.Heading : 'Subclaim of Reference Task'
  @Common.QuickInfo : 'Subclaim of Reference Task'
  InsurClmSubclaimReferenceTask : String(3) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Reference Task No.'
  @Common.Heading : 'Number of Reference Task'
  @Common.QuickInfo : 'Sequence Number of Reference Task'
  InsurClmRefNmbrActySqncNmbr : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Ref. Task Category'
  @Common.Heading : 'Category of Reference Task'
  @Common.QuickInfo : 'Category of Reference Task'
  InsuranceClaimReferenceTaskCat : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Higher-Level Claim Subobject - Subclaim'
  InsuranceClaimParentSubclaim : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Higher-Level Claim Subobject - Category'
  @Common.Heading : 'Higher-Level Claim Subobject - Subobject Category'
  @Common.QuickInfo : 'Higher-Level Claim Subobject - Subobject Category'
  InsurClmParSubobjCat : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Higher-Level Claim Subobject - Object'
  @Common.Heading : 'Higher-Level Claim Subobject - Subobject'
  @Common.QuickInfo : 'Higher-Level Claim Subobject - Subobject'
  InsuranceClaimParentSubobject : String(16) not null;
  @Common.Label : 'Language Text'
  @Common.QuickInfo : 'Language Key of Field for Name of Task'
  InsuranceClaimTextLanguage : String(2) not null;
  @Common.Label : 'Boole'
  @Common.QuickInfo : 'Space = false, ''X'' = true'
  InsuranceClaimIsForwarded : Boolean not null;
  @Common.Label : 'Data Aging'
  @Common.Heading : 'Data Aging Filter'
  @Common.QuickInfo : 'Data Filter Value for Data Aging'
  InsuranceDataAgingObjectDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Change category'
  @Common.Heading : 'CCat'
  InsuranceClaimChangeCategory : String(1) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Correspondence'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsCorrespnc {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Active/Suspense'
  @Common.QuickInfo : 'Table entry is active (A) or in suspense (S)'
  key InsurClmActive : String(1) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subclaim Number'
  @Common.Heading : 'SubC'
  @Common.QuickInfo : 'Subclaim'
  key InsurClmSubclm : String(3) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Number'
  @Common.QuickInfo : 'Number of Document in Claim'
  key InsuranceClaimDocumentNumber : String(3) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  ChangedOnDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  LastChangedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Document'
  InsuranceClaimDocumentCode : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Corresp. Recipient'
  @Common.Heading : 'Receiver'
  @Common.QuickInfo : 'Correspondence Recipient'
  InsurClmCorrespncRcpnt : String(10) not null;
  @Common.Label : 'Manually'
  @Common.QuickInfo : 'Flag: Document entered manually'
  InsurClmIsDocEnteredMnlly : Boolean not null;
  @Common.Label : 'Copy of document'
  @Common.QuickInfo : 'Flag: Copy of Document will be sent to Agent'
  InsurClmIsDocCpySentToAgt : Boolean not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmDocRelDteTme : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Released by'
  @Common.QuickInfo : 'User who released document for despatch'
  InsurClmDocReleasedBy : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Transmission method'
  @Common.Heading : 'Trans.Meth'
  @Common.QuickInfo : 'Document Transmission Method'
  InsurClmDocSendType : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Correspondence Key'
  @Common.Heading : 'Key'
  CorrespondenceKey : String(36) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Subobject Cat.'
  @Common.QuickInfo : 'Claim Subobject Category'
  InsurClmSubobjectCategory : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Subobject'
  InsurClmSubobject : String(16) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Application form'
  InsurClmDocApplFormKey : String(30) not null;
  @Common.Label : 'Already Printed'
  @Common.QuickInfo : 'Flag for Print Already Made'
  InsurClmDocIsPrinted : Boolean not null;
  @Common.Label : 'Language'
  @Common.QuickInfo : 'Language indicator in the application form'
  InsurClmDocLanguage : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Activity Category'
  @Common.Heading : 'Act'
  InsuranceClaimActivityCategory : String(2) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsuranceClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Damaged Object'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _InsurClmSrvcsDmgdVeh,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsInjured,
    InsertRestrictions: { Insertable: true }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: InsurClmProbableLossAmount,
    AllowedExpressions: 'MultiValue'
  }
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsDamagedObject {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Damaged Object'
  key InsurClmDamagedObject : String(4) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  ChangedOnDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  LastChangedByUser : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Created On/At'
  @Common.QuickInfo : 'Created: Date + Time'
  CreationDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Created By'
  CreatedByUser : String(12) not null;
  @Common.SAPObjectNodeTypeReference : 'InsuranceClaimDamageCategory'
  @Common.IsUpperCase : true
  @Common.Label : 'Damage category'
  @Common.QuickInfo : 'Damage Category'
  InsurClmDamageCategory : String(2) not null;
  @Common.SAPObjectNodeTypeReference : 'InsuranceClaimDamageSeverity'
  @Common.IsUpperCase : true
  @Common.Label : 'Damage Severity'
  InsurClmDamageSeverity : String(3) not null;
  @Measures.ISOCurrency : InsurClmProbableLossAmountCrcy
  @Common.Label : 'Probable Loss Amount'
  @Common.QuickInfo : 'Probable Amount of Loss'
  InsurClmProbableLossAmount : Decimal(precision: 15) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Insured Object No.'
  @Common.Heading : 'Number of Insured Object'
  @Common.QuickInfo : 'Insured Object Number'
  InsurClmInsuredObject : String(4) not null;
  @Common.SAPObjectNodeTypeReference : 'InsurClmInsuredObjectCategory'
  @Common.IsUpperCase : true
  @Common.Label : 'Category'
  @Common.QuickInfo : 'Category of Insured Object'
  InsurClmInsuredObjectCategory : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Object Type'
  @Common.QuickInfo : 'Type of Damaged or Insured Object'
  InsurClmInsuredObjectType : String(3) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.QuickInfo : 'Currency of Probable Amount of Loss'
  InsurClmProbableLossAmountCrcy : String(3) not null;
  @Common.Label : 'Liability'
  @Common.QuickInfo : 'Flag: Liability?'
  InsurClmDmgdObjHasLblty : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Insurable Obj.'
  @Common.QuickInfo : 'Insurable Object'
  InsuranceClaimInsurableObject : String(9) not null;
  @Common.Label : 'Damage Description'
  @Common.QuickInfo : 'Description of Damage'
  InsurClmDamageDescription : String(60) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  @Common.Composition : true
  _InsurClmSrvcsDmgdVeh : Composition of many insurance_claim.InsurClmSrvcsDmgdVehicle {  };
  @Common.Composition : true
  _InsurClmSrvcsDmgdVehSalvg : Composition of many insurance_claim.InsurClmSrvcsDmgdVehSalvg {  };
  @Common.Composition : true
  _InsurClmSrvcsInjured : Composition of many insurance_claim.InsurClmSrvcsInjuredPerson {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services For Damaged Vehicle'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: InsurClmVehicleMileage,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehicleValueAmount,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehicleEngineCapacity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehFrontTreadQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehRearTreadQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehQtyInMlge,
    AllowedExpressions: 'MultiValue'
  }
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsDmgdVehicle {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Damaged vehicle'
  key InsurClmDamagedObject : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Location where damaged object can be seen'
  InsurClmDamagedObjectLocation : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Make'
  @Common.Heading : 'Make of Insured Object'
  @Common.QuickInfo : 'Make of Insured Object'
  InsurClmInsuredObjectMake : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Model'
  @Common.Heading : 'Insured Object Model'
  @Common.QuickInfo : 'Insured Object Model'
  InsurClmInsuredObjectModel : String(4) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Constructn Year'
  @Common.Heading : 'Construction Year of Ins. Vehicle'
  @Common.QuickInfo : 'Construction Year of Insured Vehicle'
  InsurClmConstructionYear : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Vehicle ID No.'
  @Common.QuickInfo : 'Vehicle Identification Number'
  InsurClmVehicleIdentification : String(17) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Plate Number'
  @Common.QuickInfo : 'License Plate Number'
  InsurClmVehiclePlateNumber : String(12) not null;
  @Measures.Unit : InsurClmVehicleMileageUnit
  @Common.Label : 'Mileage'
  InsurClmVehicleMileage : Decimal(precision: 6) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit'
  @Common.QuickInfo : 'Unit for mileage'
  InsurClmVehicleMileageUnit : String(3) not null;
  @Measures.ISOCurrency : InsurClmVehObjectValCurrency
  @Common.Label : 'Value at Conclusion'
  @Common.QuickInfo : 'Value of Object at Contract Conclusion'
  InsurClmVehicleValueAmount : Decimal(precision: 15) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.QuickInfo : 'Currency of Value at Conclusion of Policy'
  InsurClmVehObjectValCurrency : String(3) not null;
  InsurClmInspectionDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Category'
  @Common.Heading : 'Category of Insured Object'
  @Common.QuickInfo : 'Category of Insured Object'
  InsurClmInsuredVehicleCategory : String(4) not null;
  @Measures.Unit : InsurClmVehicleEngineCapUnit
  @Common.Label : 'Engine Capacity'
  @Common.QuickInfo : 'Engine Capacity of Insured Vehicle'
  InsurClmVehicleEngineCapacity : Decimal(precision: 5) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit of measure'
  @Common.QuickInfo : 'Unit for Cubic Capacity'
  InsurClmVehicleEngineCapUnit : String(3) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Month From'
  @Common.QuickInfo : 'Month From Which Seasonal License Plate Issued'
  InsurClmSeasnlLicPlateValdFrm : String(2) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Month to'
  @Common.QuickInfo : 'Month up to Which Seasonal License Plate Issued'
  InsurClmSeasnlLicPlateValidTo : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Gear Type'
  InsurClmVehicleGearType : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  InsurClmVehiclePlateCountry : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  InsurClmVehiclePlateRegion : String(3) not null;
  @Measures.Unit : InsurClmVehTreadUnit
  @Common.Label : 'Front tread'
  @Common.QuickInfo : 'Tread of Front Tires'
  InsurClmVehFrontTreadQuantity : Decimal(precision: 2) not null;
  @Measures.Unit : InsurClmVehTreadUnit
  @Common.Label : 'Rear tread'
  @Common.QuickInfo : 'Tread of Rear Tires'
  InsurClmVehRearTreadQuantity : Decimal(precision: 2) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit'
  @Common.QuickInfo : 'Tread Unit'
  InsurClmVehTreadUnit : String(3) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmChangeDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  InsuranceClaimChangedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  InsurClaimRegistrationDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Color'
  InsuranceClaimVehicleColor : String(10) not null;
  @Common.Label : 'Liability'
  @Common.QuickInfo : 'Flag: Liability?'
  InsurClmDmgdObjHasLblty : Boolean not null;
  @Common.Label : 'Note on Inspection'
  InsurClmDmgdVehInspNoteText : String(15) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Purpose of trip'
  @Common.QuickInfo : 'Purpose of Trip'
  InsurClmVehTripPrps : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Leasing'
  @Common.QuickInfo : 'Flag: Paid/Leased/Security Certificate'
  InsuranceClaimVehicleLeased : String(1) not null;
  @Common.Label : 'Drivers License'
  @Common.QuickInfo : 'Flag: Driving with permission?'
  InsurClmVehIsDrivingPmtd : Boolean not null;
  @Common.Label : 'Damaged'
  @Common.QuickInfo : 'Flag: Object Damaged?'
  InsurClmVehIsDamaged : Boolean not null;
  @Common.Label : 'Vehicle Cited'
  @Common.QuickInfo : 'Flag: Vehicle Cited?'
  InsurClmVehIsCited : Boolean not null;
  @Common.Label : 'Driver cited'
  @Common.QuickInfo : 'Flag: Driver Cited?'
  InsurClmVehDrvrIsCited : Boolean not null;
  @Common.Label : 'Pref. Vendor'
  @Common.QuickInfo : 'Flag: Willing to Use Preferred Vendor?'
  InsurClmVehIsPrfrdSuplr : Boolean not null;
  @Common.Label : 'Vehicle Parked'
  @Common.QuickInfo : 'Vehicle Was Parked When Loss Occurred'
  InsurClmVehIsParked : Boolean not null;
  @Common.Label : 'Preexistng Dam.'
  @Common.QuickInfo : 'Flag: Preexisting Damage?'
  InsurClmVehHasPrevDamage : Boolean not null;
  @Common.Label : 'Not Roadworthy'
  @Common.QuickInfo : 'Damaged Vehicle Is Not Roadworthy'
  InsurClmVehicleIsNotRoadworthy : Boolean not null;
  @Measures.Unit : InsurClmVehicleMileageUnit
  @Common.Label : 'Mileage'
  InsurClmVehQtyInMlge : Decimal(precision: 6) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Rel. Owner/PH'
  @Common.QuickInfo : 'Relationship between Owner and PH'
  InsurClmRelshpOwnrAndPlcyHldr : String(1) not null;
  @Common.Label : 'Total Loss'
  @Common.QuickInfo : 'Flag: Total Loss'
  InsurClmVehicleIsTotalLoss : Boolean not null;
  @Common.Label : 'Stolen'
  @Common.QuickInfo : 'Flag: Stolen?'
  InsurClmDmgdItmIsStolen : Boolean not null;
  @Common.Label : 'Recovered'
  @Common.QuickInfo : 'Flag: Stolen Object Recovered?'
  InsurClmDmgdItmIsRecovered : Boolean not null;
  InsurClaimVehRecoveryDate : Date;
  InsurClmVehLastOwnrChgDte : Date;
  @Common.Label : 'Generelle Inspektion'
  InsClmVehNextMandInspInYrMnth : String(7) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Postl Code'
  @Common.QuickInfo : 'City postal code'
  PostalCode : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsuranceClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  _InsurClmDamagedObj : Association to one insurance_claim.InsurClmSrvcsDamagedObject {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Srvcs Damaged Vehicle Salvage'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: InsurClmVehicleMileage,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehicleValueAmount,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehicleEngineCapacity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehFrontTreadQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehRearTreadQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehQtyInMlge,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmSalvgValAmt,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmAvgSalvgPotntlAmt,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmVehDailySalvgChrgsAmt,
    AllowedExpressions: 'MultiValue'
  }
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsDmgdVehSalvg {
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Computed : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Damaged vehicle'
  key InsurClmDamagedObject : String(4) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Location where damaged object can be seen'
  key InsurClmDamagedObjectLocation : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Make'
  @Common.Heading : 'Make of Insured Object'
  @Common.QuickInfo : 'Make of Insured Object'
  InsurClmInsuredObjectMake : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Model'
  @Common.Heading : 'Insured Object Model'
  @Common.QuickInfo : 'Insured Object Model'
  InsurClmInsuredObjectModel : String(4) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Constructn Year'
  @Common.Heading : 'Construction Year of Ins. Vehicle'
  @Common.QuickInfo : 'Construction Year of Insured Vehicle'
  InsurClmConstructionYear : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Vehicle ID No.'
  @Common.QuickInfo : 'Vehicle Identification Number'
  InsurClmVehicleIdentification : String(17) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Plate Number'
  @Common.QuickInfo : 'License Plate Number'
  InsurClmVehiclePlateNumber : String(12) not null;
  @Measures.Unit : InsurClmVehicleMileageUnit
  @Common.Label : 'Mileage'
  InsurClmVehicleMileage : Decimal(precision: 6) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit'
  @Common.QuickInfo : 'Unit for mileage'
  InsurClmVehicleMileageUnit : String(3) not null;
  @Measures.ISOCurrency : InsurClmVehObjectValCurrency
  @Common.Label : 'Value at Conclusion'
  @Common.QuickInfo : 'Value of Object at Contract Conclusion'
  InsurClmVehicleValueAmount : Decimal(precision: 15) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.QuickInfo : 'Currency of Value at Conclusion of Policy'
  InsurClmVehObjectValCurrency : String(3) not null;
  InsurClmInspectionDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Category'
  @Common.Heading : 'Category of Insured Object'
  @Common.QuickInfo : 'Category of Insured Object'
  InsurClmInsuredVehicleCategory : String(4) not null;
  @Measures.Unit : InsurClmVehicleEngineCapUnit
  @Common.Label : 'Engine Capacity'
  @Common.QuickInfo : 'Engine Capacity of Insured Vehicle'
  InsurClmVehicleEngineCapacity : Decimal(precision: 5) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit of measure'
  @Common.QuickInfo : 'Unit for Cubic Capacity'
  InsurClmVehicleEngineCapUnit : String(3) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Month From'
  @Common.QuickInfo : 'Month From Which Seasonal License Plate Issued'
  InsurClmSeasnlLicPlateValdFrm : String(2) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Month to'
  @Common.QuickInfo : 'Month up to Which Seasonal License Plate Issued'
  InsurClmSeasnlLicPlateValidTo : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  InsurClmVehiclePlateRegion : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Gear Type'
  InsurClmVehicleGearType : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  InsurClmVehiclePlateCountry : String(3) not null;
  @Measures.Unit : InsurClmVehTreadUnit
  @Common.Label : 'Front tread'
  @Common.QuickInfo : 'Tread of Front Tires'
  InsurClmVehFrontTreadQuantity : Decimal(precision: 2) not null;
  @Measures.Unit : InsurClmVehTreadUnit
  @Common.Label : 'Rear tread'
  @Common.QuickInfo : 'Tread of Rear Tires'
  InsurClmVehRearTreadQuantity : Decimal(precision: 2) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit'
  @Common.QuickInfo : 'Tread Unit'
  InsurClmVehTreadUnit : String(3) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmChangeDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  InsuranceClaimChangedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  InsurClaimRegistrationDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Color'
  InsuranceClaimVehicleColor : String(10) not null;
  @Common.Label : 'Liability'
  @Common.QuickInfo : 'Flag: Liability?'
  InsurClmDmgdObjHasLblty : Boolean not null;
  @Common.Label : 'Note on Inspection'
  InsurClmDmgdVehInspNoteText : String(15) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Purpose of trip'
  @Common.QuickInfo : 'Purpose of Trip'
  InsurClmVehTripPrps : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Leasing'
  @Common.QuickInfo : 'Flag: Paid/Leased/Security Certificate'
  InsuranceClaimVehicleLeased : String(1) not null;
  @Common.Label : 'Drivers License'
  @Common.QuickInfo : 'Flag: Driving with permission?'
  InsurClmVehIsDrivingPmtd : Boolean not null;
  @Common.Label : 'Damaged'
  @Common.QuickInfo : 'Flag: Object Damaged?'
  InsurClmVehIsDamaged : Boolean not null;
  @Common.Label : 'Vehicle Cited'
  @Common.QuickInfo : 'Flag: Vehicle Cited?'
  InsurClmVehIsCited : Boolean not null;
  @Common.Label : 'Driver cited'
  @Common.QuickInfo : 'Flag: Driver Cited?'
  InsurClmVehDrvrIsCited : Boolean not null;
  @Common.Label : 'Pref. Vendor'
  @Common.QuickInfo : 'Flag: Willing to Use Preferred Vendor?'
  InsurClmVehIsPrfrdSuplr : Boolean not null;
  @Common.Label : 'Vehicle Parked'
  @Common.QuickInfo : 'Vehicle Was Parked When Loss Occurred'
  InsurClmVehIsParked : Boolean not null;
  @Common.Label : 'Preexistng Dam.'
  @Common.QuickInfo : 'Flag: Preexisting Damage?'
  InsurClmVehHasPrevDamage : Boolean not null;
  @Common.Label : 'Not Roadworthy'
  @Common.QuickInfo : 'Damaged Vehicle Is Not Roadworthy'
  InsurClmVehicleIsNotRoadworthy : Boolean not null;
  @Measures.Unit : InsurClmVehicleMileageUnit
  @Common.Label : 'Mileage'
  InsurClmVehQtyInMlge : Decimal(precision: 6) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Rel. Owner/PH'
  @Common.QuickInfo : 'Relationship between Owner and PH'
  InsurClmRelshpOwnrAndPlcyHldr : String(1) not null;
  @Common.Label : 'Total Loss'
  @Common.QuickInfo : 'Flag: Total Loss'
  InsurClmVehicleIsTotalLoss : Boolean not null;
  @Common.Label : 'Stolen'
  @Common.QuickInfo : 'Flag: Stolen?'
  InsurClmDmgdItmIsStolen : Boolean not null;
  @Common.Label : 'Recovered'
  @Common.QuickInfo : 'Flag: Stolen Object Recovered?'
  InsurClmDmgdItmIsRecovered : Boolean not null;
  InsurClaimVehRecoveryDate : Date;
  InsurClmVehLastOwnrChgDte : Date;
  @Common.Label : 'Generelle Inspektion'
  InsClmVehNextMandInspInYrMnth : String(7) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.QuickInfo : 'Currency of Actual Cash Value'
  InsurClmSalvgActlCshCrcy : String(3) not null;
  @Measures.ISOCurrency : InsurClmSalvgActlCshCrcy
  @Common.Label : 'Salvage Value'
  @Common.QuickInfo : 'Salvage Value as Amount of Money'
  InsurClmSalvgValAmt : Decimal(precision: 15) not null;
  @Measures.ISOCurrency : InsurClmSalvgActlCshCrcy
  @Common.Label : 'Avge Potential'
  @Common.QuickInfo : 'Salvage: Average Salvage Potential'
  InsurClmAvgSalvgPotntlAmt : Decimal(precision: 15) not null;
  @Common.Label : 'Evaluation Date'
  @Common.QuickInfo : 'Evaluation Date for Salvage'
  InsurClmSalvgEvalDte : Date;
  @Common.Label : 'DmgdObj DetmDte'
  @Common.QuickInfo : 'Date: Damaged Objected Determined as Salvage'
  InsurClmDmgdObjSalvgDetmDte : Date;
  @Common.Label : 'Date at Repair Shop'
  @Common.QuickInfo : 'Salvage: Arrival Date at Repair Shop'
  InsurClmVehSalvgArrivalDate : Date;
  @Common.Label : 'Dte Rptd Police'
  @Common.QuickInfo : 'Date Reported to Police'
  InsurClmVehSalvgRptdPoliceDte : Date;
  @Common.Label : 'Date Sold'
  @Common.QuickInfo : 'Date Salvage Item Sold'
  InsurClmSalvgSoldDte : Date;
  @Common.Label : 'Owner Retained'
  @Common.QuickInfo : 'Flag: Retained by Owner?'
  InsClmDmgdItmIsRetainedByOwnr : Boolean not null;
  @Common.Label : 'History Rate'
  @Common.QuickInfo : 'History Rate in Percent'
  InsurClmHistRatePct : Decimal(5, 2) not null;
  @Measures.ISOCurrency : InsurClmSalvgActlCshCrcy
  @Common.Label : 'StandgChrgeSalv'
  @Common.QuickInfo : 'Salvage: Daily Standing Charges at Salvage Yard'
  InsurClmVehDailySalvgChrgsAmt : Decimal(precision: 15) not null;
  @Common.Label : 'Date Assigned'
  @Common.QuickInfo : 'Salvage: Date Assigned to Salvage Company'
  InsurClmSalvgAssgDte : Date;
  @Common.Label : 'Arrival Date'
  @Common.Heading : 'Arrival'
  @Common.QuickInfo : 'Salvage: Arrival Date at Salvage Yard'
  InsurClmSalvgArrivalDate : Date;
  @Common.Label : 'Settlement Date'
  @Common.QuickInfo : 'Salvage: Settlement Date'
  InsurClmSalvgSettlmtDte : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Stock Number'
  @Common.QuickInfo : 'Salvage: Stock Number'
  InsurClmSalvgStockNumber : String(8) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Salvor Location'
  @Common.QuickInfo : 'Salvage: Salvage Yard Location'
  InsurClmSalvgYardLocation : String(8) not null;
  @Common.Label : 'Title to Salvor'
  @Common.QuickInfo : 'Date on Which Title Was Transferred to Salvor'
  InsurClmVehSalvgTtlToSalvorDte : Date;
  @Common.Label : 'Title w.Salvor'
  @Common.QuickInfo : 'Date on Which Title Was Received by Salvor'
  InsClmVehSalvgTtlRcvdSalvorDte : Date;
  @Common.Label : 'Title Sent to State'
  @Common.QuickInfo : 'Date: Title Sent To State'
  InsurClmVehSalvgTtlToStateDte : Date;
  @Common.Label : 'Title Recvd'
  @Common.QuickInfo : 'Date on Which Title Received by State'
  InsClmVehSalvgTtlRcvdStateDte : Date;
  @Common.Label : 'Date Title Received'
  @Common.QuickInfo : 'Date on Which Insurer Received Title'
  InsurClmSalvgTtlReceiveDte : Date;
  @Common.Label : 'Certificate Dte'
  @Common.QuickInfo : 'Salvage: Certificate Date'
  InsurClmVehSalvgCertDte : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Reference no.'
  @Common.Heading : 'External Reference No.'
  @Common.QuickInfo : 'External Reference Number'
  InsurClmItemRefNumber : String(15) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Purchasing Document'
  @Common.QuickInfo : 'Reference to Purchasing Document'
  InsurClmPurgDocReference : String(10) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Item Number'
  @Common.QuickInfo : 'Reference to Item Number in Purchasing Document'
  InsurClmPurgDocItemReference : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Ref. Location'
  @Common.QuickInfo : 'Reference Location for External Services'
  InsurClmRefLocCat : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Procurement Trans.'
  @Common.Heading : 'Transactn Type in Procuremnt Proc.'
  @Common.QuickInfo : 'Transaction Type in Procurement Process'
  InsurClmTransactionType : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Location Selection'
  @Common.QuickInfo : 'Location of Damaged Object'
  InsurClmInspLoc : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Participant BP No.'
  @Common.Heading : 'Partic.No.'
  @Common.QuickInfo : 'Claim Participant'
  BusinessPartner : String(10) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Postl Code'
  @Common.QuickInfo : 'City postal code'
  PostalCode : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsuranceClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  _InsurClmDamagedObj : Association to one insurance_claim.InsurClmSrvcsDamagedObject {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services For Injured Person'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsInjuredPerson {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Subobject'
  key InsurClmSubobject : String(16) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subobject Cat.'
  @Common.QuickInfo : 'Claim Subobject Category'
  key InsurClmSubobjectCategory : String(2) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Participant BP No.'
  @Common.Heading : 'Partic.No.'
  @Common.QuickInfo : 'Claim Participant'
  key BusinessPartner : String(10) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'ParticipantRole'
  @Common.Heading : 'Role'
  @Common.QuickInfo : 'Participant Role Key'
  key InsurClmParticipantRole : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  LastChangedByUser : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Changed On/At'
  @Common.QuickInfo : 'Changed: Date + Time'
  ChangedOnDateTime : DateTime;
  BusinessPartnerName : String(81) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Title Key'
  @Common.Heading : 'Key'
  @Common.QuickInfo : 'Form-of-Address Key'
  FormOfAddress : String(4) not null;
  @Common.Label : 'Last Name'
  @Common.QuickInfo : 'Last Name of Business Partner (Person)'
  LastName : String(40) not null;
  @Common.Label : 'First Name'
  @Common.QuickInfo : 'First Name of Business Partner (Person)'
  FirstName : String(40) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Postl Code'
  @Common.QuickInfo : 'City postal code'
  PostalCode : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  PhoneNumber : String(30) not null;
  EmailAddress : String(241) not null;
  @Common.Label : 'Date of Birth'
  @Common.Heading : 'Birth Date'
  @Common.QuickInfo : 'Date of Birth of Business Partner'
  BirthDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Sex'
  @Common.QuickInfo : 'Gender of Business Partner (Person)'
  GenderCodeName : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Authorization Group'
  @Common.Heading : 'AGrp'
  AuthorizationGroup : String(4) not null;
  @Common.Label : 'Fatality'
  @Common.QuickInfo : 'Fatal Injury'
  InsurClmFatalInjury : Boolean not null;
  @Common.Label : 'Impairment %'
  @Common.QuickInfo : 'Percentage of Impairment'
  InsurClmImpairmentPercent : Decimal(5, 2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Relationship to PH'
  @Common.QuickInfo : 'Type of Relationship to Policyholder'
  InsurClmRelationship : String(1) not null;
  @Common.Label : 'Intra-Company'
  InsurClmIntraCompany : Boolean not null;
  @Common.Label : 'Not Insured'
  @Common.QuickInfo : 'Flag: Not Insured'
  InsurClmNoInsurance : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Participtn Type'
  @Common.QuickInfo : 'Participation Type of Claimant'
  InsurClmParticipantType : String(2) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsuranceClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  _InsurClmDamagedObj : Association to one insurance_claim.InsurClmSrvcsDamagedObject {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Claim'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _InsClmSrvcsLossLocSFC,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmCorrespnc,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmDmgdObject,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmPrtcpntSFC,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsDmgdInjured,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsDmgdVeh,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsDmgdVehSalvg,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsItem,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsOrignOfLsSFC,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsParticipant,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsPayment,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsSubclmAttch,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsSubclmItem,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSrvcsTask,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSubclm,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSubrogtn,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _InsurClmSubrogtnItem,
    InsertRestrictions: { Insertable: true }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.Filterable : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: InsurClmDescriptionOfLossLoc,
    AllowedExpressions: 'SearchExpression'
  },
  {
    Property: InsurClmIncidentDetailsText,
    AllowedExpressions: 'SearchExpression'
  }
]
@Capabilities.SortRestrictions.NonSortableProperties : [ 'InsurClmDescriptionOfLossLoc', 'InsurClmIncidentDetailsText' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsInsurClaim {
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Contract'
  @Common.QuickInfo : 'Contract Number'
  InsuranceContract : String(17) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Policy Product'
  InsurClmPolicyProduct : String(6) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  ChangedOnDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  LastChangedByUser : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Created On/At'
  @Common.QuickInfo : 'Created: Date + Time'
  CreationDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Created By'
  CreatedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Last Changed by'
  @Common.QuickInfo : 'Whole Claim Last Changed By'
  InsurClmWholeClmChgdBy : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmWholeClmChgDteTme : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'External No.Category'
  @Common.QuickInfo : 'External Number Category'
  InsurClmExternalNumberCategory : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Status of Claim'
  InsurClmLifeCycSts : String(2) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmStsChgdOnDteTime : DateTime;
  @Common.Label : 'Claim Handling Actve'
  @Common.Heading : 'Claim Handling Process Is Active'
  @Common.QuickInfo : '"Claim Handling" Process Active'
  InsuranceClaimIsStatusHandler : Boolean not null;
  @Common.Label : 'No Claim Made'
  InsuranceClaimIsNoClaimMade : Boolean not null;
  @Common.Label : 'Closed'
  @Common.QuickInfo : '"Close (Sub)Claim" Process Executed'
  InsuranceClaimIsStatusClosed : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status Reason'
  @Common.QuickInfo : 'Reason for Changing the Status'
  InsurClmStatReason : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Type'
  @Common.Heading : 'Intl ClmType'
  @Common.QuickInfo : 'Internal Claim Type'
  InsurClmType : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'AuthGroup (VIP)'
  @Common.QuickInfo : 'Authorization Group for Claims (VIP)'
  InsurClmAuthznGrp : String(4) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Generation'
  @Common.QuickInfo : 'Policy Product Generation'
  InsurClmPolicyProdGeneration : String(5) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Version'
  @Common.Heading : 'Policy Prod. Version'
  @Common.QuickInfo : 'Policy Product Version'
  InsurClmPolicyProductVersion : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Incident Type'
  @Common.QuickInfo : 'Incident Type of a Claim'
  InsurClmIncdntType : String(4) not null;
  @Common.Label : 'Date of Loss/Claim'
  InsurClmDateOfLoss : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Cause'
  @Common.QuickInfo : 'Cause of Loss/Claim'
  InsurClmCauseOfLoss : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Loss Location'
  @Common.Heading : 'Loss Location (Address Number)'
  InsurClmLossLocAddressID : String(10) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Generation'
  @Common.QuickInfo : 'Generation of Internal Claim Type'
  InsurClmTypeGeneration : String(5) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Claim Type Version'
  @Common.Heading : 'Claim Type Vers.'
  @Common.QuickInfo : 'Internal Claim Type Version'
  InsurClmTypeVers : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'CumulativeEvent'
  @Common.QuickInfo : 'Cumulative Event'
  InsuranceClaimBundleLossEvent : String(17) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Peril'
  InsuranceClaimReinsurancePeril : String(4) not null;
  @Common.Label : 'Time'
  @Common.QuickInfo : 'Time of Claim/Loss'
  InsurClmTimeOfLoss : Time not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Time Zone'
  @Common.QuickInfo : 'Time Zone of Claim/Loss Event'
  InsurClmTimeZoneOfLoss : String(6) not null;
  @Common.Label : 'Date Estimated'
  @Common.QuickInfo : 'Date Is Estimate'
  InsuranceClaimIsDateEstimate : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Reason f.Change'
  @Common.QuickInfo : 'Reason for Changing Claim Date'
  InsuranceClaimDateChangeReason : String(2) not null;
  @Common.Label : 'Reported'
  @Common.QuickInfo : 'Claim/Loss Reported to Authority'
  InsurClmIsRptdToAuth : Boolean not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Renewal'
  @Common.QuickInfo : 'Last Renewal of Contract Before Claim Date/Time'
  InsurClmContractLastRenewal : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Read Time'
  @Common.QuickInfo : 'Time for Reading Version'
  InsurClmVersionChangeTime : DateTime;
  @Common.Label : 'Link UUID'
  @Common.Heading : 'UUID of Link'
  @Common.QuickInfo : 'UUID of Entry to be Linked'
  InsurClmAssignUUID : UUID;
  @Common.IsUpperCase : true
  @Common.Label : 'Complexity'
  @Common.QuickInfo : 'Complexity of Claim/Subclaim'
  InsurClmComplexity : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'C/R Juris.'
  @Common.Heading : 'Country/Reg.'
  @Common.QuickInfo : 'Country/Region of Jurisdiction'
  InsurClmJurisdictionCountry : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Jurisd. Region'
  @Common.Heading : 'Jurisdiction Region'
  @Common.QuickInfo : 'Jurisdiction Region'
  InsurClmJurisdictionRegion : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Assignment Status'
  @Common.Heading : 'Assgmt Status'
  @Common.QuickInfo : 'Assignment Status of a Claim Subobject'
  InsurClmActyAssgmtSts : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'CH Obj.Type'
  @Common.QuickInfo : 'Object Type of Claim Handler'
  InsuranceClaimOwnerType : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Clm Hndlr ID'
  @Common.QuickInfo : 'ID of Claim Handler'
  InsuranceClaimOwner : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'CH Obj.Type'
  @Common.QuickInfo : 'Object Type of Claim Handler Group'
  InsuranceClaimOwnerTypeGroup : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'CH Group'
  @Common.QuickInfo : 'Claim Handler Group'
  InsuranceClaimOwnerGroup : String(12) not null;
  @Common.Label : 'Claim Assigned to an Aggregate'
  InsuranceClaimIsCumulative : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Fault'
  @Common.QuickInfo : 'Fault of Policyholder from Point of View of Insurer'
  InsuranceClaimViewFault : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'PH''s View of Fault'
  @Common.QuickInfo : 'Party at Fault from Point of View of Policyholder'
  InsurClmVwFaultPlcyHldr : String(1) not null;
  @Common.Label : '3rd party known'
  @Common.QuickInfo : 'Flag: Third Party Known?'
  InsurClmIsThirdPartyKnown : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Compensable'
  @Common.QuickInfo : 'Indication of Compensability'
  InsurClmCovered : String(1) not null;
  @Common.Label : 'EntryClaimB'
  @Common.QuickInfo : 'Entry in ICLCLAIMB Exists'
  InsurClmIsEntrInPaytAmtAuthzns : Boolean not null;
  @Common.Label : 'Not Notif. Mode'
  @Common.QuickInfo : 'Processing Not Possible in Notification Mode'
  InsuranceClaimIsNoNotif : Boolean not null;
  @Common.Label : 'Reserve Exists'
  @Common.QuickInfo : 'At Least One Reserve Exists in Claim'
  InsuranceClaimIsReserve : Boolean not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Renewal'
  @Common.QuickInfo : 'Last Renewal of Contract Before Claim Date/Time'
  InsurClmWrkflwExecDteTme : DateTime;
  @Common.IsDigitSequence : true
  @Common.Label : 'WF Status'
  @Common.QuickInfo : 'Workflow Status'
  InsurClmWorkflowStatus : String(1) not null;
  @Common.Label : 'Opened On'
  InsurClmOpenDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Highest ClmItNo'
  @Common.QuickInfo : 'Current Highest Claim Item Number'
  InsuranceClaimMaxItemNumber : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'SIF Status'
  @Common.QuickInfo : 'Status of Second Injury Fund'
  InsurClmSecondInjuryFundStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Match Status'
  @Common.Heading : 'Match'
  @Common.QuickInfo : 'Claim Investigation Match Status'
  InsurClmIncdntInvstgnSts : String(1) not null;
  @Common.Label : 'Contract Validity'
  @Common.Heading : 'Contract Validity Date'
  @Common.QuickInfo : 'Contract Validity Date'
  InsuranceClaimEffectiveDate : Date;
  @Common.Label : 'Date on Request'
  @Common.QuickInfo : 'Date on Request for Insurance Benefit'
  InsuranceClaimLossRepDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Statutory Pension'
  @Common.QuickInfo : 'Type of Statutory Pension'
  InsurClmStatutoryPensionType : String(3) not null;
  @Measures.ISOCurrency : InsurClmWithdrawCrcy
  @Common.Label : 'Withdrawal Amount'
  @Common.Heading : 'Requested Withdrawal Amount'
  @Common.QuickInfo : 'Requested Total Withdrawal Amount'
  InsurClmWithdrawAmt : Decimal(precision: 15) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.Heading : 'Currency of Withdrawal Amount'
  @Common.QuickInfo : 'Currency of Withdrawal Amount'
  InsurClmWithdrawCrcy : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Withdrawal Sequence'
  InsurClmWthdrwlSqnc : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Alt.Benefit Values'
  @Common.Heading : 'Display Alternative Benefit Values'
  @Common.QuickInfo : 'Display Alternative Benefit Values'
  InsuranceClaimAlternateBenefit : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Special Risk Notif.'
  @Common.Heading : 'Make Special Risk Notification'
  @Common.QuickInfo : 'Make Special Risk Notification'
  InsuranceClaimSpecialRiskNotif : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Spec.Risk Notif.Rsn'
  @Common.Heading : 'Special Risk Notification Rsn'
  @Common.QuickInfo : 'Reason for Special Risk Notification'
  InsuranceClaimNotifReason : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Autom. Resubmission'
  @Common.Heading : 'Automatic Resubmission'
  @Common.QuickInfo : 'Automatic Resubmission'
  InsuranceClaimAutoResubmission : String(1) not null;
  @Common.Label : 'Resubmission Date'
  @Common.Heading : 'Date of Automatic Resubmission'
  @Common.QuickInfo : 'Date of Automatic Resubmission'
  InsuranceClaimFollowUpDate : Date;
  @Common.Label : 'Processing On'
  InsuranceClaimProcessingDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Object number'
  InsuranceClaimStatusObjectNmbr : String(22) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Dunning Status'
  InsuranceClaimDunningStatus : String(2) not null;
  @Common.Label : 'Premium Paid Up To'
  InsuranceClaimClearDate : Date;
  @Measures.ISOCurrency : InsurClmPremiumBalanceCurrency
  @Common.Label : 'Premium Balance'
  InsurClmPremiumBalanceAmount : Decimal(precision: 15) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.Heading : 'Currency of Premium Payment'
  @Common.QuickInfo : 'Currency of Premium Payment'
  InsurClmPremiumBalanceCurrency : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Withdrawal Type'
  InsuranceClaimWithdrawalType : String(3) not null;
  @Common.Label : 'Reactivation Date'
  @Common.Heading : 'Date of Disabil.Reactivation'
  @Common.QuickInfo : 'Date of Occupational Disability/Perm.Incap.to Wk Reactivatn'
  InsuranceClaimReactDate : Date;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Renewal'
  @Common.QuickInfo : 'Last Renewal of Contract Before Claim Date/Time'
  InsurClmSpecialRiskMsgDateTime : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Renewal'
  @Common.QuickInfo : 'Last Renewal of Contract Before Claim Date/Time'
  InsurClmIncrrtBnftCalcDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Policy System Key'
  @Common.Heading : 'Technical Key of Policy System'
  @Common.QuickInfo : 'Technical Key of Policy System'
  InsuranceClaimPolicySystem : String(8) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Benefit Type Tree'
  InsurClmBenefitTypeTree : String(8) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Generation'
  @Common.QuickInfo : 'Generation of Benefit Type Tree'
  InsurClmBnftTypeTreeGeneration : String(5) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Version'
  @Common.QuickInfo : 'Version of Benefit Type Tree'
  InsurClmBnftTypeTreeVersion : String(5) not null;
  @Common.Label : 'Without Product'
  @Common.Heading : 'W/o Product Customizing'
  @Common.QuickInfo : 'Use of Scenario Without Product Customizing'
  InsurClmIsWithoutProduct : Boolean not null;
  @Common.Label : 'Dummy Claim'
  @Common.QuickInfo : 'Claim Is Dummy Claim'
  InsurClmIsDummyClaim : Boolean not null;
  @Common.Label : 'Repd to Insurer'
  @Common.QuickInfo : 'Date Claim Reported to Insurance Company'
  InsurClmReportedDate : Date;
  @Common.Label : 'Reptd to Agent'
  @Common.QuickInfo : 'Date on Which Claim Was Reported to Agent'
  InsurClmAgentReportedDate : Date;
  @Common.Label : 'Sensitive Claim'
  @Common.QuickInfo : 'Sensitive Claim?'
  InsurClmSensitiveClaim : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'External Number'
  InsuranceClaimExternalNumber : String(23) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  InsuranceClaimDraftIdentifier : String(17) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Archiving Status'
  InsurClmArchivingStatus : String(1) not null;
  @Common.Label : 'Resubmission Date'
  InsurClmArchResubmsnDte : Date;
  @Common.Label : 'Rejection Reason'
  InsurClmArchRjcnRsn : String(2) not null;
  @Common.Label : 'Street'
  InsurClmLossLocStreet : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  InsurClmLossLocHouseNumber : String(10) not null;
  @Common.Label : 'City'
  InsurClmLossLocCity : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  InsurClmLossLocRegion : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Postl Code'
  @Common.QuickInfo : 'City postal code'
  InsurClmLossLocPostalCode : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  InsurClmLossLocCountry : String(3) not null;
  @Common.Label : 'Content of note'
  InsurClmDescriptionOfLossLoc : LargeString not null;
  @Common.Label : 'Content of note'
  InsurClmIncidentDetailsText : LargeString not null;
  @Common.Label : 'TRUE'
  @Common.QuickInfo : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
  InsuranceClaimIsSFCChange : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Activity Category'
  @Common.Heading : 'Act'
  InsuranceClaimActivityCategory : String(2) not null;
  @Common.Label : 'Negotiation'
  @Common.QuickInfo : 'Used for Claim Negotiation'
  InsurClmHasGrandChild : Boolean not null;
  @Common.Label : 'Negotiation'
  @Common.QuickInfo : 'Used for Claim Negotiation'
  InsurClmHasSubclmGrandChild : Boolean not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  @Common.Composition : true
  _InsClmSrvcsLossLocSFC : Composition of many insurance_claim.InsClmSrvcsLossLocSFC {  };
  @Common.Composition : true
  _InsurClmCorrespnc : Composition of many insurance_claim.InsurClmSrvcsCorrespnc {  };
  @Common.Composition : true
  _InsurClmDmgdObject : Composition of many insurance_claim.InsurClmSrvcsDamagedObject {  };
  _InsurClmPrtcpntSFC : Association to many insurance_claim.InsClmSrvcsParticipantSFC {  };
  _InsurClmSrvcsDmgdInjured : Association to many insurance_claim.InsurClmSrvcsInjuredPerson {  };
  _InsurClmSrvcsDmgdVeh : Association to many insurance_claim.InsurClmSrvcsDmgdVehicle {  };
  _InsurClmSrvcsDmgdVehSalvg : Association to many insurance_claim.InsurClmSrvcsDmgdVehSalvg {  };
  @Common.Composition : true
  _InsurClmSrvcsItem : Composition of many insurance_claim.InsurClaimServicesClaimItem {  };
  @Common.Composition : true
  _InsurClmSrvcsOrignOfLsSFC : Composition of many insurance_claim.InsClmSrvcsOrignOfLsSFC {  };
  @Common.Composition : true
  _InsurClmSrvcsParticipant : Composition of many insurance_claim.InsurClmSrvcsParticipant {  };
  @Common.Composition : true
  _InsurClmSrvcsPayment : Composition of many insurance_claim.InsuranceClaimServicesPayment {  };
  _InsurClmSrvcsSubclmAttch : Association to many insurance_claim.InsurClmSrvcsSubclmAttch {  };
  _InsurClmSrvcsSubclmItem : Association to many insurance_claim.InsurClmSrvcsSubclmItem {  };
  @Common.Composition : true
  _InsurClmSrvcsTask : Composition of many insurance_claim.InsurClaimServicesTask {  };
  @Common.Composition : true
  _InsurClmSubclm : Composition of many insurance_claim.InsurClaimServicesSubclaim {  };
  @Common.Composition : true
  _InsurClmSubrogtn : Composition of many insurance_claim.InsurClmSrvcsSubrogation {  };
  _InsurClmSubrogtnItem : Association to many insurance_claim.InsurClmSrvcsSubrogtnItem {  };
} actions {
  action SetClaimToClosed(
    _it : $self not null
  ) returns insurance_claim.InsurClmSrvcsInsurClaim not null;
  action SetClaimToOpen(
    _it : $self not null
  ) returns insurance_claim.InsurClmSrvcsInsurClaim not null;
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Participants'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsParticipant {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Participant BP No.'
  @Common.Heading : 'Partic.No.'
  @Common.QuickInfo : 'Claim Participant'
  key BusinessPartner : String(10) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subobject Cat.'
  @Common.QuickInfo : 'Claim Subobject Category'
  key InsurClmSubobjectCategory : String(2) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Subobject'
  key InsurClmSubobject : String(16) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'ParticipantRole'
  @Common.Heading : 'Role'
  @Common.QuickInfo : 'Participant Role Key'
  key InsurClmParticipantRole : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Relationship to PH'
  @Common.QuickInfo : 'Type of Relationship to Policyholder'
  InsurClmRelationship : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Participtn Type'
  @Common.QuickInfo : 'Participation Type of Claimant'
  InsurClmParticipantType : String(2) not null;
  @Common.Label : 'Not Insured'
  @Common.QuickInfo : 'Flag: Not Insured'
  InsurClmNoInsurance : Boolean not null;
  @Common.Label : 'Intra-Company'
  InsurClmIntraCompany : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  LastChangedByUser : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Changed On/At'
  @Common.QuickInfo : 'Changed: Date + Time'
  ChangedOnDateTime : DateTime;
  BusinessPartnerName : String(81) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Title Key'
  @Common.Heading : 'Key'
  @Common.QuickInfo : 'Form-of-Address Key'
  FormOfAddress : String(4) not null;
  @Common.Label : 'Last Name'
  @Common.QuickInfo : 'Last Name of Business Partner (Person)'
  LastName : String(40) not null;
  @Common.Label : 'First Name'
  @Common.QuickInfo : 'First Name of Business Partner (Person)'
  FirstName : String(40) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Postl Code'
  @Common.QuickInfo : 'City postal code'
  PostalCode : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  PhoneNumber : String(30) not null;
  EmailAddress : String(241) not null;
  @Common.Label : 'Date of Birth'
  @Common.Heading : 'Birth Date'
  @Common.QuickInfo : 'Date of Birth of Business Partner'
  BirthDate : Date;
  @Common.IsUpperCase : true
  @Common.Label : 'Sex'
  @Common.QuickInfo : 'Gender of Business Partner (Person)'
  GenderCodeName : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Authorization Group'
  @Common.Heading : 'AGrp'
  AuthorizationGroup : String(4) not null;
  @Common.Label : 'Purpose Completed'
  @Common.Heading : 'Business Purpose Completed Flag'
  @Common.QuickInfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : Boolean not null;
  InsurClmNewPrtcpntActionIsChkd : Boolean not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'AuthGroup (VIP)'
  @Common.QuickInfo : 'Authorization Group for Claims (VIP)'
  InsurClmAuthznGrp : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Change category'
  @Common.Heading : 'CCat'
  InsuranceClaimChangeCategory : String(1) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  @Common.Composition : true
  _InsurClmPrtcpntSFC : Composition of many insurance_claim.InsClmSrvcsParticipantSFC {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Clm Srvcs Subclm Correspondence'
@Common.SemanticKey : [ 'InsurClmSubclm' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsSubclmAttch {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Active/Suspense'
  @Common.QuickInfo : 'Table entry is active (A) or in suspense (S)'
  key InsurClmActive : String(1) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subclaim Number'
  @Common.Heading : 'SubC'
  @Common.QuickInfo : 'Subclaim'
  key InsurClmSubclm : String(3) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Number'
  @Common.QuickInfo : 'Number of Document in Claim'
  key InsuranceClaimDocumentNumber : String(3) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  ChangedOnDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  LastChangedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Document'
  InsuranceClaimDocumentCode : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Corresp. Recipient'
  @Common.Heading : 'Receiver'
  @Common.QuickInfo : 'Correspondence Recipient'
  InsurClmCorrespncRcpnt : String(10) not null;
  @Common.Label : 'Manually'
  @Common.QuickInfo : 'Flag: Document entered manually'
  InsurClmIsDocEnteredMnlly : Boolean not null;
  @Common.Label : 'Copy of document'
  @Common.QuickInfo : 'Flag: Copy of Document will be sent to Agent'
  InsurClmIsDocCpySentToAgt : Boolean not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  InsurClmDocRelDteTme : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Released by'
  @Common.QuickInfo : 'User who released document for despatch'
  InsurClmDocReleasedBy : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Transmission method'
  @Common.Heading : 'Trans.Meth'
  @Common.QuickInfo : 'Document Transmission Method'
  InsurClmDocSendType : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Correspondence Key'
  @Common.Heading : 'Key'
  CorrespondenceKey : String(36) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Subobject Cat.'
  @Common.QuickInfo : 'Claim Subobject Category'
  InsurClmSubobjectCategory : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Subobject'
  InsurClmSubobject : String(16) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Application form'
  InsurClmDocApplFormKey : String(30) not null;
  @Common.Label : 'Already Printed'
  @Common.QuickInfo : 'Flag for Print Already Made'
  InsurClmDocIsPrinted : Boolean not null;
  @Common.Label : 'Language'
  @Common.QuickInfo : 'Language indicator in the application form'
  InsurClmDocLanguage : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Activity Category'
  @Common.Heading : 'Act'
  InsuranceClaimActivityCategory : String(2) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsuranceClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  _Subclaim : Association to one insurance_claim.InsurClaimServicesSubclaim {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Clm Srvcs Subclaim Item'
@Common.SemanticKey : [ 'InsurClmSubclm' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: InsurClmItemEvalQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmItemEvalPerUnitAmt,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmItemEvalAmount,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmItmEvalActlCshValAmt,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmItemClmdAmount,
    AllowedExpressions: 'MultiValue'
  }
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsSubclmItem {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subclaim Number'
  @Common.Heading : 'SubC'
  @Common.QuickInfo : 'Subclaim'
  key InsurClmSubclm : String(3) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Item'
  key InsurClmItem : String(4) not null;
  @Core.Immutable : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Evaluation'
  @Common.QuickInfo : 'Claim Item Evaluation'
  key InsurClmItemEvaluation : String(2) not null;
  @odata.Precision : 7
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Time Stamp'
  @Common.QuickInfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  LastChangeDateTime : Timestamp;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Item Category'
  InsurClmItemCat : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Object Type'
  @Common.Heading : 'Claim Item Object Type'
  @Common.QuickInfo : 'Claim Item Object Type'
  InsurClmItemType : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Coverage Type'
  InsurClmCoverageType : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Benefit Type'
  InsurBnftType : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Status of Claim Item'
  InsurClmItemStatus : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Rejection Reasn'
  @Common.QuickInfo : 'Claim Item Rejection Reason'
  InsurClmItemRjcnRsn : String(2) not null;
  @Common.Label : 'Description'
  @Common.Heading : 'Claim Item Description'
  @Common.QuickInfo : 'Claim Item Description'
  InsurClmItemDescription : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Evaluation By'
  @Common.QuickInfo : 'Type of Evaluator'
  InsurClmItemEvalBase : String(3) not null;
  @Measures.Unit : InsurClmItemEvalQuantityUnit
  @Common.Label : 'Number'
  @Common.QuickInfo : 'Claim Item: Number (Days, Visits, Area) for Evaluation'
  InsurClmItemEvalQuantity : Decimal(10, 3) not null;
  @Common.IsUnit : true
  @Common.Label : 'Unit'
  @Common.Heading : 'Claim Item: Unit of Measure'
  @Common.QuickInfo : 'Claim Item: Unit of Measurement'
  InsurClmItemEvalQuantityUnit : String(3) not null;
  @Measures.ISOCurrency : InsurClmItemEvalCurrency
  @Common.Label : 'Amount per Unit'
  InsurClmItemEvalPerUnitAmt : Decimal(precision: 15) not null;
  @Measures.ISOCurrency : InsurClmItemEvalCurrency
  @Common.Label : 'Evaluated Amount'
  InsurClmItemEvalAmount : Decimal(precision: 15) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  @Common.QuickInfo : 'Currency of Evaluated Amount'
  InsurClmItemEvalCurrency : String(3) not null;
  @Measures.ISOCurrency : InsurClmItemEvalCurrency
  @Common.Label : 'Act.Cash Value'
  @Common.QuickInfo : 'Actual Cash Value'
  InsurClmItmEvalActlCshValAmt : Decimal(precision: 15) not null;
  @Common.Label : 'ACV Part'
  @Common.QuickInfo : 'Proportion of Actual Cash Value to Original Cash Value in %'
  InsurClmItmEvalActlCshValPct : Decimal(5, 2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Tax Code'
  InsurClmItemTaxCode : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Belongs To'
  @Common.QuickInfo : 'Subclaim to Which a Claim Item Is Assigned'
  InsurClmItemSubclmRef : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Item'
  InsurClmItemRef : String(4) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Damaged Object'
  InsurClmDamagedObject : String(4) not null;
  @Common.Label : 'Liability Rate'
  @Common.QuickInfo : 'Liability Rate in Percent'
  InsurClmItemLiabilityRate : Decimal(5, 2) not null;
  @Common.Label : 'TRUE'
  @Common.QuickInfo : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
  InsurClmItemHasAlreadyPaidOut : Boolean not null;
  @Measures.ISOCurrency : InsurClmItemEvalCurrency
  @Common.Label : 'Amount Requestd'
  @Common.Heading : 'Amount Requested'
  @Common.QuickInfo : 'Amount Requested'
  InsurClmItemClmdAmount : Decimal(precision: 15) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Change category'
  @Common.Heading : 'CCat'
  InsuranceClaimChangeCategory : String(1) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsurClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  _Subclaim : Association to one insurance_claim.InsurClaimServicesSubclaim {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Claim Services Subrogation Header'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: InsurClmSubrogationEstAmount,
    AllowedExpressions: 'MultiValue'
  }
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsSubrogation {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.Label : 'UUID'
  @Common.QuickInfo : 'UUID in character form'
  key InsurClmSubrogationUUID : UUID not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  ChangedOnDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  LastChangedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  @Common.SAPObjectNodeTypeReference : 'InsuranceClaimSubrogationType'
  @Common.IsUpperCase : true
  @Common.Label : 'Type'
  @Common.QuickInfo : 'Type of Subrogation/Recovery'
  InsurClaimSubrogationType : String(10) not null;
  @Common.SAPObjectNodeTypeReference : 'InsurClmSubrogationReason'
  @Common.IsUpperCase : true
  @Common.Label : 'Reason'
  @Common.QuickInfo : 'Subrogation/Recovery Reason'
  InsurClmSubrogationReason : String(10) not null;
  @Measures.ISOCurrency : InsurClaimSubrogationCurrency
  @Common.Label : 'Estimated Amount'
  @Common.QuickInfo : 'Estimated Subrogation/Recovery Amount'
  InsurClmSubrogationEstAmount : Decimal(precision: 15) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subro/Rcvry Currency'
  @Common.Heading : 'Crcy'
  @Common.QuickInfo : 'Subrogation/Recovery Currency'
  InsurClaimSubrogationCurrency : String(3) not null;
  @Common.Label : 'Liability Rate'
  @Common.Heading : 'Liab. Rate'
  @Common.QuickInfo : 'Liability Rate for Subrogation/Recovery'
  InsurClmSubrogationLbltyRate : Decimal(5, 2) not null;
  @Common.Label : 'Probability'
  @Common.QuickInfo : 'Subrogation/Recovery Probability'
  InsurClmSubrogtnProbltyRate : Decimal(5, 2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Party Liable'
  InsurClmSubrogationPartyLiable : String(10) not null;
  @Common.Label : 'UUID of Litigation'
  @Common.QuickInfo : 'Universal Unique Identifier of Litigation'
  InsurClmLtgtnUUID : UUID;
  @Common.SAPObjectNodeTypeReference : 'InsurClmSubrogationStatus'
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Subrogation/Recovery Status'
  InsurClmSubrogationStatus : String(1) not null;
  InsurClmSubrogationStatusText : String(14) not null;
  @Common.Label : 'Sent On'
  @Common.Heading : 'Notification Sent On'
  @Common.QuickInfo : 'Date Sent (Notification of Subrogation/Recovery Activation)'
  InsurClmSubrogationSentDate : Date;
  @Common.Label : 'Closed'
  @Common.Heading : 'Subro/Rcvry Status "Completed"'
  @Common.QuickInfo : 'Subrogation/Recovery Status "Completed"'
  InsurClmSubrogationIsFinished : Boolean not null;
  @Common.Label : 'Closure Reason'
  @Common.Heading : 'Subro/Recovery Closed Because'
  @Common.QuickInfo : 'Closure Reason for Subrogation/Recovery'
  InsurClmSubrogtnClsRsnTxt : String(80) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Number'
  @Common.QuickInfo : 'Number of Subrogation/Recovery'
  InsurClmSubrogationNumber : String(5) not null;
  @Common.Label : 'Compressed GUID'
  @Common.Heading : 'Compressed Subro/Recovery GUID'
  @Common.QuickInfo : 'Subrogation/Recovery: Compressed GUID (Univ.Unique Identif.)'
  InsurClmSubrogationCompId : String(16) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsuranceClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  @Common.Composition : true
  _InsurClmSubrogtnItem : Composition of many insurance_claim.InsurClmSrvcsSubrogtnItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Insurance Claim Subrogation Item'
@Common.SemanticKey : [ 'InsuranceClaim' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: InsurClmSubrogationResAmount,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: InsurClmRsrvPendingAmount,
    AllowedExpressions: 'MultiValue'
  }
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity insurance_claim.InsurClmSrvcsSubrogtnItem {
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Claim Number'
  @Common.QuickInfo : 'Number of Claim'
  key InsuranceClaim : String(17) not null;
  @Core.Immutable : true
  @Common.Label : 'Subro/Recovery UUID'
  @Common.Heading : 'UUID of Subrogation/Recovery'
  @Common.QuickInfo : 'Universal Unique Identifier of Subrogation/Recovery'
  key InsurClmSubrogationItemUUID : UUID not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Last Changed At'
  @Common.QuickInfo : 'Date on Which Whole Claim Was Last Changed'
  ChangedOnDateTime : DateTime;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed by'
  @Common.QuickInfo : 'Changed By'
  LastChangedByUser : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Status'
  @Common.QuickInfo : 'Database Line Status (Original, Changed, Deleted)'
  InsurClmDatabaseLineStatus : String(1) not null;
  @Core.Immutable : true
  @Common.Label : 'Subro/Recovery UUID'
  @Common.Heading : 'UUID of Subrogation/Recovery'
  @Common.QuickInfo : 'Universal Unique Identifier of Subrogation/Recovery'
  InsurClmSubrogationUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Subclaim Number'
  @Common.Heading : 'SubC'
  @Common.QuickInfo : 'Subclaim'
  InsurClmSubclm : String(3) not null;
  @Measures.ISOCurrency : InsurClaimSubrogationCurrency
  @Common.Label : 'Reserve Amount'
  @Common.Heading : 'Reserve Amt Subrog/Rcvry Item'
  @Common.QuickInfo : 'Reserve Amount Subrogation/Recovery Item'
  InsurClmSubrogationResAmount : Decimal(precision: 15) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subro/Rcvry Currency'
  @Common.Heading : 'Crcy'
  @Common.QuickInfo : 'Subrogation/Recovery Currency'
  InsurClaimSubrogationCurrency : String(3) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Item Number'
  @Common.QuickInfo : 'Number of Subrogation/Recovery Item'
  InsurClmSubrogationItemNumber : String(5) not null;
  @Common.Label : 'Compr.Itm GUID'
  @Common.Heading : 'Compressed Subrogation/Recovery Itm GUID'
  @Common.QuickInfo : 'Subrogation/Recovery Item: Compressed GUID'
  InsurClmSubrogationItmCompId : String(16) not null;
  @Measures.ISOCurrency : InsurClaimSubrogationCurrency
  @Common.Label : 'Pending Reserve'
  InsurClmRsrvPendingAmount : Decimal(precision: 15) not null;
  InsurClmSubrogationStatusText : String(14) not null;
  SAP__Messages : many insurance_claim.SAP__Message not null;
  _InsuranceClaim : Association to one insurance_claim.InsurClmSrvcsInsurClaim {  };
  _InsurClmSubrogation : Association to one insurance_claim.InsurClmSrvcsSubrogation {  };
};

