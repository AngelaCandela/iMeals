import { useState, useEffect } from "react";

function Recipes() {    

    const [recipes, setRecipes] = useState([]);
    const token = localStorage.getItem('token');
    const config = {
        headers: {
          'Authorization': `Bearer ${token}`
        }
      };

    useEffect(() => {
        fetch('http://localhost:8000/recipes', config)
        .then(response => {
            if(!response.ok)
                throw new Error(`Something went wrong: ${response.statusText}`);
            
            console.log(response.statusText);
            return response.json();
        })
        .then(response => {
            console.log('You are inside the recipes page', response);
            setRecipes(response);
        })
        .catch(error => console.log('Error: ', error)
        );
        return () => {
            
        }
    }, [])
    
  return (      
    <ol>
        {recipes.map((recipe, index) => {
            return <li key={index}>
                        <h4>{recipe.name}</h4>
                        <p>{recipe.method}</p>
                        <ol>
                            {recipe.ingredients.map((ingredient, index) => {
                                    return <li key={index}>{ingredient.ingredient}, {ingredient.amount}, {ingredient.unit}</li>
                                })
                            }
                        </ol>
                    </li>
            })
        }      
    </ol>
  );
}

export default Recipes;