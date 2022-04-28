package com.stud;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  


public class DBOperation {  
	  
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Student student){  
	    int status=0;  
	    try{  
	        Connection con=getConnection(); 
	        Statement st = con.createStatement();
	        ResultSet rs = st.executeQuery("select max(stud_id) from student");
	        if(rs.next()) {
	        	student.setStud_id(rs.getInt(1)+1);
	        }else {
	        	student.setStud_id(1);
	        }
	        PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?)");  
	        ps.setInt(1, student.getStud_id());
	        ps.setString(2,student.getStud_name());  
	        ps.setString(3,student.getStud_email());  
	        ps.setString(4,student.getStud_phone());  
	        ps.setString(5,student.getStud_address());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(Student student){  
	   	int status=0;  
	    try(Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("update student set stud_name=?,stud_email=?,stud_phone=?,stud_address=? where stud_id=?");){  
	        ps.setString(1,student.getStud_name());  
	        ps.setString(2,student.getStud_email());  
	        ps.setString(3,student.getStud_phone());  
	        ps.setString(4,student.getStud_address()); 
	        ps.setInt(5,student.getStud_id()); 
	        status=ps.executeUpdate(); 
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	public static int delete(Student student){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from student where stud_id=?");  
	        ps.setInt(1,student.getStud_id());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Student> getAllRecords(){  
	    List<Student> list=new ArrayList<Student>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from student");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Student student=new Student();  
	            student.setStud_id(rs.getInt(1));
	            student.setStud_name(rs.getString(2));
	            student.setStud_email(rs.getString(3));
	            student.setStud_phone(rs.getString(4));
	            student.setStud_address(rs.getString(5));
	            list.add(student);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Student getRecordById(int id){  
	    Student student=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from student where stud_id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            student=new Student();  
	            student.setStud_id(rs.getInt(1));
	            student.setStud_name(rs.getString(2));
	            student.setStud_email(rs.getString(3));
	            student.setStud_phone(rs.getString(4));
	            student.setStud_address(rs.getString(5));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return student;  
	}  
	public static List<Student> getRecordByName(String name){  
		List<Student> list=new ArrayList<Student>();  
	    try{  
	        Connection con=getConnection();  
	        Statement ps=con.createStatement();  
	        ResultSet rs=ps.executeQuery("select stud_id,stud_name from student where stud_name like '" + name + "%'");  
	        while(rs.next()){  
	            Student student=new Student();  
	            student.setStud_id(rs.getInt(1));
	            student.setStud_name(rs.getString(2));
	            //student.setStud_email(rs.getString(3));
	            //student.setStud_phone(rs.getString(4));
	            //student.setStud_address(rs.getString(5));
	            list.add(student);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
} 

