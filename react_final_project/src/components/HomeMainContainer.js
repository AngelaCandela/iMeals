import "../styles/HomeMainContainer.css";
import HomeNav from "../components/HomeNav";
import HomeTopContainer from "../components/HomeTopContainer";
import HomeBottomContainer from "../components/HomeBottomContainer";
import Footer from '../components/Footer';

export default function HomeMainContainer() {
    return (
        <div className="home-main-container">
            <HomeNav />
            <HomeTopContainer />
            <HomeBottomContainer />
            <Footer />
        </div>
    )
}
