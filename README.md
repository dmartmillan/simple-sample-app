# Simple Sample App

Simple Sample App was build with [Angular](https://angular.io/) as a `frontend` and [Flask](https://flask.palletsprojects.com/en/2.0.x/) as a `backend`. There's no use of any database, all data show it on the website has been hardcoded on backend side. This project was made for educational purpose and to figure out how an `Angular + Flask` structure can be.    

## Requirements
After clone the repo, it is recommended to use `Docker` to avoid any package and environment conflicts. You can use `install_docker.sh` to install [Docker](https://www.docker.com/) and [Docker compose](https://docs.docker.com/compose/) in a proper way. You can run it as: 
```bash
chmod u+x install_docker.sh
./install_docker.sh
```
***

In case you didn't choose `Docker`, you will have to install these packages:
- NPM >= 7.16.0
- Nodejs >= 10.19.0
- Angular >= 12.0.3
- Python >= 3.0.0
- Conda >= 4.10.1

In addition, `install_packages.sh` script can help you to install some of them: 
```bash
chmod u+x install_packages.sh
./install_packages.sh
```
## Installation and Usage
If we use `Docker`, we will just have to execute: 
 
```bash
docker-compose -f docker-compose.yml up --build
```
***

If you don't use `Docker`,  in order to install the different pieces of the website, we will need to execute the next commands,  in a separate terminal `frontend` and `backend`.  

#### Frontend - client

```bash
cd frontend/
npm i
ng serve # it will be listening on port 4200
```

#### Backend - server

```bash
cd backend/
conda env create -f environment.yml
conda active simple_app
chmod u+x run.sh
./run.sh # it will be listening on port 5000
```

Now, we can see our website on `http://localhost:4200/`. Enjoy! 🎉

## License
[MIT](https://choosealicense.com/licenses/mit/)
