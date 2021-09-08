// Generated using webpack-cli https://github.com/webpack/webpack-cli

const path = require('path');

const isProduction = process.env.NODE_ENV == 'production';


const config = {
    devtool: "source-map",
    entry: '../src/js/index.mjs',
    output: {
        path: path.resolve(__dirname, '../src/js/dist'),
    },
    // plugins: [
    //     // Add your plugins here
    //     // Learn more about plugins from https://webpack.js.org/configuration/plugins/
    // ],
    module: {
        rules: [
          {
            test: /\.m?js$/,
            exclude: /(node_modules|bower_components)/,
            use: {
              loader: 'babel-loader',
              options: {
                presets: ['@babel/preset-env']
              }
            }
          }
        ]
      }, 
    // resolve: {
    //     extensions: ['.tsx', '.ts', '.js', '.mjs'],
    // },
};

module.exports = () => {
    if (isProduction) {
        config.mode = 'production';
        
        
    } else {
        config.mode = 'development';
    }
    return config;
};
