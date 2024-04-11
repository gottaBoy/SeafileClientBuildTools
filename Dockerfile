FROM fedora

# RUN is in compiling time.
RUN dnf install git -y \
  && git clone -b dev_my https://github.com/gottaBoy/SeafileClientBuildTools.git /SeafileClientBuildTools \
  && bash /SeafileClientBuildTools/InstallDevPackagesFedora.sh

# CMD is in runtime.
CMD ["/SeafileClientBuildTools/DockerEntry.sh"]
