// Generated by CoffeeScript 1.4.0
(function() {
  var CSON, coffee, fsUtil, js2coffee, pathUtil, wait;

  coffee = require('coffee-script');

  js2coffee = require('js2coffee');

  fsUtil = require('fs');

  pathUtil = require('path');

  wait = function(delay, fn) {
    return setTimeout(fn, delay);
  };

  CSON = {
    parseFile: function(filePath, opts, next) {
      var result,
        _this = this;
      if ((opts != null) === true && (next != null) === false) {
        next = opts;
        opts = null;
      }
      opts || (opts = {});
      filePath = pathUtil.resolve(filePath);
      if (/\.(js|coffee)$/.test(filePath)) {
        try {
          delete require.cache[filePath];
          result = require(filePath);
          delete require.cache[filePath];
        } catch (err) {
          return next(err, result);
        } finally {
          return next(null, result);
        }
      } else if (/\.(json|cson)$/.test(filePath)) {
        fsUtil.readFile(filePath, function(err, data) {
          var dataStr;
          if (err) {
            return next(err);
          }
          dataStr = data.toString();
          return _this.parse(dataStr, opts, next);
        });
      } else {
        err = new Error("CSON.parseFile: Unknown extension type for " + filePath);
        next(err);
      }
      return this;
    },
    parseFileSync: function(filePath, opts) {
      var data, dataStr, result;
      opts || (opts = {});
      filePath = pathUtil.resolve(filePath);
      if (/\.(js|coffee)$/.test(filePath)) {
        try {
          delete require.cache[filePath];
          result = require(filePath);
          delete require.cache[filePath];
          return result;
        } catch (err) {
          return err;
        }
      } else if (/\.(json|cson)$/.test(filePath)) {
        data = fsUtil.readFileSync(filePath);
        if (data instanceof Error) {
          result = data;
        } else {
          dataStr = data.toString();
          result = this.parseSync(dataStr, opts);
        }
        return result;
      } else {
        err = new Error("CSON.parseFileSync: Unknown extension type for " + filePath);
        return err;
      }
    },
    parse: function(src, opts, next) {
      var _this = this;
      if ((opts != null) === true && (next != null) === false) {
        next = opts;
        opts = null;
      }
      opts || (opts = {});
      wait(0, function() {
        var result;
        result = _this.parseSync(src, opts);
        if (result instanceof Error) {
          return next(result);
        } else {
          return next(null, result);
        }
      });
      return this;
    },
    parseSync: function(src, opts) {
      var result, _ref;
      opts || (opts = {});
      if ((_ref = opts.sandbox) == null) {
        opts.sandbox = true;
      }
      try {
        result = JSON.parse(src);
      } catch (err) {
        try {
          result = coffee["eval"](src, opts);
        } catch (err) {
          result = err;
        }
      }
      return result;
    },
    stringify: function(obj, next) {
      var _this = this;
      wait(0, function() {
        var result;
        result = _this.stringifySync(obj);
        if (result instanceof Error) {
          return next(result);
        } else {
          return next(null, result);
        }
      });
      return this;
    },
    stringifySync: function(obj) {
      var result, src;
      try {
        src = "var result = " + (JSON.stringify(obj));
        result = js2coffee.build(src);
        result = result.replace(/^\s*result\s*\=\s/, '');
        if (typeof obj === 'object') {
          if (!Array.isArray(obj)) {
            result = '{\n' + result + '\n}';
          }
        }
      } catch (err) {
        result = err;
      }
      return result;
    }
  };

  module.exports = CSON;

}).call(this);