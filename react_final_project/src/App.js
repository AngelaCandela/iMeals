import './App.css';
/* import { useState, useEffect, createContext } from "react"; */
import { BrowserRouter, Route, NavLink } from "react-router-dom";
import Home from "./pages/Home";
import SignUp from "./pages/SignUp";
import LogIn from "./pages/LogIn";

function App() {
  return (
    <>
      <BrowserRouter>
        {/* <nav className="navbar bg-light d-flex align-items-end">
          <ul className="nav">
            <li className="nav-item"><NavLink className="nav-link" activeClassName="" to="/">Home</NavLink></li>
          </ul>
        </nav> */}

        <Route exact path="/" component={Home}/>
        <Route path="/signup" component={SignUp}/>
        <Route path="/login" component={LogIn}/>
      </BrowserRouter>
    </>
  );
}

export default App;
