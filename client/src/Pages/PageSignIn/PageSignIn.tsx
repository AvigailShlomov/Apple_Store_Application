import React, { useEffect, useState } from "react";
import './PageSignIn.css'
import { environments } from "../../evironments/environments";
import { Form } from "../../components/Form/Form";
import axios from "axios";
import { useNavigate } from "react-router-dom";

export function PageSignIn() {
  const navigate = useNavigate();
  const baseUrl = environments.API_URL;
  const url = baseUrl + "Users";

  const user = {
    FisrtName: "Moshe",
    LastName: "Abu",
    Username: "mosheabu@gmail.com",
    UserPassword: "1234",
    Birthday: "2000-06-01", //"year-month-day"
    PhoneNumber: "0509876543",
  };
  const login = {
    Username: "mosheabu@gmail.com",
    UserPassword: "1234",
  };

  const [newUserInfo, setNewUserInfo] = useState(user); //...
  const [loginInfo, setLoginInfo] = useState({
    Username: "",
    UserPassword: "",
  });


// const instance = axios.create({
//   baseURL: 'https://some-domain.com/api/',
//   timeout: 1000,
//   headers: {'X-Custom-Header': 'foobar'}
// });

  // POST: Users
  useEffect(() => {
    axios({
      method: "post",
      url: url,
      // url: "https://localhost:7029/api/Users",
      data: {
        FisrtName: "Moshe",
        LastName: "Abu",
        Username: "mosheabu@gmail.com",
        UserPassword: "1234",
        Birthday: "2000-06-01", //"year-month-day"
        PhoneNumber: "0509876543",
      },
    })
      .then((res) => {
        console.log("hi Im working-post new user", res);
        //func to save user(res.user) in context and give him a token
        navigate("/");
      })
      .catch((error) => {
        throw new Error("error: ", error);
      });
  }, [newUserInfo]);

  // useEffect(() => {
  //   axios({
  //     method: "put",
  //     url: "https://localhost:7029/api/Users", ////wait foe controller to work
  //     data: loginInfo,
  //   })
  //     .then((res) => {
  //       console.log("hi Im working-post new user", res);
  //       //func to save user(res.user) in context and give him a token
  //       navigate("/");
  //     })
  //     .catch((error) => {
  //       throw new Error("error: ", error);
  //     });
  // }, [loginInfo]);


  return (
    <div className='signinDiv'>
      {/* <button onClick={() => {
          console.log("hiiiiiiiiiii");
          setNewUserInfo(user);
        }}>avigail and ayelet are the best</button>

      <button onClick={() => {
          setLoginInfo(login);
        }}>hashem tazor lnu</button> */}
      <Form />

    </div>
  )
}

