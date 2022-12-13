public class test {
    public static void accountviews (){
        List<Account> updateIndustry = New List<Account>();
        
        List<Account> accList =[SELECT Id, Name, Industry 
                               FROM Account 
                               WHERE Name like '%Demo%' ];
        //System.debug('Account List'+'='+ accList);
        for(Account Acc :accList ){ 
            If(Acc.Name.contains('Demo')){
                Acc.Industry='Banking';
            updateIndustry.add(Acc);
            }                    
        }
        Update updateIndustry;
        //system.debug(updateIndustry);
    }
    Public static void tryCatch(){
        
        
       List<opportunity> oppList = new List<opportunity>();
        
        for(Opportunity op: [SELECT ID, NAME FROM opportunity WHERE Name like '%00000107%']){
            oppList.add(op);
        }
        Delete oppList;
        
    }
}