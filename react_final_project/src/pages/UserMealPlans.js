import "../styles/UserMealPlansList.css";
import Nav from '../components/Nav';
import UserMealPlansList from '../components/UserMealPlansList';
import Footer from '../components/Footer';

function UserMealPlans() {
    
  return (
    <div className="user-mealplans-main-container">
        <Nav />
        <UserMealPlansList />        
        <Footer className="user-mealplans-footer"/>
    </div>
  );
}

export default UserMealPlans;