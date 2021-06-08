# Simple Sample App

Simple Sample App with [Angular](https://angular.io/) as a `frontend` and [Flask](https://flask.palletsprojects.com/en/2.0.x/) as a `backend`. There's no use of any database, all data show it on the website is hardcoded on backend side. This project was made for educational purpose and figure out how an `Angular + Flask` structure can be.    

## Requirements

- NPM >= 7.16.0
- Nodejs >= 10.19.0
- Angular >= 12.0.3
- Python >= 3.0.0
- Conda >= 4.10.1

## Installation

After clone the repo, in order to install the different pieces of the website, we will need to execute the next commands,  in a separately way `frontend` and `backend`.  

### Frontend
```bash
cd frontend/
npm i
```

### Backend
```bash
cd backend/
conda env create -f environment.yml
```

## Usage

For enjoy the entire application we will need to run `frontend` on one side, which it will be listening on `localhost:4200` . And, `backend` on the other, which it will be listening on `localhost:5000`. Using the following commands: 

### Frontend
```bash
cd frontend/
ng serve
```

### Backend

```bash
cd backend/
conda active simple_app
chmod u+x run.sh
./run.sh
```
Now, we can see our website on `http://localhost:4200/`. Enjoy! 🎉

## License
[MIT](https://choosealicense.com/licenses/mit/)
