
# This is a Dockerfile for the fuse7/fuse-apicurito-generator-rhel8:1.9 image.


## START target image fuse7/fuse-apicurito-generator-rhel8:1.9
## \
    FROM fuse7/fuse-java-openshift-rhel8:1.9


    USER root

###### START image 'fuse7/fuse-apicurito-generator-rhel8:1.9'
###### \
        # Copy 'fuse7/fuse-apicurito-generator-rhel8' image general artifacts to '/deployment/runtime.jar/' destination
        COPY \
            fuse-apicurito-generator \
            /deployment/runtime.jar/
        # Set 'fuse7/fuse-apicurito-generator-rhel8' image defined environment variables
        ENV \
            APICURITO_VERSION="1.0.0.fuse-790028-redhat-00001" \
            JAVA_APP_DIR="/deployments" 
        # Set 'fuse7/fuse-apicurito-generator-rhel8' image defined labels
        LABEL \
            com.redhat.component="fuse-apicurito-generator-openshift-rhel-8-container"  \
            description="An Apicurito generator for Fuse Projects"  \
            io.cekit.version="3.11.0"  \
            io.k8s.description="An Apicurito generator for Fuse Projects"  \
            io.k8s.display-name="Red Hat Fuse Apicurito Generator"  \
            io.openshift.tags="fuse"  \
            maintainer="Apicurito Authors <apicurio@lists.jboss.org>"  \
            summary="An Apicurito generator for Fuse Projects" 
        # Exposed ports in 'fuse7/fuse-apicurito-generator-rhel8' image
        EXPOSE 8080 8181 8778 9779
###### /
###### END image 'fuse7/fuse-apicurito-generator-rhel8:1.9'



    # Switch to 'root' user and remove artifacts and modules
    USER root
    RUN [ ! -d /tmp/scripts ] || rm -rf /tmp/scripts
    RUN [ ! -d /tmp/artifacts ] || rm -rf /tmp/artifacts
    # Define the user
    USER 185
## /
## END target image