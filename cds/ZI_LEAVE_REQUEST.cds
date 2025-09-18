@AccessControl.authorizationCheck: #NOT_REQUIRED   
@EndUserText.label: 'Leave Requests Interface View' 
@Metadata.allowExtensions: true                    // Allow extensions on this CDS view

define root view entity ZI_LEAVE_REQUEST            // Define RAP root entity for Leave Requests
  as select from ztable_new                   
{
  // Action buttons displayed in Fiori list/report views
  @UI.lineItem: [
      { type: #FOR_ACTION, dataAction: 'approve', label: 'Approve', position: 10 },
      { type: #FOR_ACTION, dataAction: 'reject',  label: 'Reject',  position: 20 }
  ]

  // Action buttons displayed in Fiori object page views
  @UI.identification: [
      { type: #FOR_ACTION, dataAction: 'approve', label: 'Approve', position: 10 },
      { type: #FOR_ACTION, dataAction: 'reject',  label: 'Reject',  position: 20 }
  ]

  key id,            
  employee,          
  leave_type,          
  start_date,        
  end_date,            
  status              
}
