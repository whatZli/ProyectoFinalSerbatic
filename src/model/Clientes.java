package model;
// Generated 13-jul-2020 20:30:50 by Hibernate Tools 5.4.12.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Clientes generated by hbm2java
 */
public class Clientes implements java.io.Serializable {

	private Integer id;
	private Personas personas;
	private int puntos;
	private double saldo;
	private Set cabeceraPedidos = new HashSet(0);

	public Clientes() {
	}

	public Clientes(Personas personas, int puntos, double saldo) {
		this.personas = personas;
		this.puntos = puntos;
		this.saldo = saldo;
	}

	public Clientes(Personas personas, int puntos, double saldo, Set cabeceraPedidos) {
		this.personas = personas;
		this.puntos = puntos;
		this.saldo = saldo;
		this.cabeceraPedidos = cabeceraPedidos;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Personas getPersonas() {
		return this.personas;
	}

	public void setPersonas(Personas personas) {
		this.personas = personas;
	}

	public int getPuntos() {
		return this.puntos;
	}

	public void setPuntos(int puntos) {
		this.puntos = puntos;
	}

	public double getSaldo() {
		return this.saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	public Set getCabeceraPedidos() {
		return this.cabeceraPedidos;
	}

	public void setCabeceraPedidos(Set cabeceraPedidos) {
		this.cabeceraPedidos = cabeceraPedidos;
	}

}
