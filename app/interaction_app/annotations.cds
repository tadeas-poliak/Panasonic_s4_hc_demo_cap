using CatalogService as service from '../../srv/interaction_srv';

annotate service.Interactions_Header with @(
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
                Value: PARTNER,
            },
            {
                $Type: 'UI.DataField',
                Label: 'LOG_DATE',
                Value: LOG_DATE,
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
            Value: PARTNER,
        },
        {
            $Type: 'UI.DataField',
            Label: 'LOG_DATE',
            Value: LOG_DATE,
        },
    ],
);

annotate service.V_Interaction with @(
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
                Value : PARTNER,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LOG_DATE',
                Value : LOG_DATE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BPCOUNTRY_CODE',
                Value : BPCOUNTRY_CODE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TEXT_ID',
                Value : TEXT_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LANGU',
                Value : LANGU,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LOGTEXT',
                Value : LOGTEXT,
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
            Value : PARTNER,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LOG_DATE',
            Value : LOG_DATE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPCOUNTRY_CODE',
            Value : BPCOUNTRY_CODE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TEXT_ID',
            Value : TEXT_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LANGU',
            Value : LANGU,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LOGTEXT',
            Value : LOGTEXT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'QTY',
            Value : QTY,
        },
    ],
);
