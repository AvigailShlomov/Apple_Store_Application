import React from 'react'
import { Outlet, useNavigate } from 'react-router-dom'
import './PageCategory.css'

export function PageCategory() {

  return (
    <div className='categoryDiv'>
      <Outlet/>
    </div>
  )
}
