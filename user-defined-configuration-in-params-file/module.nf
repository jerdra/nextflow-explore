
process printData{

    echo true

    input:
    val(a)

    output:
    val(a)

    shell:
    '''
    echo !{params}
    '''
}


workflow runModule{
    printData(2)
}
