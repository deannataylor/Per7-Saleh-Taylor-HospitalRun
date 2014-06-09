class PriorityQ{
   ArrayList<Patient> patients = new ArrayList<Patient>();
   Patient beingWorkedOn; 
   int len = 0;

 boolean empty() {
  return patients.size() == 0;
 }

 void insert(Patient p) {
  patients.add(p);
  len++;
 }
 
 void updateAll() {
   for (Patient a: patients) {
     a.updatePriority();
   }
 }

Patient mostPriorityPatient() {
  updateAll();
  int maxPriority = 0;
  int PriorityPosition = 0;
  for (int i=0;i<patients.size();i++){
    if (patients.get(i).getPriority() > maxPriority){
      PriorityPosition = i;
      maxPriority = patients.get(i).getPriority();
    }
  }
  return patients.remove(PriorityPosition);
}

 void setPatient(){
  beingWorkedOn = mostPriorityPatient();
 }

 }

