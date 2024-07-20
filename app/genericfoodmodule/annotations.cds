using FoodService as service from '../../srv/GenericFoodService';

annotate service.FoodEntity with @(

    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : food_name,
            },
            {
                $Type : 'UI.DataField',
                Value : scientific_name,
            },
            {
                $Type : 'UI.DataField',
                Value : group,
            },
            {
                $Type : 'UI.DataField',
                Value : sub_group,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : food_name,
            Label : 'Food Name',
        },
        {
            $Type : 'UI.DataField',
            Value : scientific_name,
            Label : 'Scientific Name',
        },
        {
            $Type : 'UI.DataField',
            Value : group,
            Label : 'Group',
        },
        {
            $Type : 'UI.DataField',
            Value : sub_group,
            Label : 'Sub group',
        },
    ],

    UI.HeaderInfo : {
         $Type : 'UI.HeaderInfoType',
         TypeName : 'Food Detail',
         TypeNamePlural: 'Food Details',
         Description : {
             $Type : 'UI.DataField',
            Value : group,
         },
         Title : {
            $Type : 'UI.DataField',
            Value : food_name,
         }
    }
);

