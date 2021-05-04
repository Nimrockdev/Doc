# Single Responsibility

## Principio de responsabilidad única

Este principio indica que cada clase debería de tener una única responsabilidad.

Un posible ejemplo es en una clase que crea un usuario nuevo, pero tambien encripta la contraseña.
La lógica de la creación de usuario y la lógica de la encriptación deberian de estar separadas. De esta manera la clase que crea el usuario delega en la clase que crea encripta la contraseña.


    class userRegistry{
        function createUser(email, pass){
            let encriptedPass = PasswordEncrypted.encrypt(pass);
            const newUser = new User(email, encriptedPass);
            UserRepository.saveToDatabase(newUser);
        }
    }

    class PasswordEncrypter{
        static function encrypt(pass){
            let salt = bcrypt.genSaltSync(10);
            let encriptedPassword = bcrypt.hashSync(pass, salt);
            return encriptedPassword;
        }
    }