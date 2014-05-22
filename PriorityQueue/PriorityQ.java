public class PriorityQueue {

    private ArrayList<Patient> patients;

    public PriorityQueue() {
    }

    public boolean empty() {
	if (patients.size() == 0) {
	    return true;
	}
	return false;
    }

    public void insert(Patient p) {
	patients.add(p);
    }

    public Patient mostPriorityPatient() {
	int maxPriority = 0;
	int PriorityPosition = 0;
	for (int i=0;i<patients.size()){
		if (patient[i].getPriority() > maxPriority){
			PriorityPosition = i;
			maxPriority = patients[i].getPriority();
		}
	}
	return patients[priorityPosition]
    }
}

