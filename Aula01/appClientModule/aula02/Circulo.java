// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public class Circulo extends Figura2D
{
    double r;
    double pi;
    
    public Circulo(final double r, final double pi) {
        this.r = r;
        this.pi = pi;
    }
    
    @Override
    public double area() {
        return this.pi * Math.pow(this.r, 2.0);
    }
}
