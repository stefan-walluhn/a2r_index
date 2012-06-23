syslog = null

getInstance = () -> 
  if not syslog?
    syslog = require('node-syslog')
    syslog.init "a2r_index", syslog.LOG_PID | syslog.LOG_0DELAY, syslog.LOG_LOCAL0
  return syslog

module.exports.getInstance = getInstance

