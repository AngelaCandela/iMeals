import "../styles/RecipeDetailsMainContainer.css"
import Nav from "./Nav";
import RecipeSidebar from "./RecipeSidebar";
import RecipeContent from "./RecipeContent";
import Footer from "./Footer";

export default function RecipeDetailsMainContainer() {
    return (
        <div className="recipe-details-main-container">
            <Nav />
            <div className="recipe-details-content">
                <RecipeContent />
                <RecipeSidebar />                
            </div>
            <Footer />
        </div>
    )
}