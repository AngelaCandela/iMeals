import './App.css';
import { BrowserRouter, Route } from "react-router-dom";
import Home from "./pages/Home";
import Signup from "./pages/Signup";
import Login from "./pages/Login";
import MainPage from "./pages/MainPage";
import UserMealPlans from "./pages/UserMealPlans";
import Recipes from "./pages/Recipes";
import RecipeDetails from "./pages/RecipeDetails";


function App() {

  return (
    <>
      <BrowserRouter>        
        <Route exact path="/" component={Home}/>
        <Route path="/signup" component={Signup}/>
        <Route path="/login" component={Login}/>
        <Route path="/generator" component={MainPage}/>
        <Route path="/my-plans" component={UserMealPlans}/>
        <Route exact path="/recipes" component={Recipes}/>
        <Route path="/recipes" component={RecipeDetails}/>
      </BrowserRouter>
    </>
  );
}

export default App;
