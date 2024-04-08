package com.project.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.web.model.Project;
import com.project.web.model.User;
import com.project.web.repository.ProjectInfo;
import com.project.web.repository.Userinfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class ProjectController {
      
     
	@Autowired
	Userinfo userob;
	@Autowired
	ProjectInfo prorepo;
	
	@GetMapping("/")
	public String Strat() {
		return"Login.jsp"; 
	}
	@PostMapping("/dashboard")
	public String dash(@RequestParam String email,@RequestParam String password){
		User ob=userob.findByEmail(email);
		System.out.println(ob);
		
		if (ob!=null&&ob.getEmail().equals(email)&&ob.getPassword().equals(password)) {
			return "Dashboard.jsp";		
			}
		return "Dashboard.jsp";
	
	}
	@PostMapping("/addproject")
	public String postMethodName() {
	return"addProject.jsp";
	}
	@PostMapping("/addprojectsave")
	public String addpro(@ModelAttribute Project ob,Model m){
		prorepo.save(ob);
		List<Project> li=prorepo.findAll();
		m.addAttribute("e_data",li);
		return "fetchdata.jsp";
	
	}
	@RequestMapping("/delete/{P_id}")
	public String requestMethodName(@PathVariable int P_id) {
		prorepo.deleteById(P_id);
		return"addProject.jsp";
	}
	
	@GetMapping("/update/{p_Id}")
    public String updateProject(@PathVariable("p_Id") int projectId, Model model) {
        Project project = prorepo.findById(projectId).orElse(null);
        
        if (project != null) {
            model.addAttribute("project", project);
            return "update.jsp";
        } else {
            return "errorPage.jsp"; // You can redirect to an error page or handle it differently
        }
    }
	
	
	
	
}
