using WindowsSell as service from '../../srv/invoices-srv';

annotate service.Invoices with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'invoiceNumber',
                Value: invoiceNumber,
            },
            {
                $Type: 'UI.DataField',
                Label: 'customerName',
                Value: customerName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'amount',
                Value: amount,
            },
            {
                $Type: 'UI.DataField',
                Label: 'currency',
                Value: currency,
            },
            {
                $Type: 'UI.DataField',
                Label: 'issueDate',
                Value: issueDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'dueDate',
                Value: dueDate,
            },
            {
                $Type     : 'UI.DataField',
                Label     : 'warningText',
                Value     : warningText,
                @UI.Hidden: {$edmJson: {$Path: 'isDelayed'}},
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'invoiceNumber',
            Value: invoiceNumber,
        },
        {
            $Type: 'UI.DataField',
            Label: 'customerName',
            Value: customerName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'amount',
            Value: amount,
        },
        {
            $Type: 'UI.DataField',
            Label: 'currency',
            Value: currency,
        },
        {
            $Type: 'UI.DataField',
            Value: dueDate,
            Label: 'dueDate',
        },
    ],
);
