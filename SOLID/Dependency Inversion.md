# Dependency Inversion 

## Inversión de la dependencia.

Los modulos de alto nivel, no deven de depender de los modulos de bajo nivel.
Las implemetanciones concretas, no deben de depender de otras implementaciones concretas. Con ello se consigue reducir el desacople entre el sistema de software.


    class Repository{
        function getData(){
            let data = MongoDB.find({});
            //let data = Mysql.search({});
            return data;
        }
    }

    class Controller{
        //No sabe de donde viene data
        let data = Repository.getData();
        {...}
    }