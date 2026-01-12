namespace winPol;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Invoices : cuid, managed {
    invoiceNumber : String(30);
    customerName  : String(100);
    amount        : Decimal(9, 2);
    currency      : String(3) default 'EUR';
    issueDate     : Date;
    dueDate       : Date;
    warningText   : String default 'DELAY!'
}
