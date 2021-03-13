import "../styles/GeneratorContainer.css";
import GeneratorForm from "./GeneratorForm";

export default function GeneratorContainer() {
    return (
        <div className="generator-container">
            <h1>Put your diet on autopilot</h1>
            <p>iMeals creates personalized meal plans based on your food preferences and schedule. Select how many meals you'd like in your weekly meal plan and create your meal plan right here in seconds.</p>
            <GeneratorForm/>
        </div>
    )
}
