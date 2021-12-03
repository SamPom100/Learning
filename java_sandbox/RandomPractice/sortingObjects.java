import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;
import java.util.Comparator;;

class sortingObjects{

    public static void main(String[] args){
        ArrayList<testingObject> storage = new ArrayList<testingObject>();
        Random rand = new Random();

        for(int i = 0; i<10; i++){
            int insert = rand.nextInt(400);
            testingObject temp = new testingObject(insert);
            storage.add(temp);
        }

        System.out.println("Unsorted Storage Has: ");
        for(int i = 0; i<storage.size(); i++){
            System.out.println(storage.get(i).number);
        }

        Collections.sort(storage);

        System.out.println("Sorted Storage Has: ");
        for(int i = 0; i<storage.size(); i++){
            System.out.println(storage.get(i).number);
        }

        ////////////////////////////////////////////////////////////
        System.out.println("\n\n\nMoving to no implements\n\n\n");



        ArrayList<testingObjectNoCompare> storage2 = new ArrayList<testingObjectNoCompare>();

        for(int i = 0; i<10; i++){
            int insert = rand.nextInt(400);
            testingObjectNoCompare temp = new testingObjectNoCompare(insert);
            storage2.add(temp);
        }

        System.out.println("Unsorted Storage Has: ");
        for(int i = 0; i<storage2.size(); i++){
            System.out.println(storage2.get(i).number);
        }

        Collections.sort(storage2, new Comparator<testingObjectNoCompare>(){
            public int compare(testingObjectNoCompare s1, testingObjectNoCompare s2) {
                return s1.number - s2.number;
            }
        });

        System.out.println("Sorted Storage Has: ");
        for(int i = 0; i<storage2.size(); i++){
            System.out.println(storage2.get(i).number);
        }

    }

}


class testingObject implements Comparable<testingObject>{

    String field1;
    int field2;
    int number;

    public testingObject(){
        field1 = "nothing";
        field2 = 123;
        number = 200;
    }

    public testingObject(int in){
        field1 = "init";
        field2 = 124;
        number = in;
    }

    @Override
    public int compareTo(testingObject in){
        //return this.number.compareTo(in.number);
        return number - in.number;
    }

}

class testingObjectNoCompare{

    String field1;
    int field2;
    int number;

    public testingObjectNoCompare(){
        field1 = "nothing";
        field2 = 123;
        number = 200;
    }

    public testingObjectNoCompare(int in){
        field1 = "init";
        field2 = 124;
        number = in;
    }

}