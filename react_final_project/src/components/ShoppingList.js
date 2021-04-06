import React from 'react';
import "../styles/ShoppingList.css";

export default function ShoppingList({ ingredients, disabled, setDisabled, handlePrint }) {
  
  return (
    <div className="backdrop" disabled={disabled}>
      <div className="shopping-list-card" disabled={disabled}>
          <h4 className="shopping-list-title">Shopping List</h4>
          <button type="button" className="close-btn" onClick={() => setDisabled(true)}>X</button>
          <ul className="shopping-list">
              {
                  ingredients.map((ingredient, index) => {
                      return  <li key={index}><strong>{ingredient.ingredient}</strong>   {ingredient.amount} {ingredient.unit}</li>
                  })
              }
          </ul>
          <button type="button" className="shopping-list-btn" onClick={handlePrint}>Download</button>
      </div>
    </div>
  )
}

export class ComponentToPrint extends React.PureComponent {
  
  render() {
    return(
      <div className="to-print-container">
        <h1 className="mb-4">Shopping List</h1>            
        <ul className="to-print-list">
            {
                this.props.ingredients.map((ingredient, index) => {
                    return  <li className="to-print-list-item" key={index}>
                              <strong>{ingredient.ingredient}</strong>   {ingredient.amount} {ingredient.unit}
                            </li>
                    
                })
            }
        </ul>
      </div>
    );
  }
}