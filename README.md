# Monster-Docker

This project contains an app directory that contains both back, front and Dockerfiles, a db directory with the database initializer and a nginx directory with the load balancer configuration file.

To start this project, download the source code, extract the archive.

Then inside the project, use : docker-compose up -d --build

After this, you can access one of the three replicas by going to http://localhost:5000/, http://localhost:5001/ in your browser.

If elements in pages are missing, that means the database may have not properly been ran, in that case run : docker-compose down, then re-run the project again.

Keep the ports 5000, 5001, 5002, 8080 on your computer opened so that this project may be accessed properly.
