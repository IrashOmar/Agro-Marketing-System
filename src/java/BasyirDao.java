/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author User
 */


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import f_CONNECTOR.ConnectionManager;

public class BasyirDao {

	private static Connection conn = null;
	
	public BasyirDao() {
		conn = ConnectionManager.getConnection();
	}

    protected void add(Course course) throws SQLException {
    	
    	try {
            String query = "INSERT INTO "
        				 + "COURSE("
        				 + "COURSE_CODE, COURSE_NAME, COURSE_CLASSIFICATION, "
        				 + "COURSE_SYNOPSIS, COURSE_ACAD_STAFFS, COURSE_SEMYEAR_OFFERED, "
        				 + "COURSE_CREDIT, COURSE_PREREQUISITE, COURSE_CLO_PLO, "
        				 + "COURSE_TRANS_SKILLS , COURSE_SLT_DIST, COURSE_SPECIAL_REQ, "
        				 + "COURSE_REFERENCES, COURSE_OTHER_INFO, COURSE_DATES_APPROVAL) "
                         + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, course.getCourseCode());
            ps.setString(2, course.getCourseName());
            ps.setString(3, course.getCourseClassification());
            ps.setString(4, course.getCourseSynopsis());
            ps.setString(5, course.getCourseAcadStaff());
            ps.setString(6, course.getCourseSemYearOffered());
            ps.setString(7, course.getCourseCredit());
            ps.setString(8, course.getCoursePrerequisite());
            //ps.setString(9, course.getCourseCLOPLO());
            ps.setString(10, course.getCourseTransSkills());
            ps.setString(11, course.getCourseSLTDist());
            ps.setString(12, course.getCourseSpecialReq());
            ps.setString(13, course.getCourseReferences());
            ps.setString(14, course.getCourseOtherInfo());
            ps.setString(15, course.getCourseDatesApproval());
           
            ps.execute();
        } catch (SQLException e) {
            throw new SQLException(e);
        } finally {
        	conn.close();
        }
    }

    protected List<Course> getList() 
    		throws SQLException {
    	
    	try {
    		List<Course> courseList = new ArrayList<Course>();
    		String query = "SELECT * FROM COURSE";
    		PreparedStatement ps = conn.prepareStatement(query);
    		ResultSet rs = ps.executeQuery();
    		while (rs.next()) {
    			Course course = new Course();
    			course.setCourseAcadStaff(rs.getString("COURSE_ACAD_STAFFS"));
    			course.setCourseClassification(rs.getString("COURSE_CLASSIFICATION"));
    			//course.setCourseCLOPLO(rs.getString("COURSE_CLO_PLO"));
    			course.setCourseCode(rs.getString("COURSE_CODE"));
    			course.setCourseCredit(rs.getString("COURSE_CREDIT"));
    			course.setCourseDatesApproval(rs.getString("COURSE_DATES_APPROVAL"));
    			course.setCourseName(rs.getString("COURSE_NAME"));
    			course.setCourseOtherInfo(rs.getString("COURSE_OTHER_INFO"));
    			course.setCoursePrerequisite(rs.getString("COURSE_PREREQUISITE"));
    			course.setCourseReferences(rs.getString("COURSE_REFERENCES"));
    			course.setCourseSemYearOffered(rs.getString("COURSE_SEMYEAR_OFFERED"));
    			course.setCourseSLTDist(rs.getString("COURSE_SLT_DIST"));
    			course.setCourseSpecialReq(rs.getString("COURSE_SPECIAL_REQ"));
    			course.setCourseSynopsis(rs.getString("COURSE_SYNOPSIS"));
    			course.setCourseTransSkills(rs.getString("COURSE_TRANS_SKILLS"));
    			
    			courseList.add(course);
    		}
    		return courseList;
    	} catch (SQLException e) {
    		throw new SQLException(e);
    	} finally {
            conn.close();
        }
    }
    
    protected Course getCourse(String courseCode) 
    		throws SQLException {
    	
    	try {
	    	String query = "SELECT * FROM COURSE WHERE COURSE_CODE = ?";
	    	PreparedStatement ps = conn.prepareStatement(query);
	    	ps.setString(1,  courseCode);
	    	ResultSet rs = ps.executeQuery();
	    	Course course = new Course();
	    	while (rs.next()) {
	    		course.setCourseAcadStaff(rs.getString("COURSE_ACAD_STAFFS"));
    			course.setCourseClassification(rs.getString("COURSE_CLASSIFICATION"));
    			//course.setCourseCLOPLO(rs.getString("COURSE_CLO_PLO"));
    			course.setCourseCode(rs.getString("COURSE_CODE"));
    			course.setCourseCredit(rs.getString("COURSE_CREDIT"));
    			course.setCourseDatesApproval(rs.getString("COURSE_DATES_APPROVAL"));
    			course.setCourseName(rs.getString("COURSE_NAME"));
    			course.setCourseOtherInfo(rs.getString("COURSE_OTHER_INFO"));
    			course.setCoursePrerequisite(rs.getString("COURSE_PREREQUISITE"));
    			course.setCourseReferences(rs.getString("COURSE_REFERENCES"));
    			course.setCourseSemYearOffered(rs.getString("COURSE_SEMYEAR_OFFERED"));
    			course.setCourseSLTDist(rs.getString("COURSE_SLT_DIST"));
    			course.setCourseSpecialReq(rs.getString("COURSE_SPECIAL_REQ"));
    			course.setCourseSynopsis(rs.getString("COURSE_SYNOPSIS"));
    			course.setCourseTransSkills(rs.getString("COURSE_TRANS_SKILLS"));
	    	}
	    	return course;
    	} catch (SQLException e) {
    		throw new SQLException(e);
    	} finally {
        	conn.close();
        }
    }
    
    protected int update(Course course, String courseCodeOld) 
    		throws SQLException {
    	
    	try {
    		String query = "UPDATE COURSE SET "
   				 + "COURSE_CODE=?, COURSE_NAME=?, COURSE_CLASSIFICATION=?, "
   				 + "COURSE_SYNOPSIS=?, COURSE_ACAD_STAFFS=?, COURSE_SEMYEAR_OFFERED=?, "
   				 + "COURSE_CREDIT=?, COURSE_PREREQUISITE=?, COURSE_CLO_PLO=?, "
   				 + "COURSE_TRANS_SKILLS=?, COURSE_SLT_DIST=?, COURSE_SPECIAL_REQ=?, "
   				 + "COURSE_REFERENCES=?, COURSE_OTHER_INFO=?, COURSE_DATES_APPROVAL=? "
                    + "WHERE COURSE_CODE=?";
       
    		PreparedStatement ps = conn.prepareStatement(query);
		    ps.setString(1, course.getCourseCode());
		    ps.setString(2, course.getCourseName());
		    ps.setString(3, course.getCourseClassification());
		    ps.setString(4, course.getCourseSynopsis());
		    ps.setString(5, course.getCourseAcadStaff());
		    ps.setString(6, course.getCourseSemYearOffered());
		    ps.setString(7, course.getCourseCredit());
		    ps.setString(8, course.getCoursePrerequisite());
		    ps.setString(9, "null");
		    ps.setString(10, course.getCourseTransSkills());
		    ps.setString(11, course.getCourseSLTDist());
		    ps.setString(12, course.getCourseSpecialReq());
		    ps.setString(13, course.getCourseReferences());
		    ps.setString(14, course.getCourseOtherInfo());
		    ps.setString(15, course.getCourseDatesApproval());
		    ps.setString(16, courseCodeOld);
		    
	    	if (ps.executeUpdate() != 0) {
	    		return 1;
	    	} else {
	    		return 0;
	    	}
	    	
    	} catch (SQLException e) {
    		throw new SQLException(e);
    	} finally {
    		conn.close();
    	}    	
    }
 
    protected int delete(String courseCode) 
    		throws SQLException {
    	
    	try {
    		int deleteResult;
    		String query = "DELETE FROM COURSE WHERE COURSE_CODE = ?";
    		PreparedStatement ps = conn.prepareStatement(query);
    		ps.setString(1, courseCode);
    		
    		if (ps.executeUpdate() != 0) {
    			deleteResult = 1;
    		} else {
    			deleteResult = 0;
    		}
    		return deleteResult;
    	} catch (SQLException e) {
    		throw new SQLException(e);
    	} finally {
            conn.close();
        }
    }
    
}