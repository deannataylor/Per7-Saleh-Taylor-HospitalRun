import java.io.*;
import java.util.*;

public class Patient{

    String name;
    String diseaseName;
    int disease;
    int priority;
    Random r = new Random();

  public Patient() {
    assignName();
    assignDisease();
    }

 void assignName() {
  String[] names = {"Ender Wiggin", "Ebenezer Scrooge", "Poseidon", "Robin Hood", "Felix the Cat", "Dracula", "Guybrush Threepwood", "King Arthur", "Donald Knuth", "Pinocchio", "Frankenstein", "Sherlock Holmes"};
  name = names[r.nextInt(names.length)];
    }

 void assignDisease() {
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
      diseaseName = "Flu";
  } else if (disease == 5) {
      diseaseName = "Dizziness";
  }
    }

 void updatePriority() {
  priority = priority++;
    }

 int getPriority() {
  return priority;
    }

 int getDisease() {
  return disease;
    }

 String getDiseaseName() {
  return diseaseName;
    }

String getName() {
  return name;
    }
}
