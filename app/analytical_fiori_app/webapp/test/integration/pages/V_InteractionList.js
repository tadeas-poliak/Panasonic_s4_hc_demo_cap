sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'analyticalfioriapp',
            componentId: 'V_InteractionList',
            contextPath: '/V_Interaction'
        },
        CustomPageDefinitions
    );
});