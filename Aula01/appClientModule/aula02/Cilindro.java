// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public class Cilindro extends Figura3D
{
    double pi;
    double r;
    double altura;
    
    @Override
    public double volume() {
        return this.pi * Math.pow(this.r, 2.0) * this.altura;
    }
    
    public Cilindro(final double pi, final double r, final double altura) {
        this.pi = pi;
        this.r = r;
        this.altura = altura;
    }
    
    public double getPi() {
        return this.pi;
    }
    
    public void setPi(final double pi) {
        this.pi = pi;
    }
    
    public double getR() {
        return this.r;
    }
    
    public void setR(final double r) {
        this.r = r;
    }
    
    public double getAltura() {
        return this.altura;
    }
    
    public void setAltura(final double altura) {
        this.altura = altura;
    }
}
