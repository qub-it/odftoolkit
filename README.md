# Why we forked odftoolkit?

We are using odfdom and simple-odf in qub-docs but this projects dependend of Xerces which
is incompatible with other things we have in FenixEDU. 

To fix that we've created a fork that contains a new submoduled called repackaged, were the
source code of both of the submodules was copied into that and then applied the maven shade
plugin to have the xerces source code repackaged.

# How to build?

Since this needed to be built with java8 and at qubIT we are already using java 11 we've 
added a build.sh that uses docker to build automatically use java8
