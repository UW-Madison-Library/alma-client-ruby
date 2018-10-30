# README-SDG
The Swagger Codegen tool generates its own README.md so this file
serves as our README for additional notes.

## Generate Ruby client source from JSON specification

1. Follow the README-SDG.md in the `alma-client-spec` project to update the JSON spec.
1. Run the script to regenerate the Ruby files from the JSON spec

        ./generate_client.sh

1. Revert the alma_client.gemspec that is generated. It has a bug in it.
1. Commit the result when ready

## Run the example to retieve a user
Find a key with Alma User Read rights and run the example script:

    ALMA_API_KEY=XXX bundle exec ruby example_get_user_details.rb
