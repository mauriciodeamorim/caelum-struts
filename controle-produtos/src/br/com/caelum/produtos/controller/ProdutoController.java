package br.com.caelum.produtos.controller;

import java.util.List;

import br.com.caelum.produtos.dao.ProdutoDao;
import br.com.caelum.produtos.modelo.Produto;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class ProdutoController {
	private Result result;
	
	public ProdutoController(Result result){
		this.result = result;
	}
	
	public List<Produto> lista() {
		return new ProdutoDao().lista();
	}
	
	public void adiciona(Produto produto){
		new ProdutoDao().adiciona(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
	
	public void formulario() {
	}
}
