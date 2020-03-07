// 
// Decompiled by Procyon v0.5.36
// 

package aula02;

public class Teste3D extends Figura3D
{
    @Override
    public double volume() {
        return 0.0;
    }
    
    public static void main(final String[] args) {
        final Cubo cubo = new Cubo(2.0);
        final Esfera esfera = new Esfera(3.14, 10.0);
        final Cilindro cilindro = new Cilindro(3.14, 10.0, 5.0);
        final Piramide piramide = new Piramide(10.0, 2.0);
        System.out.println(cubo.volume());
        System.out.println(esfera.volume());
        System.out.println(cilindro.volume());
        System.out.println(piramide.volume());
    }
}
