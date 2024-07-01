//namespace app.interactions;

using {Country} from '@sap/cds/common';

context app.interactions {

  type BusinessKey : String(10);
  type SDate       : DateTime;
  type LText       : String(1024);


  entity Interactions_Header {
    key ID              : Integer;
        ITEMS           : Composition of many Interactions_Items
                            on ITEMS.INTHeader = $self;
        PARTNER         : BusinessKey;
        LOG_DATE        : SDate;
        BPCOUNTRY       : Country;
        to_Interactions : Association to many V_INTERACTION
                            on  to_Interactions.ID      = $self.ID
                            and to_Interactions.PARTNER = $self.PARTNER;
  };

  entity Interactions_Items {

    key INTHeader : Association to Interactions_Header;
    key TEXT_ID   : BusinessKey;
        LANGU     : String(2);
        LOGTEXT   : LText;
        @DefaultAggregation: #SUM
        QTY       : Decimal;
  };


}

@cds.persistence.exists
@cds.persistence.calcview
entity V_INTERACTION {

  key ID             : Integer      @title: 'ID: ID';
  key PARTNER        : String(10)   @title: 'PARTNER: PARTNER';
  key TEXT_ID        : String(10)   @title: 'TEXT_ID: TEXT_ID';
      LOG_DATE       : DateTime       @title: 'LOG_DATE: LOG_DATE';
      BPCOUNTRY_CODE : String(3)    @title: 'BPCOUNTRY_CODE: BPCOUNTRY_CODE';
      LANGU          : String(2)    @title: 'LANGU: LANGU';
      LOGTEXT        : String(1024) @title: 'LOGTEXT: LOGTEXT';
      QTY            : Decimal      @title: 'QTY: QTY'  @Analytics.Measure: true  @Aggregation.default: #SUM;
      
}
