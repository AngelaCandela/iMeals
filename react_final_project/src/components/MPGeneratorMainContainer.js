import "../styles/MPGeneratorMainContainer.css";
import { useState, createContext } from "react";
import Nav from "../components/Nav";
import GeneratorContainer from "../components/GeneratorContainer";
import MealPlan from '../components/MealPlan';
import Footer from '../components/Footer';

export const MPContext = createContext({});

export default function MPGeneratorMainContainer() {
    
    let dietSet = {
        anything: false,
        vegetarian: false,
        vegan: false,
        glutenfree: false,
        dairyfree: false,
    }

    const [diets, setDiets] = useState(dietSet);
    const [breakfastsNum, setBreakfastsNum] = useState(1);
    const [mainMealsNum, setMainMealsNum] = useState(1);
    
    const [breakfasts, setBreakfasts] = useState([]);
    const [mainMeals, setMainMeals] = useState([]);
    const [disabled, setDisabled] = useState(true);
    
    return (
        <div className="generator-main-container">
            <Nav />
            <MPContext.Provider value={{diets, setDiets, breakfastsNum, setBreakfastsNum, mainMealsNum, setMainMealsNum, breakfasts, setBreakfasts, mainMeals, setMainMeals, disabled, setDisabled}}>
                <GeneratorContainer />
                <MealPlan />
            </MPContext.Provider>
            <Footer />
        </div>
    )
}
