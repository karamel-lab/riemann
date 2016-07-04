# 'user' and 'group' define the unix user and group, respectively, 
# that the experiment will be excecuted as.
default.riemann.group = "riemann"
default.riemann.user = "riemann"

default.riemann.download.url       = 'http://aphyr.com/riemann/'
default.riemann.download.checksum  = 'ec697519e80781dc478983de04204760f2790da1715acfd233b35da071be5455'
default.riemann.download.version   = '0.2.10'

default.riemann.server.public_ips        =   ['']
default.riemann.server.private_ips		 =   ['']
default.riemann.server.bind        =   '0.0.0.0'
default.riemann.server.port        =   '5555'
default.riemann.dash.port          =   '5556'     
default.riemann.config.userfile    =   "#{node.riemann.user}/etc/user.config"

default.java.jdk_version = '7'
default.java.install_flavor = 'oracle'
default.java.oracle.accept_oracle_download_terms = true


