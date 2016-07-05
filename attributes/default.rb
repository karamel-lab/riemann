# 'user' and 'group' define the unix user and group, respectively, 
# that the experiment will be excecuted as.
default.riemann.group = "riemann"
default.riemann.user = "riemann"
default.riemann.install_dir = "/usr/local/riemann"
default.riemann.config_dir    =   "#{node.riemann.install_dir}/etc"
default.riemann.config_file    = "#{node.riemann.config_dir}/riemann.config"
default.riemann.config_userfile    =   "#{node.riemann.config_dir}/user.config"

default.riemann.dashboard.config_dir    =   "/opt/riemann/dash"

default.riemann.download.url       = 'http://aphyr.com/riemann/'
default.riemann.download.checksum  = 'ec697519e80781dc478983de04204760f2790da1715acfd233b35da071be5455'
default.riemann.download.version   = '0.2.10'

default.riemann.server.public_ips        =   ['']
default.riemann.server.private_ips		 =   ['']
default.riemann.server.bind        =   '0.0.0.0'
default.riemann.server.port        =   '5555'
default.riemann.dash.port          =   '5556'     


node.default.java.jdk_version  = 7


