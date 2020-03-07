// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public class Triangulo extends Poligono
{
    public Triangulo(final double base, final double altura) {
        super(base, altura);
    }
    
    @Override
    public double area() {
        return this.getBase() * this.getAltura() / 2.0;
    }
}
