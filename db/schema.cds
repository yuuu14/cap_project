using { managed, sap } from '@sap/cds/common';
namespace sap.capire.windowshopping;


entity Products {
    key ID : Integer;
    title  : localized String(111) @mandatory;
    descr  : localized String(1111) @mandatory;
    producer : localized String(111);
    type  : localized String(111);
    stock  : Integer;
    price  : Integer;
    imageurl: localized String(200);
    putondisplay:Boolean;
}

entity Carts  {
    key ID : Integer;
    quantity  : Integer;
    product: Association to Products;
}

entity Users  {
    key ID : Integer;
    username : String(50);
    password : localized String(50);
    email : localized String(50);
    purchases : Association to many Purchases on purchases.user = $self;
    age : Integer;
}

entity Purchases : managed{
    key ID   : Integer;
    product : Association to Products;
    user : Association to Users;
    purchase_date : Date;
}