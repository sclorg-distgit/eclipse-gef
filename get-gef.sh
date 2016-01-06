#!/bin/sh

TAG=f4eada958b82a6a8c4edff8e0f12cdad47b79c28

rm -rf org.eclipse.gef-$TAG.tar.bz2
wget http://git.eclipse.org/c/gef/org.eclipse.gef.git/snapshot/org.eclipse.gef-$TAG.tar.bz2

# Remove the comedy jar-filled baseline directory (this reduces the size of the tarball by
# something like two orders of magnatude)
tar xf org.eclipse.gef-$TAG.tar.bz2
(cd org.eclipse.gef-$TAG/ && rm -rf org.eclipse.gef.baseline)
tar caf org.eclipse.gef-$TAG.tar.bz2 org.eclipse.gef-$TAG/
