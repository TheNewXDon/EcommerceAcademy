# Queries per creare i Roles su database

- INSERT INTO `roles` (`id`, `name`) VALUES ('1', 'ROLE_USER');
- INSERT INTO `roles` (`id`, `name`) VALUES ('2', 'ROLE_MODERATOR');
- INSERT INTO `roles` (`id`, `name`) VALUES ('3', 'ROLE_ADMIN');

# Utilizzo applicazione:

>  Per registrare nuovo user inviare una POST request a "localhost:8080/api/auth/signup" usando il seguente body (JSON):

{
"username" : "tuoUsername",
"email" : "tuaEmail@gmail.com",
"password" : "Password1!",
"roles" : "user"
}

> Per fare login inviare una POST request a "localhost:8080/api/auth/signin" usando il seguente body (JSON) :

{
"username" : "tuoUsername",
"password" : "Password1!"
}