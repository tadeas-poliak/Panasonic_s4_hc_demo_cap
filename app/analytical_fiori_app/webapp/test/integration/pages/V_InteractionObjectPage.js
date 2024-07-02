sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'analyticalfioriapp',
            componentId: 'V_InteractionObjectPage',
            contextPath: '/V_Interaction'
        },
        CustomPageDefinitions
    );
});