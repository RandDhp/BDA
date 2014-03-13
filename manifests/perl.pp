	#This class is designed to install perl, pmtools, cpanminus and some perl modules. All of this in their last versions.

	#Definition of the class
	class perl(
		$version 	= false,
		$ensure 	= installed,
		$perl 		= 'perl',
		$pmtools 	= 'pmtools',
		$cpanminus 	= 'cpanminus'
	){
		package { $perl:
			ensure 	=> $ensure,
		}
		package { $pmtools:
			ensure 	=> $ensure,
		}
		package { $cpanminus:
			ensure 	=> $ensure,
		}
		#exec {"cpanm App::cpanoutdated":}
		#package { 'cpanoutdated':
		#	ensure 	=> installed,	
		#}
	}
	
	#Declaration of the class
	include perl