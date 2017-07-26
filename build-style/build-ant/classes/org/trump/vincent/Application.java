package org.trump.vincent;

/**
 * Created by Vincent on 2017/7/24.
 */
public class Application {
    public static void buildHash(){
        for(int i=0;i<10;i++){
            System.out.print("Object HashCode: "+new Application().hashCode()+"\n");
        }

    }
    public static void main(String[] args) {
        System.out.print("Welcome to my Application.\n");
        buildHash();
    }
}
