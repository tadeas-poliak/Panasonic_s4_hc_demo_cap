using CatalogService as service from '../../srv/interaction_srv';

annotate service.V_Interaction with @(
    UI.LineItem                     : [
        {
            $Type: 'UI.DataField',
            Value: TEXT_ID,
        },
        {
            $Type: 'UI.DataField',
            Value: PARTNER,
        },
        {
            $Type: 'UI.DataField',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Value: LOG_DATE,
        },
        {
            $Type: 'UI.DataField',
            Value: BPCOUNTRY_CODE,
        },
        {
            $Type: 'UI.DataField',
            Value: QTY,

        }
    ],

    UI.PresentationVariant          : {
        GroupBy       : [BPCOUNTRY_CODE],
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
    LOG_DATE,
  ],
  AggregatableProperties: [
    {Property: ID, }
  ],
};
