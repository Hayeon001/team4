package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Sales;
import com.kbstar.service.CartService;
import com.kbstar.service.CustService;
import com.kbstar.service.ItemService;
import com.kbstar.service.SalesService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Slf4j
@Controller
public class OrderController {

    @Autowired
    SalesService salesService;
    @Autowired
    CustService custService;
    @Autowired
    ItemService itemService;
    @Autowired
    CartService cartService;
    @Autowired
    private BCryptPasswordEncoder encoder;


    @RequestMapping("/order")
    public String order(Model model, int id, String cust_id, int item_id, HttpSession session) throws Exception {
        log.info("==========================================" + id);
        Sales sales = new Sales(cust_id, item_id);
        cartService.remove(id);
        salesService.register(sales);

        if (session != null) {
            Cust cust = (Cust) session.getAttribute("logincust");
            return "redirect:/orderpage";
        }
        model.addAttribute("center", "orderpage");
        return "index";
    }
}
