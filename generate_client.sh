# Generate client files using newer, local swagger-codegen code
java -jar ../swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i ../alma-client-spec/swagger.json -l ruby --additional-properties gemName=alma_client

# Generate client files using current release of swagger-codegen (installed from homebrew)
#swagger-codegen generate -i https://lppiman-test.library.wisc.edu/spec/v1/swagger.json -l ruby --additional-properties gemName=lppi_manager_client
