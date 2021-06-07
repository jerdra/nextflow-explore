nextflow.enable.dsl = 2;

// params.UserObject is our configuration
// lets verify that this exists

if (!params.UserObject){
    log.error("parameter file not provided or malformed!");
    System.exit(0);
}

// Okay now that we have UserObject available lets construct our base configuration

// This demo shows that we can import functions/Classes from other groovy files
include { Config } from './config.groovy'
def res = Config(params.UserObject);
params.config = res;

// Show that local processes have access to our updated params
process printConfig(){

    echo true

    input:
    val(a)

    output:
    val(a)

    shell:
    '''
    echo "!{params.config.a}"
    '''
}

// Use params to hide the parent context
include { runModule } from './module.nf' params( config: params.config.b )

// Use addParams to supplement the parent context
// include { runModule } from './module.nf' addParams( config: params.config.b )

workflow {

main:
    printConfig(2)
    runModule()
}


// Done!

