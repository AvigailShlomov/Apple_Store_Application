import React from 'react'
import './Footer.css'
import { FaApple } from 'react-icons/fa';

export function Footer() {
  return (
    <div className='footerDiv'>
      <hr />
      <h5 id='Copyright'>Copyright © 2022 Avigail and Ayelet All rights reserved</h5>
      <div id='apple'>
        <FaApple style={{fontSize: '25px'}}/>
      </div>
    </div>
  )
}
