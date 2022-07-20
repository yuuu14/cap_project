using { sap.capire.windowshopping as my } from '../db/schema';

service AdminService @(path:'/admin') {

    @odata.draft.enabled
    @assert.integrity: false
    entity Products as projection on my.Products;

    entity Purchases as projection on my.Purchases;

    entity Users as projection on my.Users;
}

annotate my.Products with @fiori.draft.enabled;
annotate my.Users with @fiori.draft.enabled;
annotate my.Purchases with @fiori.draft.enabled;
