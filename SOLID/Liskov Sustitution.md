# Liskov Sustitution

## Principio de sustituciion de Liskov

Toda clase que sea heredada de una clase, debe de poderse utilizar como si fuese la clase base. Es decir, quién utilice la clase base, no debe de comportarse de forma diferente utilizando cualquiera de sus descendientes.

    interface IFly{
        function fly():void;
    }

    interface ISwim{
        function swim():void;
    }

    interface ICuack{
        function cuack():void;
    }

    class Duck implements IFly, ISwim, ICuack{
        function fly(){}
        function swim(){}
        function cuack(){}
    }

    class RubberDuck implements IFly, ISwim, ICuack{
        function swim(){}
        function cuack(){}
    }
