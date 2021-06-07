
// Okay the config object should take the user-params.yml spec and
// construct the appropriate configuration from it

def Config(configuration){
	def aParam = configuration['a'] + '_added';	
	def bParam = configuration['b'] + '_added';
	def cParam = configuration['c'] + '_added';

	return ([
		"a": aParam,
		"b": bParam,
		"c": cParam
	])
}
