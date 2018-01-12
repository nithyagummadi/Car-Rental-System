/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package cars.data;

import cars.model.Admin;
import cars.model.Car;
import cars.model.Rental;
import cars.model.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author NITHYA
 */
public class CarsDB {
    
     private static List<User> users = null;
    //private static List<Admin> admin = null;
    private static List<Car> car=null;
    private static List<Rental> rental=null;
    
     public static ArrayList<User> selectUser()
    {
        
        System.out.println("In the select Products methods!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        ArrayList<User> users = new ArrayList();
        try{
  Class.forName("com.mysql.jdbc.Driver");
   String dbURL = "jdbc:mysql://localhost:3306/cars";
   
            String username = "root";
            String password = "root"; 
            Connection c = DriverManager.getConnection( dbURL, username,password);
            Statement s = c.createStatement();
            String sql="select * from Customer";
            System.out.print("after select");
             ResultSet productsResSet;
            productsResSet = s.executeQuery(sql);
              
            if (productsResSet != null) 
            {
                                while (productsResSet.next()) 
                                {
                    User u = new User();
                    u.setmembershipid(productsResSet.getInt(1));
                    u.setname(productsResSet.getString(2));
                   
                    u.setAddress(productsResSet.getString(3));
                    u.setcity(productsResSet.getString(4));
                    u.setstate(productsResSet.getString(5));
                    u.setzipcode(productsResSet.getString(6));
                    u.setemail(productsResSet.getString(7));
                    u.setpassword(productsResSet.getString(8));
                   
                    
                    users.add(u);
                } 
                                return users;
            } 
        
            else {
                System.out.println("in else");
                  return users;
            }                      
           
        }
        catch(Exception e)
        {
            System.out.println("in catch"+e);
        }
    
return users;

}
    
     public static User selectUser(String username, String password) {
        users = selectUser();
        for (User p : users) {
            if (username != null
                    && username.equalsIgnoreCase(p.getemail()) && password!=null && password.equals(p.getpassword())) {
                return p;
            }
        }
        return null;
    }
     public static User selectUser(String email) {
        users = selectUser();
        for (User p : users) {
            if (email != null
                    && email.equalsIgnoreCase(p.getemail())) {
                return p;
            }
        }
        return null;
    }
     
     public static ArrayList<Admin> selectAdmins()
     {
         ArrayList<Admin> admin = new ArrayList();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rslt = null;
        String query = "SELECT * FROM InventoryManager";
        try {
            ps = connection.prepareStatement(query);
            rslt = ps.executeQuery();
            while (rslt.next()) {
                String Username = rslt.getString("username");                
                String Password = rslt.getString("pass");
                
                Admin p = new Admin();
                p.setaname(Username);
                p.setapassword(Password);
                              
                admin.add(p);
            }
            return admin;
        } 
        catch (SQLException e) {
            System.out.println(e);
            return null;
        } 
        finally {
            pool.freeConnection(connection);        
        }                      
     }
     
     public static Admin selectAdmin(String uname, String password) {
         ArrayList<Admin> admin = new ArrayList();
        admin = selectAdmins();
        for (Admin p : admin) {
            if (p != null
                    && uname.equals(p.getaname()) && password.equals(p.getapassword())) {
                return p;
            }
        }
        return null;
    }
     
     public static ArrayList<Car> selectCars() {
        ArrayList car = new ArrayList();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rslt = null;
        String query = "SELECT * FROM Car";
        try {
            ps = connection.prepareStatement(query);
            rslt = ps.executeQuery();
            while (rslt.next()) {
                String carid = rslt.getString("car_id");
                String carname=rslt.getString("car_name");
                String price = rslt.getString("price");
                
                System.out.println(carid);
                
           
                Car m = new Car();
               m.setCarId(carid);
               m.setCarName(carname);
               m.setPrice(price);
               
               
                car.add(m);
            }
            //System.out.println(car.toString());
            return car;

        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            pool.freeConnection(connection);
        }
    }
public static Car selectCar(String car_id) {
        car = selectCars();
        for (Car p : car) {
            if (car_id != null
                    && car_id.equalsIgnoreCase(p.getCarId())) {
                return p;
            }
        }
        return null;
}

public static void updateCar(Car c) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;              
        String query = "UPDATE Movie1 SET car_name = ?, price=? WHERE car_id= ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, c.getCarName());
            ps.setString(2, c.getPrice());
                       
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            pool.freeConnection(connection);
        }
    }

