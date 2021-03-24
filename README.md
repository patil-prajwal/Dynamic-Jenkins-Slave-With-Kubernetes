
![Jenkins With Kubernetes](https://miro.medium.com/max/883/1*vxLHUP4S_7ABWk54iglrGw.png)

# **Task-Details :**


1. _Create a container image that has Linux and other basic configuration required to run Slave for Jenkins. (Eg. Here we require **kubectl** to be configured)_

2. _When we launch the job it should automatically starts job on slave based on the label provided for dynamic approach._

3. _Create a job chain of job1 & job2 using build pipeline plugin in Jenkins._

4. **Job1** : _Pull the Github repo automatically when some developers push repo to Github and perform the following operations as:_

    **4.1** : _Create the new image dynamically for the application and copy the application code into that corresponding docker image._

    **4.2** : _Push that image to the Docker Hub (Public repository)_

    _(Github code contain the application code and Dockerfile to create a new image)_

5. **Job2** : _(Should be run on the dynamic slave of Jenkins configured with Kubernetes **kubectl** command) :_
   
    _Launch the application on the top of Kubernetes cluster performing following operations._

    **5.1** : _If launching first time then create a deployment of the pod using the image created in the previous job. Else if deployment already exists then do rollout of the existing pod making zero downtime for the user._

    **5.2** : _If Application created first time, then Expose the application. Else don’t expose it._

[For More Info Please Visit Here](https://docs.google.com/document/d/1ceg9sojZOVIj-GQNJj5W5zIc6_e1OHSKyCZ3MDIoY4c/edit)


<p align="center">
    <a href="#" alt="Jenkins"><img height="80" width="80" src="https://github.com/patil-prajwal/Tech-Stack-Icons/blob/main/Icons/jenkins.svg"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="#" alt="Kubernetes"><img height="80" width="80" src="https://github.com/patil-prajwal/Tech-Stack-Icons/blob/main/Icons/kubernetes.svg"></a>
    
  </p>


DevOps-Task/4