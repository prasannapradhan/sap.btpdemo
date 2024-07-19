using {managed} from '@sap/cds/common';


entity generic_food : managed
{
    key ID : UUID @Core.Computed;
    @title : 'Simple Food Name'
    food_name : String(100);
    @title : 'Scientefic Food Name'
    scientific_name : String(100);
    @title : 'Name of the group'
    group : String(100);
    @title : 'Name of the sub group'
    sub_group : String(100);
}
