// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public class Esfera extends Figura3D
{
    double pi;
    double r;
    
    @Override
    public double volume() {
        return 4.0 * this.pi * Math.pow(this.r, 3.0) / 2.0;
    }
    
    public Esfera(final double pi, final double r) {
        this.pi = pi;
        this.r = r;
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
}
