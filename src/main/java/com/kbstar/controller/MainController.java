package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.service.CustService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MainController {

    @Autowired
    CustService custService;

    @Autowired
    private BCryptPasswordEncoder encoder;

    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    @RequestMapping("/")
    public String main(){
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model){
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(Model model, HttpSession session){
        if(session != null){
            session.invalidate();
        }
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String id, String pwd,
                            HttpSession session) throws Exception {
        Cust cust = null;
        String nextPage = "loginfail";
        try {
            cust =custService.get(id);
            if(cust != null && encoder.matches(pwd, cust.getPwd())){
                nextPage = "/";
                session.setMaxInactiveInterval(100000);
                session.setAttribute("logincust",cust);
            }
        } catch (Exception e) {
            throw new Exception("시스템 장애 : 잠시 후 다시 로그인 하세요");
        }

        model.addAttribute("center",nextPage);
        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center","register");

        return "index";
    }
    @RequestMapping("/registerimpl")
    public String registerimpl(Model model, Cust cust, HttpSession session) throws Exception {

        try {
            custService.register(cust);
            // 회원가입 즉시 로그인처리 로그인된 화면 보여주기..
            session.setAttribute("logincust", cust);

        } catch (Exception e) {
            throw new Exception("가입 오류");
        }

        model.addAttribute("rcust", cust);
        model.addAttribute("center", "registerok");
        return "index";
    }
    @RequestMapping("/custinfo")
    public String custinfo(Model model){
        model.addAttribute("center","custinfo");
        return "index";
    }

    @RequestMapping("/cart")
    public String cart(Model model){
        model.addAttribute("center","cart");
        return "index";
    }


}
