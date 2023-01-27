gipod: shacl
	./shacl/bin/shaclvalidate.sh -datafile gipod-data.ttl -shapesfile gipod-shacl.ttl

test: shacl
	./shacl/bin/shaclvalidate.sh -datafile instance-data.ttl -shapesfile ontology.ttl

shacl:
	# Download TopBraid SHALC validator.
	rm -f shacl
	wget https://repo1.maven.org/maven2/org/topbraid/shacl/1.4.2/shacl-1.4.2-bin.zip
	unzip shacl-1.4.2-bin.zip
	rm shacl-1.4.2-bin.zip
	ln -s shacl-* shacl
	chmod +x shacl/bin/shaclvalidate.sh


# For performance and debugging ux, no need to process old suffix rules.
.SUFFIXES: 
