sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/RisksList.gen",
	"project1/test/integration/pages/RisksObjectPage.gen"
], function (JourneyRunner, RisksListGenerated, RisksObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheRisksListGenerated: RisksListGenerated,
			onTheRisksObjectPageGenerated: RisksObjectPageGenerated
        },
        async: true
    });

    return runner;
});

