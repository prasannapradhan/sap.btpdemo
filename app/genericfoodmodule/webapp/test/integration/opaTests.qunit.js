sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sap/prasanna/genericfoodmodule/test/integration/FirstJourney',
		'sap/prasanna/genericfoodmodule/test/integration/pages/FoodEntityList',
		'sap/prasanna/genericfoodmodule/test/integration/pages/FoodEntityObjectPage'
    ],
    function(JourneyRunner, opaJourney, FoodEntityList, FoodEntityObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sap/prasanna/genericfoodmodule') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFoodEntityList: FoodEntityList,
					onTheFoodEntityObjectPage: FoodEntityObjectPage
                }
            },
            opaJourney.run
        );
    }
);