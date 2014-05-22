import java.io.*;
import java.util.*;


public class Patient {

    String name;
    String diseasename;
    int disease;
    int priority;
    Random r = new Random();

    public Patient() {
	assignName();
	assignDisease();
    }

    public void assignName() {
	String[] names = {"Ender Wiggin", "Ebenezer Scrooge", "Poseidon", "Robin Hood", "Felix the Cat", "Dracula", "Guybrush Threepwood", "King Arthur", "Donald Knuth", "Pinocchio", "Frankenstein", "Sherlock Holmes"}
	name = names[r.nextInt(names.length)];
    }

    public void assignDisease() {
	int x = r.nextInt(6);
	disease = x;
	priority = x;
	if (disease == 0) {
	    diseaseName = "Surgery";
	} else if (disease == 1) {
	    diseaseName = "Bacterial Infection";
	} else if (disease == 2) {
	    diseaseName = "Cancer";
	} else if (disease == 3) {
	    diseaseName = "Viral Infection";
	} else if (disease == 4) {
	    diseaseName = "Osteoporosis";
	} else if (disease == 5) {
	    diseaseName = "Dizziness";
	}
    }

    public void updatePriority() {
	priority = priority++;
    }
	
}
