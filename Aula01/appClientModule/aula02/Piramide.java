// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public class Piramide extends Figura3D
{
    double altura;
    double lado;
    
    @Override
    public double volume() {
        return this.altura * Math.pow(this.lado, 2.0) / 3.0;
    }
    
    public Piramide(final double altura, final double lado) {
        this.altura = altura;
        this.lado = lado;
    }
    
    public double getAltura() {
        return this.altura;
    }
    
    public void setAltura(final double altura) {
        this.altura = altura;
    }
    
    public double getLado() {
        return this.lado;
    }
    
    public void setLado(final double lado) {
        this.lado = lado;
    }
}
