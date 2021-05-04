# Open Closed

## Principio de Abierto-Cerrado

Este principio indica que las clases tienen que estar cerradas a modificación, pero abiertas a su extensión.

Su finalidad es proteger el códígo que ya funciona, evitando que se tenga que reescribir todo el código siempre cada vez que se cambien los requerimientos.

Un posible ejemplo sería una clase que calcula el area de un rectangulo. El diseño de esta clase funciona correctamente, pero no permite el calculo para otro tipo de figuras, como un circulo.
Una posible solución sería crear una clase base y una función que calcula el area, ya que solo haria falta que esta preguntase que tipo de figura és.


    interface IsShape{
        function area():number;
    }

    class Rectangle implements IsShape{
        width: number;
        height: number;
        function area(){
            return this.width * this height;
        }
    }

    class Triangle implements IsShape{
        width: number;
        height: number;
        function area(){
            return this.width * this height/2;
        }
    }
    