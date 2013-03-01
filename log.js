
var logger = (winston.Logger)({
    transports: [
      winston.transports.File({ filename: 'path/to/all-logs.log' })
    ]
    exceptionHandlers: [
      winston.transports.File({ filename: 'path/to/exceptions.log' })
    ]
  });
