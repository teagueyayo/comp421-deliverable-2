import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

public class app{
    static Scanner reader = new Scanner(System.in);
    static Statement statement;
    static int sqlCode=0;
    static String sqlState="00000";
    public static void viewUnsold(){
	try{
	    String querySQL = "SELECT * FROM listing L WHERE L.address NOT IN (SELECT laddress FROM sells)";
	    java.sql.ResultSet rs = statement.executeQuery(querySQL);
	    while (rs.next()){
		String address = rs.getString(1);
		String buildDate = rs.getString(2);
		int size = rs.getInt(3);
		int price = rs.getInt(4);
		System.out.println(address + " " + buildDate + " " + size + " $" + price);
	    }
	}
	catch(SQLException e){
	    sqlCode = e.getErrorCode();
	    sqlState = e.getSQLState();
	    System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
	}
    }
    public static void addListing(){}
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
	Connection con = DriverManager.getConnection (url,"cs421g41", "6KtcK9uQdi");
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
		if(n == 1){viewUnsold();}
		else if(n == 2){}
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

	// try{
	//     String querySQL = "SELECT * FROM agent";
	//     System.out.println(querySQL);
	//     java.sql.ResultSet rs = statement.executeQuery(querySQL);
	//     while (rs.next()){
	// 	int id = rs.getInt(2);
	// 	String name = rs.getString(1);
	// 	boolean active = rs.getBoolean(3);
	// 	System.out.println("id: " + id);
	// 	System.out.println("name: " + name);
	// 	System.out.println("active: " + active);
	// 	    }
	//     System.out.println("DONE");
	// }
	// catch(SQLException e){
	//     sqlCode = e.getErrorCode();
	//     sqlState = e.getSQLState();
        
	//     System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
	// }
    }
}
