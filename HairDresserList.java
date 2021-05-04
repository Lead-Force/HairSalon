/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BO;

/**
 *
 * @author renel
 */
public class HairDresserList {
//======== Properties =========
public int count;  //the number of HairDressers in the list
public HairDresser hdArr[] = new HairDresser[13];   //the list

public int getCount(){
    return count;
}
//methods
public void addHairDresser(HairDresser a1){
    hdArr[count]=a1;
    count++;
}

public void displayList(){
    for(int x=0; x< count; x++){
        hdArr[x].displayHairDresser();
    }
}

//main method
public static void main(String args[]){
    HairDresserList hdlist = new HairDresserList();
    
    HairDresser a = new HairDresser("2001","JUsename","Dpw","J","D","123 main st","404404"
    ,"email@email.com", false, "TW", 40,40,14.0);
    //HairDresser b = new HairDresser();
    hdlist.addHairDresser(a);
    //hdlist.addHairDresser(b);
    
    hdlist.displayList();
}
}