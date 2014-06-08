<<<<<<< HEAD

public class PriorityQ{

   ArrayList<Patient> patients = new ArrayList<Patient>();
   Patient beingWorkedOn; 
   int len = 0;
   
  public PriorityQ(){
    
  }

 boolean empty() {
    if (patients.size() == 0) {
      return true;
  }
  return false;
=======
private class PriorityQ {
   ArrayList<Patient> patients;
    Patient beingWorkedOn;

 boolean empty() {
  return patients.size() == 0;
>>>>>>> 2e279a3afedc700b8a915c15b8228f61c3822a0f
 }

 void insert(Patient p) {
  patients.add(p);
<<<<<<< HEAD
  len++;
 }
=======
 }
}
>>>>>>> 2e279a3afedc700b8a915c15b8228f61c3822a0f

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
<<<<<<< HEAD
}

=======
 }
>>>>>>> 2e279a3afedc700b8a915c15b8228f61c3822a0f
