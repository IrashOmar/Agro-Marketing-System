/*
 * Controller
 * 
 * v1.0
 * 
 * Author: Basyir Zainuddin
 * 
 * Purpose: This Java Source File delegates user input (in the HTTP request object) 
 * from an HTML form to handler methods as specified.
 */



import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import java.util.HashMap;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





@WebServlet("/ControllerCategory")
public class ControllerCategory extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public ControllerCategory() {
        super();
    }
    
    protected void doCommand(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException, SQLException {
		
    	response.getWriter().append("Served at: ").append(request.getContextPath());
    	String serverInfo=request.getSession().getServletContext().getServerInfo();
        System.out.println("Server Info" + serverInfo);
        String servletInfo= request.getSession().getServletContext().getMajorVersion() + "." +  request.getSession().getServletContext().getMinorVersion();
        System.out.println("Servlet Info" + servletInfo);
        
    	String command = request.getParameter("command");
        if (command != null) {
            try {
                switch (command) {
                    case "Add Course": 
                    	addCourse(request, response); 
                    	break;
            
                    case "Edit": 
                    	edit(request, response); 
                    	break;
                    	
                    case "Save Edit": 
                    	saveEdit(request, response); 
                    	break;
                	
                    case "Delete": 
                    	delete(request, response); 
                    	break;
                    	
                 
                }
            } catch (SQLException e) {
                throw new SQLException(e);
            }
        }  
	}
    
    protected void addCourse(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
		String courseCode = request.getParameter("courseCode");
		String courseName = request.getParameter("courseName");
		String courseClassification = request.getParameter("courseClassification");
		String courseSynopsis = request.getParameter("courseSynopsis");
		String courseAcadStaff = request.getParameter("courseAcadStaff");
		String courseSemYearOffered = request.getParameter("courseSemYearOffered");
		String courseCredit = String.valueOf( request.getParameter("courseCredit"));
		String coursePrerequisite = request.getParameter("coursePrerequisite");
		//HashMap<String, String> courseCLOPLO =  request.getParameter("courseCLOPLO");
		String courseTransSkills = request.getParameter("courseTransSkills");
		String courseSLTDist = request.getParameter("courseSLTDist");
		String courseSpecialReq = request.getParameter("courseSpecialReq");
		String courseReferences = request.getParameter("courseReferences");
		String courseOtherInfo = request.getParameter("courseOtherInfo");
		String courseDatesApproval = request.getParameter("courseDatesApproval");
        
        Course course = new Course();
        course.setCourseAcadStaff(courseAcadStaff);
        course.setCourseClassification(courseClassification);
        //course.setCourseCLOPLO(courseCLOPLO);
        course.setCourseCode(courseCode);
        course.setCourseCredit(courseCredit);
        course.setCourseDatesApproval(courseDatesApproval);
        course.setCourseName(courseName);
        course.setCourseOtherInfo(courseOtherInfo);
        course.setCoursePrerequisite(coursePrerequisite);
        course.setCourseReferences(courseReferences);
        course.setCourseSemYearOffered(courseSemYearOffered);
        course.setCourseSLTDist(courseSLTDist);
        course.setCourseSpecialReq(courseSpecialReq);
        course.setCourseSynopsis(courseSynopsis);
        course.setCourseTransSkills(courseTransSkills);
       
        DAO dao = new DAO();
        dao.add(course);
        try {
			TimeUnit.SECONDS.sleep(3);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
        RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
        rd.forward(request, response);
    }
//   
//    protected void getCourses(HttpServletRequest request, HttpServletResponse response) 
//    		throws ServletException, IOException, SQLException {
//    	
//    	DAO dao = new DAO();
//    	List<Course> courseList = dao.getList();
//    	Collections.reverse(courseList);
//    	request.getSession().setAttribute("courseList", courseList);
//    	RequestDispatcher rd = request.getRequestDispatcher("courses.jsp");
//    	rd.forward(request, response);
//    	for(Course c : courseList) {
//    		System.out.println(c.getCourseName());
//    	}
//    }
    
    protected void getCourseView(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException, SQLException {
    	
    	String courseCode = request.getParameter("courseCode");
    	DAO dao = new DAO();
    	Course course = dao.getCourse(courseCode);
    	request.getSession().setAttribute("course", course);
    	RequestDispatcher rd = request.getRequestDispatcher("view-course.jsp");
    	rd.forward(request, response);
    }
    
//    protected void edit(HttpServletRequest request, HttpServletResponse response) 
//    		throws ServletException, IOException, SQLException {
//    	
//    	String courseCode = request.getParameter("courseCode");
//    	DAO dao = new DAO();
//    	Course course = dao.getCourse(courseCode);
//    	
//    	request.getSession().setAttribute("course", course);
//    	RequestDispatcher rd = request.getRequestDispatcher("edit-course.jsp");
//    	rd.forward(request, response);
//    }
    
//    protected void saveEdit(HttpServletRequest request, HttpServletResponse response)
//    		throws ServletException, IOException, SQLException {
//    	
//    	String courseCodeOld = request.getParameter("courseCodeOld");
//    	String courseCode = request.getParameter("courseCode");
//		String courseName = request.getParameter("courseName");
//		String courseClassification = request.getParameter("courseClassification");
//		String courseSynopsis = request.getParameter("courseSynopsis");
//		String courseAcadStaff = request.getParameter("courseAcadStaff");
//		String courseSemYearOffered = request.getParameter("courseSemYearOffered");
//		String courseCredit = String.valueOf( request.getParameter("courseCredit"));
//		String coursePrerequisite = request.getParameter("coursePrerequisite");
//		String courseCLOPLO = request.getParameter("courseCLOPLO");
//		String courseTransSkills = request.getParameter("courseTransSkills");
//		String courseSLTDist = request.getParameter("courseSLTDist");
//		String courseSpecialReq = request.getParameter("courseSpecialReq");
//		String courseReferences = request.getParameter("courseReferences");
//		String courseOtherInfo = request.getParameter("courseOtherInfo");
//		String courseDatesApproval = request.getParameter("courseDatesApproval");
//		
//        Course courseEdit = new Course();
//        courseEdit.setCourseAcadStaff(courseAcadStaff);
//        courseEdit.setCourseClassification(courseClassification);
//        //courseEdit.setCourseCLOPLO(courseCLOPLO);
//        courseEdit.setCourseCode(courseCode);
//        courseEdit.setCourseCredit(courseCredit);
//        courseEdit.setCourseDatesApproval(courseDatesApproval);
//        courseEdit.setCourseName(courseName);
//        courseEdit.setCourseOtherInfo(courseOtherInfo);
//        courseEdit.setCoursePrerequisite(coursePrerequisite);
//        courseEdit.setCourseReferences(courseReferences);
//        courseEdit.setCourseSemYearOffered(courseSemYearOffered);
//        courseEdit.setCourseSLTDist(courseSLTDist);
//        courseEdit.setCourseSpecialReq(courseSpecialReq);
//        courseEdit.setCourseSynopsis(courseSynopsis);
//        courseEdit.setCourseTransSkills(courseTransSkills);
//        
//        DAO dao = new DAO();
//        int updateOK = dao.update(courseEdit, courseCodeOld);
//        if (updateOK == 1) {
//        	request.getSession().setAttribute("isCourseUpdated", true);
//        	System.out.println("update ok ");
//        	request.getSession().setAttribute("course", courseEdit);
//        	getCourseView(request, response);
//        } else {
//        	request.getSession().setAttribute("isCourseUpdated", false);
//        	System.out.println("update not ok");
//        }
//    }
    
//    protected void delete(HttpServletRequest request, HttpServletResponse response) 
//    		throws ServletException, IOException, SQLException {
//    	
//    	String courseCode = request.getParameter("courseCode");
//    	DAO dao = new DAO();
//    	int deleteCourse = dao.delete(courseCode);
//    	
//    	if (deleteCourse == 1) {
//    		System.out.println("delete ok ");
//    		getCourses(request, response);
//    	} else {
//    		System.out.println("delete failed ");
//    	}
//    	
//    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
            doCommand(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
            doCommand(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
	} 
}