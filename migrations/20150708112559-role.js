'use strict';

var dbm;
var type;
var fs = require('fs');
var path = require('path');

/**
  * We receive the dbmigrate dependency from dbmigrate initially.
  * This enables us to not have to rely on NODE_PATH.
  */
exports.setup = function(options) {
  dbm = options.dbmigrate;
  type = dbm.dataType;
};

exports.up = function(db, callback) {
  var filePath = path.join(__dirname + '/sqls/20150708112559-role-up.sql');
  fs.readFile(filePath, {encoding: 'utf-8'}, function(err,data){
    if (err) return callback(err);
    console.log('received data: ' + data);

    db.runSql(data, function(err) {
      if (err) return callback(err);
      callback();
    });
  });
};

exports.down = function(db, callback) {
  var filePath = path.join(__dirname + '/sqls/20150708112559-role-down.sql');
  fs.readFile(filePath, {encoding: 'utf-8'}, function(err,data){
    if (err) return callback(err);
    console.log('received data: ' + data);

    db.runSql(data, function(err) {
      if (err) return callback(err);
      callback();
    });
  });
};
