// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public class Quadrado extends Poligono implements Diagonal
{
    public Quadrado(final double lado) {
        super(lado, lado);
    }
    
    @Override
    public double calculaDiagonal() {
        return 0.0;
    }
}
