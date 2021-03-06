package demo;

import casestudy.furama_resort.models.Villa;
import casestudy.thu_vien.models.Entities;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PasswordValidatorDemo {
    private static final String FILE_DICTIONARY="D:\\New folder\\C0620G1-luongvuquangdin\\module2\\src\\" +
            "casestudy\\thu_vien\\data\\Dictionary.txt";
    public static void main(String[] args) {
        List<Entities> list_1=new ArrayList<>();
        FileInputStream file=null;
        ObjectInputStream oIS =null;
        try {
            file=new FileInputStream(FILE_DICTIONARY);
            oIS=new ObjectInputStream(file);
            list_1= (List<Entities>) oIS.readObject();
        }catch (FileNotFoundException e) {
            System.out.println("File don't exits");
        } catch (IOException e) {
        } catch (ClassNotFoundException e) {
            System.out.println("File null");
        } finally {
            if (oIS!=null){
                try {
                    oIS.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (file!=null){
                try {
                    file.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        for (int i=0;i<list_1.size();i++){
            System.out.println(list_1.get(i).toString());
        }
    }
    }
