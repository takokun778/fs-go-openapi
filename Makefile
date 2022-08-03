.PHONY: gen

gen:
	@oapi-codegen -old-config-style -generate types,chi-server,client -package api ./doc/openapi.yaml > ./api/api.gen.go
gen2:
	@oapi-codegen -old-config-style -generate types -package api ./doc/openapi.yaml > ./api/type.gen.go && \
	oapi-codegen -old-config-style -generate chi-server -package api ./doc/openapi.yaml > ./api/server.gen.go && \
	oapi-codegen -old-config-style -generate client -package api ./doc/openapi.yaml > ./api/client.gen.go
