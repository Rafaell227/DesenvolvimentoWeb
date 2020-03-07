// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public class Retangulo extends Poligono implements Diagonal
{
    public Retangulo(final double base, final double altura) {
        super(base, altura);
    }
    
    @Override
    public double calculaDiagonal() {
        return 0.0;
    }
}
