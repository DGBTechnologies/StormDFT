# Storm Dft

A graphical interface to interact with storm dft. 


# To run the tool:

Make sure you have already installed docker on your computer and is currently running. 

Supported browsers: Google Chrome

Precondition: Remove volume and container if already exists

```
docker container stop storm_dft
docker container rm storm_dft
docker volume rm storm_dft_vol
```

Step 1: Clone the repository

```
git clone https://github.com/DGBTechnologies/StormDFT.git
```

Step 2: Build Docker Image

```
cd StormDFT 
docker build -t storm_dft:latest .
```


Step 3: Create a docker volume of working directory

```
docker volume create --driver local --opt type=none --opt device=$PWD --opt o=bind storm_dft_vol
```

Step 4: Run Docker Container

```
docker run -it -p 8081:8080 -p 5001:5000 --name storm_dft --restart unless-stopped -v storm_dft_vol:/home storm_dft:latest
```

Step 5: Open Link 

- http://127.0.0.1:8081


Note: To restart your docker container.

```
docker container restart storm_dft
```

