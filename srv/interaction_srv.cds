using app.interactions from '../db/interactions';
using V_DELIVERY_ITEM from '../db/interactions';

service CatalogService {

    @requires: 'authenticated-user'
    entity Delivery as projection on interactions.Delivery {
        ID,
        PARTNER_NUM,        
        DATE_IN,
        DATE_OUT,
        ITEMS,
        to_Interactions
    };

    @requires: 'Admin'
    @restrict: [{
        grant: 'READ',
        where: 'LANGU = ''DE'''
    }]
   @cds.redirection.target: true
    entity Item as projection on interactions.Item;
    
    
entity V_delivery_item as projection on V_DELIVERY_ITEM;


    function sleep() returns Boolean;
}

