# Big-Project-CI-CD-Software-on-Production

WorkFlow of Project:

<img align = "center" alt = "coding" width = "400" src = "C:\Users\Admin\Pictures\Screenshots\jenkins_workflow.png"> 


***Start -> Git Checkouting and Pulling code -> Testing -> Build Docker image and push to DockerHub -> Deploy to Production in Kubernetes -> Testing in Production

**Component of project:
    - 1 Jenkins server run on AWS cloud for Continuous Intergration &&  Continuous Deployment
    - 1 Kubernetes Cluster on your local Machine: 
        + 1 Master-Node: master.xtl run on IP 172.16.10.100  
        + 1 Worker-Node: worker1.xtl run on IP 172.16.10.101
    - 1 Nodejs application with function login with user and password are storaged at MYSQL database

<<<<<<< HEAD
=======
Software in Production 


<img align = "center" alt = "coding" width = "400" src = "C:\Users\Admin\Pictures\Screenshots\jenkins_workflow.png"> 
>>>>>>> 01044dccaed1921ecdb48854ffbd9df35f9694f6
