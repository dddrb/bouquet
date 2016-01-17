var path = require('path')
var webpack = require('webpack')
var ExtractTextPlugin = require('extract-text-webpack-plugin')

module.exports = {
  entry: [
    './app/index.js'
  ],
  output: {
    path: __dirname + '../../../app/assets/',
    publicPath: '/static/',
    filename: 'javascripts/bouquet/store/bundle.js',
  },
  plugins: [
    new webpack.NoErrorsPlugin(),
    new webpack.DefinePlugin({
      '__DEV__': false,
      'process.env': {
        'NODE_ENV': JSON.stringify('production')
      }
    }),
    new ExtractTextPlugin('stylesheets/bouquet/store/bundle.css')
  ],
  module: {
    loaders: [
      {
        test: /(\.js|\.jsx)$/,
        exclude: /(node_modules)/,
        loaders: ['babel']
      },
      {
        test: /(\.scss|\.css)$/,
        loader: ExtractTextPlugin.extract('style', 'css?sourceMap&modules&importLoaders=1&localIdentName=[name]__[local]___[hash:base64:5]!postcss!sass?sourceMap!toolbox')
      }
    ]
  },
  toolbox: {
    theme: path.join(__dirname, 'app/toolbox-theme.scss')
  },
  resolve: {
    extensions: ['', '.js', '.jsx', '.json', '.scss']
  }
}
