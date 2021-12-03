import java.util.*;

class test{

    public static void main(String[] args){
        int[] tmp = {1,2,4,5,6,0,7,8};
        System.out.println(isPermu(tmp));
    }

    public static boolean isPermu(int[] in){
        Arrays.sort(in);
        for(int i = 0; i<in.length; i++){
            if(i != in[i]){
                return false;
            }
        }
        return true;
    }
}