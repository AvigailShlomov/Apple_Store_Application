import React from 'react'
import { useNavigate, useParams } from 'react-router-dom';
import { ECategories } from '../../Enums/ECategories';
import { environments } from '../../evironments/environments';
import "./Card.css"

export function Card(props:{id: number, category: ECategories,newFlag: boolean, nameProduct: string, pictureURL: string, price: number, salePrice: number | null}) {
let {id, category, newFlag, nameProduct, pictureURL, price, salePrice} = {...props};
const navigate = useNavigate();

// function chooseCard(){

//   navigate(`/category/${category}/${id}`);
// }
const baseUrl = environments.API_URL;

  return (
    // <div className='cardDiv' onClick={chooseCard}>
    <div className='cardDiv' onClick={() => (navigate(`/category/${category}/${id}`))}>
        <img src={pictureURL} alt={nameProduct}/>
        <h6 className='newDiv'>{newFlag ? "New" : ""}</h6>
        <h4>{nameProduct}</h4>
        <h4 className={salePrice ? 'onSale' : ''}>{price}$</h4>
        <h4 className={salePrice ? 'saleDiv' : 'noSaleDiv'}>{salePrice ? `${salePrice}$` : ""}</h4>
    </div>
  )
}