public static void editCustomerProfile(User c) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;              
        String query = "UPDATE Customer SET c_name = ?,address=?,city=?,state=?,zip_code=?,password=?  WHERE email= ?";
        try {
 
            ps = connection.prepareStatement(query);
            ps.setString(1, c.getname());
           
            ps.setString(2, c.getAddress());
            ps.setString(3, c.getcity());
            ps.setString(4, c.getstate());
            ps.setString(5, c.getzipcode());
            ps.setString(6, c.getemail());
            ps.setString(7, c.getpassword());
           
            
                       
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            pool.freeConnection(connection);
        }
    }

 public static void deleteCar(Car c) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
             
        String query = "DELETE from Car WHERE car_id= ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, c.getCarId());
            ps.executeUpdate();
        } catch (SQLException e) {
            pool.freeConnection(connection);
        }
    }
 
  public static void insertCustomer(User u) {        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = "INSERT INTO Customer (c_name, address, city, state, zip_code, email, password) "
          + "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            System.out.println("movie.data.MovieDB.insertCustomer()");
            ps = connection.prepareStatement(query);
           // ps.setInt(1, customer.getmembershipid());
            ps.setString(1, u.getname());
            
            ps.setString(2, u.getAddress());
            ps.setString(3, u.getcity());
            ps.setString(4, u.getstate());
         // ps.setString(8, null);
            ps.setString(5, u.getzipcode());
            ps.setString(6, u.getemail());
            ps.setString(7, u.getpassword());
          
            
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            pool.freeConnection(connection);
        }
    }
  
  public static void insertCar(Car c) {        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = "INSERT INTO Car (car_id,car_name,price) "
          + "VALUES (?, ?, ?)";
        try {            
            ps = connection.prepareStatement(query);
            ps.setString(1, c.getCarId());
            ps.setString(2, c.getCarName());
            ps.setString(3, c.getPrice());
           
            
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            pool.freeConnection(connection);
        }
    }
     public static void insertIntoRental(String id, String uemail) {        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rslt = null;
        int membershipID=0;
        String ccNumber = "";
        String cname="";
        String query = "SELECT * FROM Customer WHERE email=?";
        try {            
            ps = connection.prepareStatement(query);
            ps.setString(1, uemail);                        
            rslt=ps.executeQuery();
            while (rslt.next()) {
                membershipID = rslt.getInt("membership_id");
                
                ps = null;
            }
        } catch (SQLException e) {
            System.out.println(e);
        } 
        String query2 = "SELECT * FROM Car WHERE car_id=?";
        try {            
            ps = connection.prepareStatement(query2);
            ps.setString(1, id);                        
            rslt=ps.executeQuery();
            while (rslt.next()) {
                cname = rslt.getString("car_name");                
                ps = null;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        String query3 = "INSERT INTO Rental (membership_id,car_id,car_name,email) values (?,?,?,?)";
        try {            
            ps = connection.prepareStatement(query3);
            ps.setInt(1, membershipID); 
            ps.setString(2, id); 
            ps.setString(3,cname);
            ps.setString(4,uemail);
            
            ps.executeUpdate();           
        } catch (SQLException e) {
            System.out.println(e);
        }                
        finally {
            pool.freeConnection(connection);
        }
    }
      public static List<Rental> selectRentals(String uemail) {  
          rental=new ArrayList();           
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rslt = null;
        String query = "SELECT * FROM Rental WHERE email=?";
        try {            
            ps = connection.prepareStatement(query);
            ps.setString(1, uemail);                        
            rslt=ps.executeQuery();
             while (rslt.next()) {
                int userid = rslt.getInt("membership_id");
                String carId=rslt.getString("car_id");
                String carname = rslt.getString("car_name");
                               
                Rental r=new Rental();
                
                r.setmembershipId(userid);
                r.setCarId(carId);
                r.setCarName(carname);
              
                r.setuemail(uemail);                             
                rental.add(r);  
                 System.out.println("manasamjsdfhdjsh");
        } 
             return rental; 
        }catch (SQLException e) {
            
            System.out.println("manasa reddy karra");
            return null;
        } finally {
            pool.freeConnection(connection);
        }
    }
}

