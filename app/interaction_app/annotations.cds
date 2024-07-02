using CatalogService as service from '../../srv/interaction_srv';

annotate service.Delivery with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'PARTNER',
                Value: PARTNER_NUM,
            },
            {
                $Type: 'UI.DataField',
                Label: 'LOG_DATE',
                Value: DATE_IN,
            },
        ],
    },
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
         {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet2',
            Label : 'Interaction Items',
            Target: 'to_Interactions/@UI.LineItem#interactionApp'
        },
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'PARTNER',
            Value: PARTNER_NUM,
        },
        {
            $Type: 'UI.DataField',
            Label: 'LOG_DATE',
            Value: DATE_IN,
        },
    ],
);

annotate service.V_delivery_item with @(
    UI.FieldGroup #VInteractionFieldGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PARTNER',
                Value : PARTNER_NUM,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LOG_DATE',
                Value : DATE_IN,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPCOUNTRY_CODE',
                Value : COUNTRY_DEST_CODE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TEXT_ID',
                Value : MATERIAL_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Item description',
                Value : ITEM_DESC,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UNIT',
                Value : UNIT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'QTY',
                Value : QTY,
            },
        ],
    },
    UI.LineItem#interactionApp: [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PARTNER',
            Value : PARTNER_NUM,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LOG_DATE',
            Value : DATE_IN,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPCOUNTRY_CODE',
            Value : COUNTRY_DEST_CODE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TEXT_ID',
            Value : MATERIAL_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LANGU',
            Value : UNIT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LOGTEXT',
            Value : ITEM_DESC,
        },
        {
            $Type : 'UI.DataField',
            Label : 'QTY',
            Value : QTY,
        },
    ],
);
