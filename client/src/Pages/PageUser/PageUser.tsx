import React, { useContext, useState } from 'react'
import { useNavigate } from 'react-router-dom';
import { UserContext } from '../../contexts/UserContext';
import './PageUser.css'
import { IUser } from '../../Interfaces/IUser';
import { useEffect } from 'react';
import axios from 'axios';
import { environments } from '../../evironments/environments';

export function PageUser() {
    const navigate = useNavigate();
    const { user, setUser } = useContext(UserContext);
    const [ historyShow, setHistoryShow ] = useState(false);
    const [ historyCart, setHistoryCart ] = useState([
      {
        id: 0,
        userId: 0,
        allProductsAmount: 0,
        finalPrice: 0,
        user: null,
        shoppingHistoryProducts: []  
      }
    ]);
    const baseUrl = environments.API_URL;
    const url = baseUrl + "ShoppingHistorys";    

  useEffect(() => {
    axios
      .get(url)
      .then((response) => {
        // setHistoryCart({id:response.data.id});
        setHistoryCart([...response.data]);
        
      })
      .catch((error) => {
        throw new Error("error: ", error);
      });
  }, []);

  // [
  //   {
  //     "id": 1,
  //     "userId": 1,
  //     "allProductsAmount": 2,
  //     "finalPrice": 2250,
  //     "user": null,
  //     "shoppingHistoryProducts": []
  //   },
  //   {
  //     "id": 2,
  //     "userId": 1,
  //     "allProductsAmount": 1,
  //     "finalPrice": 1600,
  //     "user": null,
  //     "shoppingHistoryProducts": []
  //   },
  //   {
  //     "id": 3,
  //     "userId": 2,
  //     "allProductsAmount": 1,
  //     "finalPrice": 200,
  //     "user": null,
  //     "shoppingHistoryProducts": []
  //   }
  // ]
  function MouseOver(event: any) {
    event.target.style.cursor = 'pointer';
    event.target.style.backgroundColor = '#0071e3cb';
  }

  function MouseOut(event: any){
    event.target.style.cursor = 'auto';
    event.target.style.backgroundColor = '#0071e3';
  }

  function showHistoryBelow(event: any){
    // setProductsInCart([...productsInCart, product as IAProduct]);
    setHistoryShow(!historyShow);
    // event.target.style.cursor = 'auto';

    console.log(historyCart);
    
    const userCart = historyCart.filter((pusrchase)=>{
      return (pusrchase.userId === user?.id)
    })

    setHistoryCart(userCart);

  }


  return (
    <div className='pageUserDiv'>
        <div className={!user ? 'shown' : 'hidden'}>
            <h1>User is not sign in</h1>
            <div className='link' onClick={()=>{navigate(`/signin`)}}>
                sign in or register here
            </div>
        </div>

        <div className={user ? 'shown' : 'hidden'}>
            <h1>{`Welcome ${user?.fisrtName} ${user?.lastName}`}</h1>
            <div className='profileDiv'>
                <h3>Profile information</h3>
                <h4>{`Username: ${user?.username}`}</h4>
                {/* <h4>{`Birthday: ${user?.birthday}`}</h4> */}
                <h4>{`Phone: ${user?.phoneNumber}`}</h4>
            </div>

            <div className="btnDiv">
            <button onMouseOver={MouseOver} onMouseOut={MouseOut} onClick={(event)=>{showHistoryBelow(event)}}>
                {!historyShow ? "Show History" : "Hide History"}
            </button>
            </div>

            <div className={historyShow ? 'shownHistoryDiv' : 'hiddenHistoryDiv'}>
                {historyCart.map((usercart)=>(
                    <div className='orderDiv'>
                        <h4>{`Order Number: ${usercart.id}`}</h4>
                        <h4>{`Products Amount: ${usercart.allProductsAmount}`}</h4>
                        <h4>{`Total Price: ${usercart.finalPrice}$`}</h4>
                    </div>
                  ))}
            </div>
        </div>

    </div>
  )
}
