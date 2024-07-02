//namespace app.interactions;

using {Country} from '@sap/cds/common';

context app.interactions {

  type BusinessKey : String(10);
  type SDate       : DateTime;
  type LText       : String(1024);


  entity Delivery {
    key ID              : Integer;
        ITEMS           : Composition of many Item
                            on ITEMS.DELIVERY = $self;
        PARTNER_NUM         : BusinessKey;
        DATE_OUT        : SDate;
        DATE_IN        : SDate;
        COUNTRY_DEST       : Country;
        to_Interactions : Association to many V_DELIVERY_ITEM
                            on  $self.ID = to_Interactions.ID
  };

  entity Item {

    key MATERIAL_ID   : BusinessKey;
    key DELIVERY : Association to Delivery;
        UNIT     : String(3);
        ITEM_DESC   : LText;
        @DefaultAggregation: #SUM
        QTY       : Decimal;
  };


}

@cds.persistence.exists
@cds.persistence.calcview
entity V_DELIVERY_ITEM {

  key ID             : Integer      @title: 'ID: ID';
  key PARTNER_NUM        : String(10)   @title: 'PARTNER_NUM: PARTNER_NUM';
  key MATERIAL_ID        : String(10)   @title: 'TEXT_ID: TEXT_ID';
      DATE_OUT       : DateTime       @title: 'DATE_OUT: DATE_OUT';
      DATE_IN       : DateTime       @title: 'DATE_IN: DATE_IN';
      COUNTRY_DEST_CODE : String(3)    @title: 'COUNTRY_DEST: COUNTRY_DEST';
      UNIT          : String(3)    @title: 'UNIT: UNIT';
      ITEM_DESC        : String(1024) @title: 'LOGTEXT: LOGTEXT';
      QTY            : Decimal      @title: 'QTY: QTY'  @Analytics.Measure: true  @Aggregation.default: #SUM;
      
}
