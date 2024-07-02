sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'analyticalfioriapp/test/integration/FirstJourney',
		'analyticalfioriapp/test/integration/pages/V_InteractionList',
		'analyticalfioriapp/test/integration/pages/V_InteractionObjectPage'
    ],
    function(JourneyRunner, opaJourney, V_InteractionList, V_InteractionObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('analyticalfioriapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheV_InteractionList: V_InteractionList,
					onTheV_InteractionObjectPage: V_InteractionObjectPage
                }
            },
            opaJourney.run
        );
    }
);