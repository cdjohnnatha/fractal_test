# Fractal Test
Fractal Tecnologia back-end test.

---

### Requirements ###

* **[Docker 17.05.0-ce](https://www.docker.com/)**
* **[docker-compose 1.11.2](https://docs.docker.com/compose/)**

### Installation ###

  - user@user:~/path_to_cloned_folder$ **make build**
  - user@user:~/path_to_cloned_folder$ **make create-db**
  - user@user:~/path_to_cloned_folder$ **make yarn-install**
  - user@user:~/path_to_cloned_folder$ **make up**
  - **Manually install the dependencies that may have not been installed by the above command.**

1. If you want to access swagger doc, run:
  - access in your browser: `http://localhost:3000/v1/docs`

2. If you want to run rspec specs, type:
  - user@user:~/path_to_cloned_folder$ **make rspec-tests**

3. If you want to run tests of best practices (rubocop and fasterer):
  - user@user:~/path_to_cloned_folder$ **make tests**

---

## API Routes ##

### Author ###
|   Action                                 | Method    | URL                                               
| -----------------------------------------|-----------|----------------------------------------------------- 
|    Swagger Docs                          |   `GET`   | /v1/docs(.:format)              
|    List authors                          |   `GET`   | /v1/authors(.:format)           
|    List authors searching by string      |   `GET`   | /v1/authors?starts_with=<letter>(.:format)           
|    Create author                         |   `POST`  | /v1/authors(.:format)           
|    Read author                           |   `GET`   | /v1/authors/:id(.:format)       
|    Update product                        |   `PATCH` | /v1/authors/:id(.:format)       
|    Update product                        |   `PUT`   | /v1/authors/:id(.:format)       
|    Delete author                         |   `DELETE`| /v1/authors/:id(.:format)       
|    List books of one author              |   `GET`   | /v1/authors/:id/books(.:format) 


---

## Contributors

> Danilo Assis Nobre dos Santos Silva ([daniloanobre](https://github.com/daniloanobre)) silva.danilo.nobre@gmail.com

---
