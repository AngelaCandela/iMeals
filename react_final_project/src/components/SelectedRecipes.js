export default function SelectedRecipes({ title, recipes }) {   
    
    return (
        <div>
            <h4>{title}</h4>
            <ul className="mealplan-recipe">
                {recipes.map((recipe, index) => {                    
                    return  <div key={index}>
                                <img src={'http://localhost:8000/recipes/'+recipe.img} className="sneakPic" alt="img"/>
                                <a href="#">{recipe.name}</a>
                            </div>        
                })
                }
            </ul>
        </div>
    )
}
