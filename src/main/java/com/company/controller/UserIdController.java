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
		return "userid/main";
	}

	@RequestMapping(value = "/login.magnum", method = RequestMethod.GET)
	public String login_View() {
		return "userid/login";
	}

//�α���
	@RequestMapping(value = "/login.magnum", method = RequestMethod.POST)
	public String login(UserIdDto dto, HttpServletRequest request,RedirectAttributes rttr) {
		String result="";
		UserIdDto login = service.login(dto);
		HttpSession session = request.getSession();

		if (login != null) {
			result="�α��εǾ����ϴ�";
			session.setAttribute("login", login);
			rttr.addFlashAttribute("success",result);
			return "redirect:/login.magnum";
		} else {
			result="���̵�� ����� Ȯ�����ּ���";
			session.setAttribute("login", null);
			rttr.addFlashAttribute("success",result);
			return "redirect:/main.magnum";
		}
		
	}

//�α׾ƿ�
	@RequestMapping(value = "/logout.magnum", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login.magnum";
	}

//���� ȸ������
	@RequestMapping(value = "/membership.magnum", method = RequestMethod.GET)
	public String membership_View() {
		return "userid/membership";

	}

	@RequestMapping(value = "/membership.magnum", method = RequestMethod.POST)
	public String membership(UserIdDto dto, Model model,RedirectAttributes rttr) {
		String result="���Ե��� �ʾҽ��ϴ�";
		model.addAttribute("dto", service.insert(dto));
		System.out.println(dto.getId());
		if(dto!= null) {
			result = "ȸ�����ԵǾ����ϴ�";
		}
		
		rttr.addFlashAttribute("success",result);
		return "redirect:/login.magnum";
	}
//���� ȸ������

//���� ���̵� ã��
	@RequestMapping(value = "/id.magnum", method = RequestMethod.GET)
	public String id_View() {
		return "userid/id";
	}

	@RequestMapping(value = "/id.magnum", method = RequestMethod.POST)
	public String id(UserIdDto dto, Model model, RedirectAttributes rttr) {
		String result = "�̸����� Ȯ�����ּ���";
		UserIdDto re = service.read(dto);

		if (re != null) {
			result = "���̵��" + re.getId() + "�Դϴ�";
		}
		model.addAttribute("dto", re);
		rttr.addFlashAttribute("success", result);		
		return "redirect:/login.magnum";
	}
	
	//���� ��й�ȣ ã��
	@RequestMapping(value = "/pw.magnum", method = RequestMethod.GET)
	public String pw_View() {
		return "userid/pw";
	}
	@RequestMapping(value = "/pw.magnum", method = RequestMethod.POST)
	public String pw(UserIdDto dto, Model model, RedirectAttributes rttr) {
		String result = "���̵�,�̸����� Ȯ�����ּ���";
		UserIdDto re = service.read(dto);

		if (re != null) {
			result = "��й�ȣ��" + re.getPw() + "�Դϴ�";
		}
		model.addAttribute("dto", re);
		rttr.addFlashAttribute("success", result);
		
		
		return "redirect:/login.magnum";
	}
	//���� ��й�ȣ ã��
	
	// ����� ���� Ȯ�� �� ����
	@RequestMapping(value = "/modification.magnum", method = RequestMethod.GET)
	public String modi_View(UserIdDto dto, Model model) {
		model.addAttribute("dto", service.userread(dto));
		return "userid/modification";
	}
	
	@RequestMapping(value = "/modification.magnum", method = RequestMethod.POST)
	public String modi(UserIdDto dto, Model model, RedirectAttributes rttr) {
	String result = "�������� �ʾҽ��ϴ�";
		if (service.update(dto) == 1) {
			result = "�����Ǿ����ϴ�";
		}
	model.addAttribute("dto", service.update(dto));
		rttr.addFlashAttribute("success", result);
		return "redirect:/login.magnum";
	}
	// ����� ���� Ȯ�� �� ����
	
	// ȸ�� Ż��
	@RequestMapping(value = "/withdrawal.magnum", method = RequestMethod.GET)
	public String delete() {
		return "userid/withdrawal";
	}

	@RequestMapping(value = "/withdrawal.magnum", method = RequestMethod.POST)
	public String delete(UserIdDto dto, Model model,RedirectAttributes rttr) {
		String result="����";
		model.addAttribute("dto", service.delete(dto));
		if(dto!=null) {
			result="Ż��Ǿ����ϴ�.";
		}
		
		rttr.addFlashAttribute("success",result);
		return "redirect:/login.magnum";
	}
	// ȸ�� Ż��
	
	// �ߺ�üũ
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
	// �ߺ�üũ
	
	// ������ ����Ʈ
	@RequestMapping(value = "/adminlist.magnum", method = { RequestMethod.GET, RequestMethod.POST })
	public String adminlist(UserIdDto dto, Model model) {
		model.addAttribute("list", service.adminlist());
		return "userid/adminlist";
	}

	// ������ ���
	@RequestMapping(value = "/adminpw.magnum", method = RequestMethod.GET)
	public String adminpw_View(String id, Model model) {
		model.addAttribute("id", id);
		return "userid/adminpw";
	}
	// ������ ����Ʈ

	// ������ �������������
	@RequestMapping(value = "/adminmodification.magnum", method = RequestMethod.GET)
	public String adminmodi_View(UserIdDto dto, Model model) {
		model.addAttribute("dto", service.userread(dto));
		return "userid/adminmodification";
	}

	@RequestMapping(value = "/adminmodification.magnum", method = RequestMethod.POST)
	public String adminmodi(UserIdDto dto, Model model,RedirectAttributes rttr) {
		String result="����";
		model.addAttribute("dto", service.adminupdate(dto));
		if(dto!=null) {
			result="�����Ǿ����ϴ�";
		}
		rttr.addFlashAttribute("success", result);
		return "redirect:/adminlist.magnum";
	}
	// ������ �������������
	
	//ȸ������ ����
	@RequestMapping(value = "/admindelete.magnum", method = {RequestMethod.GET,RequestMethod.POST})
	public String admindelete(UserIdDto dto, Model model,RedirectAttributes rttr) {
		String result="����";
		model.addAttribute("dto", service.admindelete(dto));
		if(dto!=null) {
			result="Ż��Ǿ����ϴ�";
		}
		rttr.addFlashAttribute("success", result);
		return "redirect:/adminlist.magnum";
	}
	//ȸ������ ����
}
