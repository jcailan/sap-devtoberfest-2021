using {sap.ui.riskmanagement as my} from '../db/schema';

@path : 'service/risk'
service RiskService {

    @(restrict : [
        {
            grant : ['READ'],
            to    : ['RiskViewer']
        },
        {
            grant : ['*'],
            to    : ['RiskManager']
        }
    ])
    @odata.draft.enabled
    entity Risks       as projection on my.Risks;

    @(restrict : [
        {
            grant : ['READ'],
            to    : ['RiskViewer']
        },
        {
            grant : ['*'],
            to    : ['RiskManager']
        }
    ])
    @odata.draft.enabled
    entity Mitigations as projection on my.Mitigations;

}
