package br.com.caelum.tarefas.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;

public class LogoutAction {
	
	@Action(value="logout", results={
			@Result(name="ok", location="formulario-login.jsp")
	})
	
	public String logout(){
		@SuppressWarnings("rawtypes")
		SessionMap sessao = (SessionMap)ActionContext.getContext().get(ActionContext.SESSION);
		sessao.invalidate();
		return "ok";
	}


}
