# Testing how to construct a broader configuration spec from user -params-file

This demo shows how one can specify a basic custom set of `params` for nextflow to use by first importing a user-provided `-params-file` then using that to build the pipeline's final set of `params`. We use a `config.groovy` provided function to build our target pipeline configuration
