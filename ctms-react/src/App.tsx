import './App.css';
import Home from './pages/Home';
import Nav from './components/nav/Nav';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Tornei from './pages/Tornei';
import Torneo from './pages/Torneo';
function App() {
  return (
    <BrowserRouter> 
      <Routes> 
        <Route path="/" element={<Nav />}>
          <Route index element={<Home />} />
          <Route path='/tornei' element={<Tornei />}/>
          <Route path="/torneo/:id" element={<Torneo />} />
        </Route> 
      </Routes> 
    </BrowserRouter>

  );
}

export default App;