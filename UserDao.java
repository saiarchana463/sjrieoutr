package com.Planon;

import java.util.*;  
import java.sql.*;  

public class UserDao {
	
	public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
            con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=SchoolApplication;","sa","1234");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    public static int save(User user){  
        int status=0;  
        try{  
            Connection con=UserDao.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into UserDetails (role,firstName,middleName,lastName,gender,dateOfBirth,email,address,phoneNumber,subject) values (?,?,?,?,?,?,?,?,?,?)");  
            ps.setString(1,user.getRole());  
            ps.setString(2,user.getFirstName());  
            ps.setString(3,user.getMiddleName());  
            ps.setString(4,user.getLastName());  
            ps.setString(5,user.getGender());  
            ps.setString(6,user.getDateOfBirth());  
            ps.setString(7,user.getEmail());  
            ps.setString(8,user.getPhoneNumber());  
            ps.setString(9,user.getAddress());  
            ps.setString(10,user.getSubject());
//            System.out.println("update :"+user.getRole()+" "+user.getFirstName()+" "+user.getMiddleName()+" "+" "+user.getLastName()+" "+user.getGender()+" "+user.getDateOfBirth()+" "+user.getEmail()+" "+user.getPhoneNumber()+" "+user.getAddress()+" "+user.getSubject()); 
            status=ps.executeUpdate();  
//              System.out.println(status);
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
    public static int update(User user){  
        int status=0;  
        try{  
            Connection con=UserDao.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "UPDATE UserDetails SET role=?,firstName=?,middleName=?,lastName=?,gender=?,dateOfBirth=?,address=?,phoneNumber=?,subject=? WHERE email=? ");  
            ps.setString(1,user.getRole());  
            ps.setString(2,user.getFirstName());  
            ps.setString(3,user.getMiddleName());  
            ps.setString(4,user.getLastName());  
            ps.setString(5,user.getGender());  
            ps.setString(6,user.getDateOfBirth());  
            ps.setString(7,user.getAddress()); 
            ps.setString(8,user.getPhoneNumber());  
            ps.setString(9,user.getSubject());
            ps.setString(10,user.getEmail());  
            System.out.println("update :"+user.getRole()+" "+user.getFirstName()+" "+user.getMiddleName()+" "+" "+user.getLastName()+" "+user.getGender()+" "+user.getDateOfBirth()+" "+user.getEmail()+" "+user.getPhoneNumber()+" "+user.getAddress()+" "+user.getSubject()); 
            status=ps.executeUpdate();  
              System.out.println(status);
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
    
    public static int delete(String email){  
        int status=0;  
        try{  
            Connection con=UserDao.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from UserDetails where email=?");  
            ps.setString(1,email);  
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    
    public static User getUserByEmail(String email){  
        User userObj = new User(); 
          
        try{  
            Connection con=UserDao.getConnection();  
         
            PreparedStatement ps=con.prepareStatement("select * from UserDetails where email=?");  
            ps.setString(1,email);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                userObj.setRole(rs.getString(1));  
                userObj.setFirstName(rs.getString(2));  
                userObj.setMiddleName(rs.getString(3));  
                userObj.setLastName(rs.getString(4));  
                userObj.setGender(rs.getString(5));
                userObj.setDateOfBirth(rs.getString(6));  
                userObj.setEmail(rs.getString(7));  
                userObj.setPhoneNumber(rs.getString(8));  
                userObj.setAddress(rs.getString(9));  
                userObj.setSubject(rs.getString(10));
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return userObj;  
    }  
    public static List<User> getAllUsers(String query){  
        List<User> list=new ArrayList<User>();  
          
        try{  
            Connection con=UserDao.getConnection(); 
            PreparedStatement ps;
            if(query==null || query==" ") {
            	 ps=con.prepareStatement("select * from UserDetails");  
            }
            else {
            	 ps=con.prepareStatement("select * from UserDetails where role like '%"+query+"%' or firstName like '%"+query+"%' or  middleName like '%"+query+"%' or lastName like '%"+query+"%' or gender like '%"+query+"%' or dateOfBirth like '%"+query+"%' or email like '%"+query+"%' or phoneNumber like '%"+query+"%' or subject like '%"+query+"%' ");  
            }
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                User userObj=new User();  
                userObj.setRole(rs.getString(1));  
                userObj.setFirstName(rs.getString(2));  
                userObj.setMiddleName(rs.getString(3));  
                userObj.setLastName(rs.getString(4));  
                userObj.setGender(rs.getString(5));
                userObj.setDateOfBirth(rs.getString(6));  
                userObj.setEmail(rs.getString(7));  
                userObj.setPhoneNumber(rs.getString(8));  
                userObj.setAddress(rs.getString(9));  
                userObj.setSubject(rs.getString(10));
                list.add(userObj);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }  
    
    public static boolean validate(String userName,String password){  
    	boolean status=false;  
    	try{  
    	Class.forName("oracle.jdbc.driver.OracleDriver");  
    	Connection con=DriverManager.getConnection(  
    	"jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
    	      
    	PreparedStatement ps=con.prepareStatement(  
    	"select * from userreg where name=? and pass=?");  
    	ps.setString(1,userName);  
    	ps.setString(2,password);  
    	      
    	ResultSet rs=ps.executeQuery();  
    	status=rs.next();  
    	          
    	}catch(Exception e){System.out.println(e);}  
    	return status;  
    	}  
    
    
}
