module.exports = {
  server: 'dist',
  files: ['dist/*.js', 'dist/*.css',  'dist/*.html'],
  reloadDelay: 500,
  watchOptions: {
    debounceDelay: 500
  }
};
