import React from 'react'
import './PageSupport.css'

export function PageSupport() {

  function openLink (event: any, link: string){
    window.open(link,'mywindow');
    // window.open('newurl.html','mywindow');
  }

  return (
    <div className='supportDiv'>
      <h1>CONTACT US</h1>

      <div className='contactTypesDiv'>
      {/* <div className='contactDiv' onClick={(event)=>{openLink(event, "")}}> */}
      <div className='contactDiv'>
          <span className="material-symbols-rounded">phone_iphone</span>
          <h3>call us</h3>
          <h4>050-1234567</h4>
          <h4>9:00 - 18:00</h4>
        </div>
        <div className='contactDiv' onClick={(event)=>{openLink(event, "mailto:support@apple.com")}}>
          <span className="material-symbols-rounded">mail</span>
          <h3>mail to</h3>
          <h4>support@apple.com</h4>
          {/* <a href="mailto:support@apple.com" target={"_blank"}>support@apple.com</a> */}
          <h4>24/7</h4>
        </div>
        <div className='contactDiv' onClick={(event)=>{openLink(event, "https://wa.me/972508936107")}}>
          <span className="material-symbols-rounded">chat</span>
          <h3>chat with us</h3>
          <h4>support@apple.com</h4>
          {/* <a href="https://wa.me/972508936107" target={"_blank"}>050-8936107</a> */}
          <h4>8:00 - 20:00</h4>
        </div>
        <div className='contactDiv' onClick={(event)=>{openLink(event, "https://goo.gl/maps/oji7ECD2K4QZ8mex7")}}>
          <span className="material-symbols-rounded">location_on</span>          
          <h3>meet us at</h3>
          <h4>support@apple.com</h4>
          {/* <a href="https://goo.gl/maps/oji7ECD2K4QZ8mex7" target={"_blank"}>open in google maps</a> */}
          <h4>Maskit 12 Herzliya</h4>
        </div>

        {/* <div className="mapouter"><div className="gmap_canvas"><iframe width="300" height="300" id="gmap_canvas" src="https://maps.google.com/maps?q=%D7%9E%D7%92%D7%93%D7%9C%20%D7%A8%D7%95%D7%92%D7%95%D7%91%D7%99%D7%9F-%D7%AA%D7%93%D7%94%D7%A8%20%D7%A8%D7%97%D7%95%D7%91,%20%D7%93%D7%A8%D7%9A%20%D7%9E%D7%A0%D7%97%D7%9D%20%D7%91%D7%92%D7%99%D7%9F%2011,%20%D7%A8%D7%9E%D7%AA%20%D7%92%D7%9F&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies-to.org">123movies</a><br><style>.mapouter{position:relative;text-align:right;height:300px;width:300px;}</style><a href="https://www.embedgooglemap.net"></a><style>.gmap_canvas {overflow:hidden;background:none!important;height:300px;width:300px;}</style></div></div> */}

      </div>

    </div>
  )
}
