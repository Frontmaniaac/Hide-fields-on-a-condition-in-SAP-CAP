using {winPol} from '../db/invoices';

service WindowsSell {
    entity Invoices as
        projection on winPol.Invoices {
            *,
            virtual isDelayed : Boolean
        };
}
