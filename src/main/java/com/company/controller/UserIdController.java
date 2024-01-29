package com.company.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.dto.UserIdDto;
import com.company.service.UserIdService;

@Controller
public class UserIdController {

   @Autowired
   UserIdService service;

   @RequestMapping(value = "/main.magnum", method = RequestMethod.GET)
   public String main() {
      return "semin/main";
   }

   @RequestMapping(value = "/login.magnum", method = RequestMethod.GET)
   public String login_View() {
      return "semin/login";
   }

//로그인
   @RequestMapping(value = "/login.magnum", method = RequestMethod.POST)
   public String login(UserIdDto dto, HttpServletRequest request,RedirectAttributes rttr) {
      String result="";
      UserIdDto login = service.login(dto);
      HttpSession session = request.getSession();

      if (login != null) {
         result="로그인되었습니다";
         session.setAttribute("login", login);
         rttr.addFlashAttribute("success",result);
         return "redirect:/main.magnum";
      } else {
         result="아이디와 비번을 확인해주세요";
         session.setAttribute("login", null);
         rttr.addFlashAttribute("success",result);
         return "redirect:/login.magnum";
      }
      
   }

//로그아웃
   @RequestMapping(value = "/logout.magnum", method = RequestMethod.GET)
   public String logout(HttpSession session) {
      session.invalidate();
      return "redirect:/login.magnum";
   }

//유저 회원가입
   @RequestMapping(value = "/membership.magnum", method = RequestMethod.GET)
   public String membership_View() {
      return "semin/membership";

   }

   @RequestMapping(value = "/membership.magnum", method = RequestMethod.POST)
   public String membership(UserIdDto dto, Model model,RedirectAttributes rttr) {
      String result="가입되지 않았습니다";
      model.addAttribute("dto", service.insert(dto));
      System.out.println(dto.getId());
      if(dto!= null) {
         result = "회원가입되었습니다";
      }
      
      rttr.addFlashAttribute("success",result);
      return "redirect:/login.magnum";
   }
//유저 회원가입

//유저 아이디 찾기
   @RequestMapping(value = "/id.magnum", method = RequestMethod.GET)
   public String id_View() {
      return "simple/id";
   }

   @RequestMapping(value = "/id.magnum", method = RequestMethod.POST)
   public String id(UserIdDto dto, Model model, RedirectAttributes rttr) {
      String result = "이메일을 확인해주세요";
      UserIdDto re = service.read(dto);

      if (re != null) {
         result = "아이디는" + re.getId() + "입니다";
      }
      model.addAttribute("dto", re);
      rttr.addFlashAttribute("success", result);      
      return "redirect:/login.magnum";
   }
   
   //유저 비밀번호 찾기
   @RequestMapping(value = "/pw.magnum", method = RequestMethod.GET)
   public String pw_View() {
      return "semin/pw";
   }
   @RequestMapping(value = "/pw.magnum", method = RequestMethod.POST)
   public String pw(UserIdDto dto, Model model, RedirectAttributes rttr) {
      String result = "아이디,이메일을 확인해주세요";
      UserIdDto re = service.read(dto);

      if (re != null) {
         result = "비밀번호는" + re.getPw() + "입니다";
      }
      model.addAttribute("dto", re);
      rttr.addFlashAttribute("success", result);
      
      
      return "redirect:/login.magnum";
   }
   //유저 비밀번호 찾기
   
   // 사용자 정보 확인 및 수정
   @RequestMapping(value = "/modification.magnum", method = RequestMethod.GET)
   public String modi_View(UserIdDto dto, Model model) {
      model.addAttribute("dto", service.userread(dto));
      return "semin/modification";
   }
   
   @RequestMapping(value = "/modification.magnum", method = RequestMethod.POST)
   public String modi(UserIdDto dto, Model model, RedirectAttributes rttr) {
   String result = "수정되지 않았습니다";
      if (service.update(dto) == 1) {
         result = "수정되었습니다";
      }
   model.addAttribute("dto", service.update(dto));
      rttr.addFlashAttribute("success", result);
      return "redirect:/login.magnum";
   }
   // 사용자 정보 확인 및 수정
   
   // 회원 탈퇴
   @RequestMapping(value = "/withdrawal.magnum", method = RequestMethod.GET)
   public String delete() {
      return "semin/withdrawal";
   }

   @RequestMapping(value = "/withdrawal.magnum", method = RequestMethod.POST)
   public String delete(UserIdDto dto, Model model,RedirectAttributes rttr) {
      String result="오류";
      model.addAttribute("dto", service.delete(dto));
      if(dto!=null) {
         result="탈퇴되었습니다.";
      }
      
      rttr.addFlashAttribute("success",result);
      return "redirect:/login.magnum";
   }
   // 회원 탈퇴
   
   // 중복체크
   @RequestMapping(value = "/IDCheck.magnum", method = RequestMethod.GET)
   @ResponseBody
   public ResponseEntity<Boolean> check(UserIdDto dto) {
      boolean result = true;

      if (dto.getId().trim().isEmpty()) {
         result = false;
      } else {
         if (service.idcheck(dto)) {
            result = false;
         } else {
            result = true;
         }
      }
      return new ResponseEntity<>(result, HttpStatus.OK);
   }
   // 중복체크
   
   // 관리자 리스트
   @RequestMapping(value = "/adminlist.magnum", method = { RequestMethod.GET, RequestMethod.POST })
   public String adminlist(UserIdDto dto, Model model) {
      model.addAttribute("list", service.adminlist());
      return "semin/adminlist";
   }

   // 관리자 비번
   @RequestMapping(value = "/adminpw.magnum", method = RequestMethod.GET)
   public String adminpw_View(String id, Model model) {
      model.addAttribute("id", id);
      return "semin/adminpw";
   }
   // 관리자 리스트

   // 관리자 사용자정보변경
   @RequestMapping(value = "/adminmodification.magnum", method = RequestMethod.GET)
   public String adminmodi_View(UserIdDto dto, Model model) {
      model.addAttribute("dto", service.userread(dto));
      return "semin/adminmodification";
   }

   @RequestMapping(value = "/adminmodification.magnum", method = RequestMethod.POST)
   public String adminmodi(UserIdDto dto, Model model,RedirectAttributes rttr) {
      String result="실패";
      model.addAttribute("dto", service.adminupdate(dto));
      if(dto!=null) {
         result="수정되었습니다";
      }
      rttr.addFlashAttribute("success", result);
      return "redirect:/adminlist.magnum";
   }
   // 관리자 사용자정보변경
   
   //회원정보 삭제
   @RequestMapping(value = "/admindelete.magnum", method = {RequestMethod.GET,RequestMethod.POST})
   public String admindelete(UserIdDto dto, Model model,RedirectAttributes rttr) {
      String result="실패";
      model.addAttribute("dto", service.admindelete(dto));
      if(dto!=null) {
         result="탈퇴되었습니다";
      }
      rttr.addFlashAttribute("success", result);
      return "redirect:/adminlist.magnum";
   }
   //회원정보 삭제
}