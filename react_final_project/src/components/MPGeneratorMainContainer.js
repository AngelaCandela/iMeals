import "../styles/MPGeneratorMainContainer.css";
import Nav from "../components/Nav";
import GeneratorContainer from "../components/GeneratorContainer";
import Footer from '../components/Footer';

export default function MPGeneratorMainContainer() {
    return (
        <div className="generator-main-container">
            <Nav />
            <GeneratorContainer />
            <Footer />
        </div>
    )
}
