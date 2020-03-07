// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public abstract class Poligono extends Figura2D
{
    public double base;
    public double altura;
    
    public Poligono(final double base, final double altura) {
        this.setBase(base);
        this.setAltura(altura);
    }
    
    @Override
    public double area() {
        return this.getAltura() * this.getBase();
    }
    
    public double getBase() {
        return this.base;
    }
    
    public void setBase(final double base) {
        this.base = base;
    }
    
    public double getAltura() {
        return this.altura;
    }
    
    public void setAltura(final double altura) {
        this.altura = altura;
    }
}
