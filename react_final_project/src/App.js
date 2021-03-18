import './App.css';
import { useState, createContext } from "react";
import { BrowserRouter, Route } from "react-router-dom";
import Home from "./pages/Home";
import Signup from "./pages/Signup";
import Login from "./pages/Login";
import MainPage from "./pages/MainPage";
import Recipes from "./pages/Recipes";

export const GlobalContext = createContext({});

function App() {

  const [token, setToken] = useState("");
  const [recipes, setRecipes] = useState([]);

  return (
    <>
      <BrowserRouter>
        <GlobalContext.Provider value={{token, setToken, recipes, setRecipes}}>
          <Route exact path="/" component={Home}/>
          <Route path="/signup" component={Signup}/>
          <Route path="/login" component={Login}/>
          <Route path="/generator" component={MainPage}/>
          <Route path="/recipes" component={Recipes}/>
        </GlobalContext.Provider>
      </BrowserRouter>
    </>
  );
}

export default App;
