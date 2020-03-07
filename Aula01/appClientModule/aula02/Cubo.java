// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public class Cubo extends Figura3D
{
    double aresta;
    
    @Override
    public double volume() {
        return Math.pow(this.aresta, 3.0);
    }
    
    public Cubo(final double aresta) {
        this.aresta = aresta;
    }
}
