package com.cva.proyecto.model.service;

import java.util.List;

import com.cva.proyecto.model.entidad.Compras;

public interface ICarroService {
    public void agregarProducto(Long idProducto);
    public void eliminarProducto(Long idProducto);
    public void actualizarProducto(Long id_pro, int cantidad);
    public void vaciarCarro();
    List<Compras> mostrarCarrito();
    double calcularTotal();

}
