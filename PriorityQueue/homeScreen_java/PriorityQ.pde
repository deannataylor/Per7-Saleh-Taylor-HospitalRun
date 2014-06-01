class PriorityQueue {

   ArrayList<Patient> patients;
    Patient beingWorkedOn;

 boolean empty() {
  if (patients.size() == 0) {
      return true;
  }
  return false;
 }

 void insert(Patient p) {
  patients.add(p);
 }
}

Patient mostPriorityPatient() {
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

