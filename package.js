var where = 'client';

Package.describe({
  name: 'lookback:entypo',
  version: '1.1.3',
  summary: 'Entypo icons packaged as SVG sprite for easy template use in Meteor.',
  git: 'http://github.com/lookback/meteor-entypo.git'
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@0.9.3');
  api.use('templating', where);
  api.imply('templating', where);

  api.addFiles('entypo.svg', where, { isAsset: true });
  api.addFiles('entypo.html', where);
});
