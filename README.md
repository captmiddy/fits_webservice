# fits_webservice
Dockerize FITS Web Service

This build will deploy the FITS Web Service into a Tomcat container. The container exposes port 8080 for Tomcat.

FITS is available at http://[DOCKERIP]:8080/fits
The uploads interface is at http://[DOCKERIP]:8080/fits/upload.jsp

More details can be found at http://projects.iq.harvard.edu/fits

This build is offered As-Is with no support. 

# Build Features:
There is a volume called /processing, if you attach local storage to this you can put files into the folder and
then you can use the URL to examine them like follows: http://[DOCKERIP]:8080/fits/examine?file=/processing/[FILENAME]

The webapps folder is exposed as a volume, if you wish to download a newer version of the FITS Web Service you could mount
this folder and place your war file within it.  This would replace the FITS package currently deployed.  Do this only if you 
know what you are doing.  
