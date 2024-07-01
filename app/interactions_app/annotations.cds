using CatalogService as service from '../../srv/interaction_srv';

annotate service.V_Interaction with @(
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
            Value: PARTNER,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Text ID',
            Value: TEXT_ID,
        },

        {
            $Type            : 'UI.DataField',
            Label            : 'Log Text',
            Value            : LOGTEXT
        },
        {
            $Type: 'UI.DataField',
            Label: 'Log Date',
            Value: LOG_DATE,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Language',
            Value: LANGU,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Country Code',
            Value: BPCOUNTRY_CODE,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Quantity',
            Value: QTY,

        }
    ],

    UI.PresentationVariant          : {
        GroupBy       : [PARTNER],
        Total         : [QTY],
        Visualizations: ['@UI.LineItem', ]
    }
);

annotate service.V_Interaction with @Aggregation.ApplySupported: {

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
        BPCOUNTRY_CODE,
        ID,
        PARTNER,
        LANGU,
        LOGTEXT,
        LOG_DATE
    ],
    AggregatableProperties: [{Property: ID, }],
};
