sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"windowsinvoices/test/integration/pages/InvoicesList",
	"windowsinvoices/test/integration/pages/InvoicesObjectPage"
], function (JourneyRunner, InvoicesList, InvoicesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('windowsinvoices') + '/test/flpSandbox.html#windowsinvoices-tile',
        pages: {
			onTheInvoicesList: InvoicesList,
			onTheInvoicesObjectPage: InvoicesObjectPage
        },
        async: true
    });

    return runner;
});

