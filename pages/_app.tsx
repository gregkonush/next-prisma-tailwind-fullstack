import GlobalStyles from './../styles/GlobalStyles';
import '@fontsource/montserrat';

const App = ({ Component, pageProps }) => (
  <>
    <GlobalStyles />
    <Component {...pageProps} />
  </>
);

export default App;
