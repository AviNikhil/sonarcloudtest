package com.infinite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SourceDestiController {
   @RequestMapping("/traindetails")
	public String TrainSearch(){
		
		return "welcome";
	}
   
   @RequestMapping("/destination")
	public String sourcedes(){
		
		return "destination";
		
	}
   @RequestMapping("/notrain")
   public String notrain(){
	   return "Home";
   }
   @RequestMapping("/backhome")
   public String backoutput1(){
	   
	   return "Home";
   }
   
}
