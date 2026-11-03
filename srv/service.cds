using { BusinessPartnerA2X } from './external/BusinessPartnerA2X.cds';

using { MyRiskmgmt as my } from '../db/schema.cds';

@path : '/service/MyRiskmgmtService'
service MyRiskmgmtService
{
    @cds.redirection.target
    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @cds.redirection.target
    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;

    @cds.redirection.target
    entity A_BusinessPartner as
        projection on BusinessPartnerA2X.A_BusinessPartner
        {
            BusinessPartner,
            Customer,
            Supplier,
            BusinessPartnerCategory,
            BusinessPartnerFullName,
            BusinessPartnerIsBlocked
        };
}

annotate MyRiskmgmtService with @requires :
[
    'authenticated-user'
];
