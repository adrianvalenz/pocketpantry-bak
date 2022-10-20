module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    fontFamily: {
      "serif": ['mrs-eaves', 'serif'],
      "sans": ['mr-eaves-sans', 'sans-serif'],
      "smallcaps": ['mrs-eaves-roman-all-petite-c', 'serif'],
    },
    extend: {
      colors: {
        warm: {
          50: '#F5EFEF',
          100: '#E8DEDE',
          200: '#DAC8C8',
          300: '#C59B9C',
          400: '#BA8788',
          500: '#9D6C6D',
          600: '#734E4E',
          700: '#523839',
          800: '#392828',
          900: '#241919',
        },
        rose: {
          50: '#FDE7E7',
          100: '#F7CFCF',
          200: '#F5B2B3',
          300: '#EB9495',
          400: '#E37879',
          500: '#D56264',
          600: '#CF4A4C',
          700: '#B33235',
          800: '#7A1A1B',
          900: '#561011',
        },
        ocean: {
          50: '#F5FEFF',
          100: '#DFFAFB',
          200: '#C3F2F4',
          300: '#8CE0E3',
          400: '#2FC5CA',
          500: '#13AFB4',
          600: '#106B6E',
          700: '#084D4F',
          800: '#063B3C',
          900: '#042E2F',
        },
      },
    },
  },
}
