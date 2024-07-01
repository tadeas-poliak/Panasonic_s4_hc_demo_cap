using app.interactions from '../db/interactions';
using V_INTERACTION from '../db/interactions';

service CatalogService {

    @requires: 'authenticated-user'
    entity Interactions_Header as projection on interactions.Interactions_Header {
        ID,
        PARTNER,        
        LOG_DATE,
        ITEMS,
        to_Interactions
    };

    @requires: 'Admin'
    @restrict: [{
        grant: 'READ',
        where: 'LANGU = ''DE'''
    }]
   @cds.redirection.target: true
    entity Interactions_Items as projection on interactions.Interactions_Items;
    

    entity V_Interaction as projection on V_INTERACTION;


    function sleep() returns Boolean;
}

