dsio is a command line tool for Google Cloud Datastore. This image includes golang and dsio is the entrypont. More info about dsio at the [dsio GitHub repo](https://github.com/nshmura/dsio).

This image publishes a volume called `/workdir` to be used as the working directory for dsio data and conf files.

Instructions:

1. Create a work directory somewhere in your file system
2. Create a Google Cloud Platform service account and store the JSON keys file in a file named `keys.json` in your workdir at root level
3. Run dsio with `docker run -it --rm -v /path/to/your/workdir:/workdir ggalmazor/dsio`

Example: List all kinds
`docker run -it --rm -v /path/to/your/workdir:/workdir ggalmazor/dsio query --project-id some-project-id 'SELECT * FROM __kinds__'`

