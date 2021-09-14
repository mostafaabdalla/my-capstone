#Retrieve an authentication token and authenticate your Docker client to your registry.
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 663119550079.dkr.ecr.us-east-1.amazonaws.com

#Build your Docker image using the following command
docker build -t capstone .

#After the build completes, tag your image so you can push the image to this repository
docker tag capstone:latest 663119550079.dkr.ecr.us-east-1.amazonaws.com/capstone:latest

#Run the following command to push this image to your newly created AWS repository:
docker push 663119550079.dkr.ecr.us-east-1.amazonaws.com/capstone:latest