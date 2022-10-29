module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    './app/builders/**/*.rb'
  ],
  theme: {
    fontFamily: {
      "sans": ['proxima-nova', 'sans-serif'],
      "display": ['modern-love', 'sans-serif'],
      "subheading": ['modern-love-caps', 'sans-serif'],
    },
    extend: {
      colors: {
      },
    },
  },
}
