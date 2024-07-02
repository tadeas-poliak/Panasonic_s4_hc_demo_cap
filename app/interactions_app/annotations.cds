using CatalogService as service from '../../srv/interaction_srv';

annotate service.V_delivery_item with @(
    Aggregation.CustomAggregate #QTY: 'Edm.Decimal',

    UI.LineItem                     : [
        {
            $Type: 'UI.DataField',
            Label: 'Header ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Partner Number',
            Value: PARTNER_NUM,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Material ID',
            Value: MATERIAL_ID,
        },

        {
            $Type            : 'UI.DataField',
            Label            : 'Item Description',
            Value            : ITEM_DESC
        },
        {
            $Type: 'UI.DataField',
            Label: 'Inbound Date',
            Value: DATE_IN,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Outbound Date',
            Value: DATE_OUT,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Destination Country Code',
            Value: COUNTRY_DEST_CODE,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Quantity',
            Value: QTY,

        }
    ],

    UI.PresentationVariant          : {
        GroupBy       : [PARTNER_NUM],
        Total         : [QTY],
        Visualizations: ['@UI.LineItem', ]
    }
);

annotate service.V_delivery_item with @Aggregation.ApplySupported: {

    Transformations       : [
        'aggregate',
        'topcount',
        'bottomcount',
        'identity',
        'concat',
        'groupby',
        'filter',
        'search'
    ],
    Rollup                : #None,
    PropertyRestrictions  : true,
    GroupableProperties   : [
        COUNTRY_DEST_CODE,
        ID,
        MATERIAL_ID,
        PARTNER_NUM,
        ITEM_DESC,
        DATE_IN,
        DATE_OUT
    ],
    AggregatableProperties: [{Property: ID}, {Property: PARTNER_NUM}, {Property: QTY}, {Property: MATERIAL_ID}],
};
