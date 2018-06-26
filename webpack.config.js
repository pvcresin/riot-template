const path = require('path')
const webpack = require('webpack')

module.exports = {
	context: path.join(__dirname, './src'),
	entry: './index.js',
	output: {
		path: path.join(__dirname, './'),
		filename: 'index.js'
	},
	devServer: {
		contentBase: path.join(__dirname, './'),
		hot: true
	},
	module: {
		rules: [
			{
				test: /\.tag$/,
				exclude: /node_modules/,
				use: {
					loader: 'riot-tag-loader',
					options: {
						hot: true,
						sourcemap: false,
						template: 'pug',
						type: 'es6',
						style: 'scss'
					}
				}
			}
		]
	},
	resolve: {
		extensions: ['.js', '.tag']
	},
	plugins: [new webpack.HotModuleReplacementPlugin()]
}
