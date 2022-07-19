/**
 * Created by Deepak on 18-10-2019.
 */
public with sharing class ExportCasesController {
    public static void searchCases(String caseNumber) {
        List<Case> cases = new List<Case>();
        cases = [SELECT CaseNumber,Id,Status FROM Case WHERE CaseNumber LIKE:caseNumber LIMIT 5];
        System.debug(cases);
        
        
    }
    public static List<Case> getCasesByAccountId(Id accountId) {
        List<Case> casesWithAccount = new List<Case>();
        try {
            casesWithAccount = [SELECT CaseNumber, Status FROM Case WHERE AccountId = :accountId LIMIT 50000];
        } catch (Exception exp) {
            System.debug('Exception Message ::' + exp.getMessage() + ' At Line Number ::' + exp.getLineNumber());
        }
        return casesWithAccount;
    }
}
