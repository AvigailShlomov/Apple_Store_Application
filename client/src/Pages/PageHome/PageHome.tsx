import React from "react";
import ReactPlayer from "react-player";
import { useNavigate } from "react-router-dom";
import { ECategories } from "../../Enums/ECategories";
import { Cart } from "../../components/Cart/Cart";
import "./PageHome.css";

export function PageHome() {
  const navigate = useNavigate();

  return (
    <div className="homeDiv">

      <div className="macbookDiv" onClick={() => {navigate(`/category/${ECategories.mac}`);}}>
        <h1>MacBook Pro 13"</h1>
        <h3>Supercharged by M2</h3>
        <img src={process.env.PUBLIC_URL + '/pictures/home_mac_advertisement.jpeg'}alt="macbook pro"/>
      </div>

      <div className="iphoneDiv" onClick={() => {navigate(`/category/${ECategories.iphone}`);}}>
        <h1>iPhone 13</h1>
        <h3>Your new superpower</h3>
        <img src={process.env.PUBLIC_URL + '/pictures/home_iphone_advertisement.png'} alt="iphone 13"/>
      </div>
      
      <div className="ipadDiv" onClick={() => {navigate(`/category/${ECategories.ipad}`);}}>
        <h1>iPad Air</h1>
        <h3>Light. Bright. Full of Might</h3>
        <img src={process.env.PUBLIC_URL + '/pictures/home_ipad_advertisement.png'} alt="ipad air"/>
      </div>

      <div className="watchDiv" onClick={() => {navigate(`/category/${ECategories.watch}`);}}>
        <h1>Watch - Series 7</h1>
        <h3>It's our biggest display yet</h3>
        <img src={process.env.PUBLIC_URL + '/pictures/home_watch_advertisement.png'} alt="watch 7"/>
      </div>

      <div className="airpodsDiv" onClick={() => {navigate(`/category/${ECategories.airpods}`);}}>
        <img src={process.env.PUBLIC_URL + '/pictures/home_airpods_advertisement.png'} alt="airpods 3"/>
      </div>

      {/* <div className="AirpodsDiv">
          <h1>iPad Air</h1>
          <h3>Light. Bright. Full of Might</h3>
          <div className="imgDiv">
            <img
              src="https://imageio.forbes.com/specials-images/imageserve/5f8b7d1977b3017462dc735c/Apple--AirPods--AirPods-Pro--new-AirPods--MagSafe-AirPods--magnetic-AirPods--iPhone/960x0.jpg?format=jpg&width=960"
              alt=""
            />
          </div>
        </div> */}

      {/* <video
        loop
        playsInline
        className="vjs-tech"
        id="vjs_video_3_html5_api"
        tabIndex={-1}
        role="application"
        preload="auto"
        muted
        src="blob:https://www.nike.com/ab891ddd-3847-4eff-a95d-eb668414ab4b"
      ></video> */}
      {/* <img
        src="https://searchads.apple.com/asadam/us/en_us/images/homepage/cpp/homepage_iphone12_hero_large_2x.jpg"
        alt="apple img"
      /> */}

    </div>
  );
}
