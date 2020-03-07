// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

import java.util.ArrayList;

public class Geometria extends Figura2D
{
    @Override
    public double area() {
        return 0.0;
    }
    
    public static void main(final String[] args) {
        final Circulo circulo = new Circulo(10.0, 3.14);
        final Losango losango = new Losango(10.0, 5.0);
        final Quadrado quadrado = new Quadrado(5.0);
        final Retangulo retangulo = new Retangulo(10.0, 10.0);
        final Triangulo triangulo = new Triangulo(5.0, 2.0);
        final Trapezio trapezio = new Trapezio(15.0, 2.0);
        final ArrayList<Figura2D> figuras = new ArrayList<Figura2D>();
        figuras.add(circulo);
        figuras.add(losango);
        figuras.add(quadrado);
        figuras.add(retangulo);
        figuras.add(triangulo);
        figuras.add(trapezio);
        System.out.println(circulo.area());
        System.out.println(losango.area());
        System.out.println(quadrado.area());
        System.out.println(retangulo.area());
        System.out.println(triangulo.area());
        System.out.println(trapezio.area());
    }
}
