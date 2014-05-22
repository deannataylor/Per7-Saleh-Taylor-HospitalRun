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

    public void getNext() {
	int max
	for (int i=0;i<patients.size(); 
    }
}
