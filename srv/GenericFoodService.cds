using {generic_food} from '../db/generic_food';

@path: '/sap/opu/odata/FoodService'
service FoodService {

    entity FoodEntity as projection on generic_food;

}