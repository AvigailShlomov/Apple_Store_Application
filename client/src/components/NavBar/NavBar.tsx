import "./NavBar.css";
import { FaSistrix } from "react-icons/fa";
import { useNavigate } from 'react-router-dom';
import { ECategories } from "../../Enums/ECategories";
import { useContext } from "react";
import { UserContext } from "../../contexts/UserContext";

export function NavBar() {
  const { user, setUser } = useContext(UserContext);
  const navigate = useNavigate();

  function MouseOver(event: any) {
    // event.target.style.fontSize = 'xx-large';
    // event.target.style.fontWeight = '900';
    event.target.style.cursor = 'pointer';
    event.target.style.color = 'white';
    // event.target.style.backgroundColor = 'white'
    // console.log(event.target);
    // console.log(event);


  }
  function MouseOut(event: any){
    event.target.style.color = 'rgb(200, 200, 200)';
  }

  function ToggleMenu(event: any){
    (document.querySelector('#humburger') as HTMLElement).classList.toggle('shown');
  }

  function HumburgerLinksClicked(event: any, path: string){
    (document.querySelector('#humburger') as HTMLElement).classList.toggle('shown');
    navigate(path);
  }

  

  return (
    <div className="navBarDiv">
      <div className="navBar">
          <div className="logoDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/`)}}>
              {/* <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1667px-Apple_logo_black.svg.png" alt=""/> */}
              <img src={process.env.PUBLIC_URL + '/apple_logo.png'} alt=""/>
          </div>
          {/* <span className="ac-gn-link-text">Apple</span> */}

          <div className="linksDiv">
              {/* <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut}>Store</div> */}
              <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/category/${ECategories.mac}`)}}>Mac</div>
              <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/category/${ECategories.ipad}`)}}>iPad</div>
              <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/category/${ECategories.iphone}`)}}>iPhone</div>
              <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/category/${ECategories.watch}`)}}>Watch</div>
              <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/category/${ECategories.airpods}`)}}>AirPods</div>
              <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/category/${ECategories.accessories}`)}}>Accessories</div>
              <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/support`)}}>Support</div>
              <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/signin`)}}>Sign in</div>            
          </div>
          <div className="menuDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={ToggleMenu}>
            <span className="material-symbols-outlined">menu</span>
          </div>

          <div className="iconsDiv">
            <div className="accountIconDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/user/${user?.username}`)}}>
                <span className="material-symbols-outlined">account_circle</span>
            </div>
            {/* <div className="searchIconDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} >
                <span className="material-symbols-outlined">search</span>
            </div> */}
            <div className="cartIconDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/cart`)}}>
                <span className="material-symbols-outlined">shopping_bag</span>
            </div>
          </div>
      </div>

      {/* ---------------------------- Humburger ---------------------------- */}
      
      <div id="humburger" className="hamburgerMenuDiv">
        <div className="linksHumburgerDiv">
              {/* <div className="navLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut}>Store</div> */}
              <div className="menuLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{HumburgerLinksClicked(event, `/category/${ECategories.mac}`)}}>Mac<span className="material-symbols-rounded">arrow_forward_ios</span></div>
              <hr />
              <div className="menuLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{HumburgerLinksClicked(event, `/category/${ECategories.ipad}`)}}>iPad<span className="material-symbols-rounded">arrow_forward_ios</span></div>
              <hr />
              <div className="menuLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{HumburgerLinksClicked(event, `/category/${ECategories.iphone}`)}}>iPhone<span className="material-symbols-rounded">arrow_forward_ios</span></div>
              <hr />
              <div className="menuLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{HumburgerLinksClicked(event, `/category/${ECategories.watch}`)}}>Watch<span className="material-symbols-rounded">arrow_forward_ios</span></div>
              <hr />
              <div className="menuLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{HumburgerLinksClicked(event, `/category/${ECategories.airpods}`)}}>AirPods<span className="material-symbols-rounded">arrow_forward_ios</span></div>
              <hr />
              <div className="menuLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{HumburgerLinksClicked(event, `/category/${ECategories.accessories}`)}}>Accessories<span className="material-symbols-rounded">arrow_forward_ios</span></div>
              <hr />
              <div className="menuLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{HumburgerLinksClicked(event, `/support`)}}>Support<span className="material-symbols-rounded">arrow_forward_ios</span></div>
              <hr />
              <div className="menuLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{HumburgerLinksClicked(event, `/signin`)}}>Sign in<span className="material-symbols-rounded">arrow_forward_ios</span></div>            
              {/* <div className="menuLinkDiv" onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={()=>{navigate(`/register`)}}>Register<span className="material-symbols-rounded">arrow_forward_ios</span></div>             */}
          </div>

      </div>
    </div>
  )
}
