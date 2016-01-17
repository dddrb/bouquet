var path = require('path')
var webpack = require('webpack')
var ExtractTextPlugin = require('extract-text-webpack-plugin')
var autoprefixer = require('autoprefixer')

module.exports = {
  devtool: 'cheap-module-eval-source-map',
  entry: [
    'webpack-hot-middleware/client?path=/__webpack_hmr&timeout=20000',
    './app/index.js'
  ],
  output: {
    path: __dirname + '/assets/',
    publicPath: 'http://localhost:4000/assets/',
    filename: 'javascripts/bouquet/store/application.js',
    hot: true
  },
  plugins: [
    new webpack.optimize.OccurenceOrderPlugin(),
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NoErrorsPlugin(),
    new webpack.DefinePlugin({
      '__DEV__': true,
      'process.env': {
        'NODE_ENV': JSON.stringify('development')
      }
    }),
    new ExtractTextPlugin('stylesheets/bouquet/store/application.css')
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
  postcss: [autoprefixer],
  resolve: {
    extensions: ['', '.js', '.jsx', '.json', '.scss']
  }
}
