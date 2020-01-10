/**
 * Created by Deepak on 18-10-2019.
 */
public with sharing class ExportCasesController {
        public  static void searchCases(String caseNumber){
            List<Case> cases = new List<Case>();
            cases = [SELECT CaseNumber,Id,Status FROM Case WHERE CaseNumber LIKE:caseNumber LIMIT 5];
            System.debug(cases);
        }
}