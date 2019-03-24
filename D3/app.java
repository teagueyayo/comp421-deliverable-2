import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.Date;  

public class app{
    static Scanner reader = new Scanner(System.in);
    static Statement statement;
    static int sqlCode=0;
    static String sqlState="00000";
    static Connection con;
    public static void viewUnsold(){
	try{
	    String querySQL = "SELECT * FROM listing L WHERE L.address NOT IN (SELECT laddress FROM sells)";
	    java.sql.ResultSet rs = statement.executeQuery(querySQL);
	    System.out.println("ADDRESS | BUILD DATE | SIZE | PRICE");
	    while (rs.next()){
		String address = rs.getString(1);
		String buildDate = rs.getString(2);
		int size = rs.getInt(3);
		int price = rs.getInt(4);
		System.out.println(address + " " + buildDate + " " + size + " $" + price);
	    }
	}
	catch(SQLException e){
	    System.out.println("Failed to pull records from database.");
	}
    }
    
    public static void addListing(){	
	try{
	    reader.nextLine();
	    System.out.println("Please add address of new listing.");
	    String address = reader.nextLine();
	    System.out.println("Please add build date(yyyy-mm-dd) of new listing.");
	    String date = reader.nextLine();
	    System.out.println("Please add size.");
	    int size;
	    if(reader.hasNextInt()){
		size = reader.nextInt();
	    }
	    else{
		reader.nextLine();
		throw new java.lang.Exception("Error: Size must be an integer.");
	    }
	    System.out.println("Please add price of new listing.");
	    int price;
	    if(reader.hasNextInt()){
		price = reader.nextInt();
	    }
	    else{
		reader.nextLine();
		throw new java.lang.Exception("Error: Price must be an integer.");
	    }
	    DateFormat format = new SimpleDateFormat("yyyy-mm-dd");
	    Date date2 = format.parse(date);
	    String updateSQL = "INSERT INTO listing (address, build_date, size, list_price) VALUES ('" + address + "', '" + date2 + "', " + size + ", " + price + ");";
	    statement.executeUpdate(updateSQL);
	    System.out.println("Listing added.");
	}
	catch(Exception e){
	    System.err.println("Listing add failed with error \n" + e + ".");
	}
    }
    public static void salesPerAgent(){}
    public static void availableRentals(){}
    public static void registerSale(){}
    public static void main(String args[]) throws SQLException{
	try {
	    DriverManager.registerDriver (new org.postgresql.Driver());
	}
	catch (Exception cnfe){
	    System.out.println("Class not found");
	}
	String url = "jdbc:postgresql://comp421.cs.mcgill.ca:5432/cs421";
	con = DriverManager.getConnection (url,"cs421g41", "6KtcK9uQdi");
	statement = con.createStatement();
	
	while(true){
	    System.out.println("Please pick an option:");
	    System.out.println("1. View unsold listings");
	    System.out.println("2. Add a listing");
	    System.out.println("3. View Sales per agent");
	    System.out.println("4. Available rentals per building");
	    System.out.println("5. Register a sale");
	    System.out.println("6. Quit");
	    System.out.println("Enter the number of the option you would like: ");
	    if(reader.hasNextInt()){
		int n = reader.nextInt();
		if(n < 1 || n > 6){
		    System.err.println(n + " is not a valid option. Please enter a new one.");
		    continue;
		}
		if(n == 1){
		    System.out.println("");
		    viewUnsold();
		    System.out.println("");
		}
		else if(n == 2){
		    System.out.println("");
		    addListing();
		    System.out.println("");
		}
		else if(n == 3){}
		else if(n == 4){}
		else if(n == 5){}
		else{
		    break;
		}
	    }
	    else{
		reader.nextLine();
		System.err.println("Invalid input. Please input a number.");
		continue;
	    }
	}
	reader.close();
    }
}
