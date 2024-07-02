using CatalogService as service from '../../srv/interaction_srv';

annotate service.V_delivery_item with @(

    UI                : {PresentationVariant #chartView: {
        $Type         : 'UI.PresentationVariantType',
        Visualizations: [ ![@UI.Chart#chartQty] ]
    }, },
    
    UI.Chart #chartQty: {
        Title              : 'Quantity per Partner Number',
        Description        : 'This chart shows the quantity for each partner number',
        ChartType          : #Bar,
        Dimensions         : ['PARTNER_NUM'],
        Measures           : ['QTY'],
        DimensionAttributes: [{
            Dimension: 'PARTNER_NUM',
            Role     : #Category
        }],
        MeasureAttributes  : [{
            Measure: 'QTY',
            Role   : #Axis2
        }],
       /* DynamicMeasures : [
            '@Analytics.AggregatedProperty#QTY_sum',
        ]*/
    }
);
annotate service.V_delivery_item with {
    QTY @Common.Label : 'Quantity';
    PARTNER_NUM @Common.Label : 'Partner Number';
    ID @Common.Label : 'Delivery ID';
    MATERIAL_ID @Common.Label : 'Material ID';
    DATE_OUT @Common.Label : 'Outbound Date';
    DATE_IN @Common.Label : 'Inbound Date';
    ITEM_DESC @Common.Label : 'Item Description';
    UNIT @Common.Label : 'Unit';
    COUNTRY_DEST_CODE  @Common.Label : 'Destination Country Code';
};
annotate service.V_delivery_item with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Information',
            ID : 'GeneralInformation',
            Target : '@UI.Identification',
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },{
            $Type : 'UI.DataField',
            Value : DATE_OUT,
        },{
            $Type : 'UI.DataField',
            Value : DATE_IN,
        },{
            $Type : 'UI.DataField',
            Value : ITEM_DESC,
        },{
            $Type : 'UI.DataField',
            Value : MATERIAL_ID,
        },{
            $Type : 'UI.DataField',
            Value : PARTNER_NUM,
        },{
            $Type : 'UI.DataField',
            Value : QTY,
        },{
            $Type : 'UI.DataField',
            Value : UNIT,
        },{
            $Type : 'UI.DataField',
            Value : COUNTRY_DEST_CODE,
        },]
);
/*annotate service.V_Interaction with @(
    Analytics.AggregatedProperty #QTY_sum : {
        $Type : 'Analytics.AggregatedPropertyType',
        Name : 'QTY_sum',
        AggregatableProperty : QTY,
        AggregationMethod : 'sum',
        ![@Common.Label] : 'Quantity (Sum)',
    }
);*/
