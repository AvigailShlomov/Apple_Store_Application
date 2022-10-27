import axios from "axios";
import React, { useContext, useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { UserContext } from "../../contexts/UserContext";
import { environments } from "../../evironments/environments";
import "./Form.css";
import { IUser } from '../../Interfaces/IUser';

export function Form() {
  const navigate = useNavigate();
  const { user, setUser } = useContext(UserContext);
  //register usestate and useffect
  const baseUrl = environments.API_URL;
  // const url = baseUrl + "Users";
  const [disableSubmit, setDisableSubmit] = useState(false);
  const [passwordObj, setPasswordObj] = useState({
    passUpper: false,
    passLower: false,
    passNumber: false,
    passSpecial: false,
    passLength: false,
  });

  const [validFeileds, setValidFeileds] = useState({
    firstname: false,
    lastname: false,
    username: false,
    password: false,
    confirmpassword: false,
    birthday: false,
    phone: false,
  });
  const [newUser, setNewUser] = useState({
    firstName: "",
    lastName: "",
    username: "",
    userPassword: "",
    birthday: "", //"year-month-day" yyyy-mm-dd
    phoneNumber: "",
    token: "thisUserIsLoggedIn",
  });

  useEffect(() => {
    if (
      Object.values(validFeileds).every((item) => {
        return item;
      })
    ) {
      setDisableSubmit(true);
      console.log("USER", newUser);
    }
  }, [validFeileds]);

  useEffect(() => {
    if (
      Object.values(passwordObj).every((item) => {
        return item;
      })
    ) {
      setValidFeileds({ ...validFeileds, password: true });
      let pass = document.getElementById("password") as HTMLInputElement;
      setNewUser({ ...newUser, userPassword: pass.value });
    }
  }, [passwordObj]);

  // ----- register -----
  function postUser() {
    axios({
      method: "post",
      url: baseUrl + "Users",
      data: {
        FisrtName: newUser.firstName,
        LastName: newUser.lastName,
        Username: newUser.username,
        UserPassword: newUser.userPassword,
        Birthday: newUser.birthday, //"year-month-day"
        PhoneNumber: newUser.phoneNumber,
        Token: newUser.token,
      },
    })
      .then((res) => {
        console.log("hi Im working-post new user", res);
        //func to save user(res.user) in context and give him a token
        const resUser = res.data as IUser;
        setUser(resUser);
        navigate(`/user/${resUser.username}`);
      })
      .catch((error) => {
        throw new Error("error: ", error);
        // navigate(`/signin/${}`);
      });
  }

  ////////////////////Login usestate and useffect////////////////////
  const [loginInfo, setLoginInfo] = useState({
    Username: "",
    UserPassword: "",
  });
  const [validLoginInput, setValidLoginInput] = useState({
    Username: false,
    UserPassword: false,
  });
  const [disableLoginBtn, setDisableLoginBtn] = useState(false);

  // ----- login -----
  function putUser() {
    axios({
      method: "put",
      url: baseUrl + "Sign/login", ////wait for controller to work
      data: loginInfo,
    })
      .then((res) => {
        console.log("hi Im working-post new user", res);
        //func to save user(res.user) in context and give him a token
        const resUser = res.data as IUser;
        setUser(resUser);
        navigate(`/user/${resUser.username}`);
      })
      .catch((error) => {
        navigate(`/user/undefined`);
        throw new Error("error: ", error);
      });
  }

  //login btn disable
  useEffect(() => {
    if (
      Object.values(validLoginInput).every((item) => {
        return item;
      })
    ) {
      setDisableLoginBtn(true);
      console.log();
    }
  }, [validLoginInput]);

  // useEffect(()=>{},[])

  /////////////////////////////////////Name Valdation///////////////////////////////
  function ValidateName(name: string) {
    let len = name.length;
    let flag = true;
    if (!/^[a-zA-Z]+$/.test(name)) {
      // alert("First name must contain only letters");
      flag = false;
    } else if (len < 3) {
      // alert("First name to short");
      flag = false;
    } else if (len > 20) {
      // alert("First name to long");
      flag = false;
    }
    return flag;
  }

  function fNameValidation() {
    const fname1 = document.getElementById("fname") as HTMLInputElement;
    console.log("first name", fname1);

    if (!ValidateName(fname1.value)) {
      setValidFeileds({ ...validFeileds, firstname: false });
      fname1.style.border = "1px red solid";
    } else {
      setValidFeileds({ ...validFeileds, firstname: true });
      setNewUser({ ...newUser, firstName: fname1.value });
      fname1.style.border = "";
    }
  }
  function lNameValidation() {
    //last name
    let lname = document.getElementById("lname") as HTMLInputElement;
    if (!ValidateName(lname.value)) {
      lname.style.border = "1px red solid";
    } else {
      lname.style.border = "";
      setValidFeileds({ ...validFeileds, lastname: true });
      setNewUser({ ...newUser, lastName: lname.value });
    }
  }
  /////////////////////////////////////Username Email Valdation///////////////////////////////
  function emailValidation() {
    const email = document.getElementById("email") as HTMLInputElement;
    if (!/^[a-z0-9](\.?[a-z0-9]){4,}@g(oogle)?mail\.com$/.test(email.value)) {
      email.style.border = "1px red solid";
    } else {
      email.style.border = "";
      setValidFeileds({ ...validFeileds, username: true });
      setNewUser({ ...newUser, username: email.value });
    }
  }
  ////////////////////////////////////Password Validation/////////////
  function passwordValidation() {
    let pass = document.getElementById("password") as HTMLInputElement;
    let passValue = pass.value;
    let len = pass.value.length;
    let upperLetters = false;
    let lowerLetters = false;
    let spicial = false;
    let numbers = false;
    let passLen = false;

    if (len === 0) {
      upperLetters = false;
      lowerLetters = false;
      spicial = false;
      numbers = false;
      passLen = false;
    }

    for (let i = 0; i < len; i++) {
      //Upper
      let cur = passValue.charCodeAt(i);
      console.log(passValue[i]);

      if (!upperLetters && cur >= 65 && cur <= 90) {
        upperLetters = true;

        continue;
      } else if (!upperLetters) {
        continue;
      }

      if (!lowerLetters && cur >= 97 && cur <= 122) {
        //Lower
        lowerLetters = true;

        continue;
      } else if (!lowerLetters) {
        continue;
      }
      if (!numbers && cur >= 48 && cur <= 57) {
        //number
        numbers = true;
        continue;
      } else if (!numbers) {
        continue;
      }
      if (
        !spicial &&
        (cur === 33 || cur === 35 || cur === 36 || cur === 38 || cur === 64)
      ) {
        //! # $ & @
        spicial = true;
        continue;
      } else if (!spicial) {
        spicial = false;
        continue;
      }
    }

    if (!passLen && len >= 7) {
      //length
      passLen = true;
      setPasswordObj({ ...passwordObj, passLength: true });
    } else if (!passLen) {
      setPasswordObj({ ...passwordObj, passLength: false });
    }

    setPasswordObj({
      passUpper: upperLetters,
      passLower: lowerLetters,
      passNumber: numbers,
      passSpecial: spicial,
      passLength: passLen,
    });
    if (
      Object.values(passwordObj).every((item) => {
        return item;
      })
    ) {
      pass.style.border = "";
    } else {
      pass.style.border = "1px red solid";
    }
  }

  function confirmPasswordValidation() {
    let passwordInput = document.querySelector("#password") as HTMLInputElement;
    let cPasswordInput = document.querySelector(
      "#cPassword"
    ) as HTMLInputElement;

    if (passwordInput.value !== cPasswordInput.value) {
      cPasswordInput.style.border = "1px red solid";
    } else {
      cPasswordInput.style.border = "";
      setValidFeileds({ ...validFeileds, confirmpassword: true });
    }
  }
  //////////////////////////////////Login Validation//////////////////////////
  function validateLoginName() {
    const username = document.getElementById(
      "loginUsername"
    ) as HTMLInputElement;

    if (
      !/^[a-z0-9](\.?[a-z0-9]){4,}@g(oogle)?mail\.com$/.test(username.value)
    ) {
      username.style.border = "1px red solid";
      setLoginInfo({ ...loginInfo, Username: "" });
      username.style.border = "1px red solid";
    } else {
      setValidLoginInput({ ...validLoginInput, Username: true });
      setLoginInfo({ ...loginInfo, Username: username.value });
      username.style.border = "";
    }
  }

  function MouseOver(event: any, condition: boolean) {
    if(condition){
      event.target.style.cursor = 'pointer';
      event.target.style.backgroundColor = '#0071e3cb';
    }
  }

  function MouseOut(event: any){
    event.target.style.cursor = 'auto';
    event.target.style.backgroundColor = '#0071e3';
  }

  function resetForm(event: any){
    setNewUser({
      firstName: "",
      lastName: "",
      username: "",
      userPassword: "",
      birthday: "", //"year-month-day" yyyy-mm-dd
      phoneNumber: "",
      token: "thisUserIsLoggedIn",
    });
  }




  return (
    <div className="formsDiv">
      <div className="singinDiv">
        <h2>Sign in to Apple Store</h2>
        {/* ///////////////////////////LOGIN//////////////////////////////////// */}
        <div className="formDiv">
          <div className="loginDiv">
            <div className="inputFormDiv">
              <input
                id="loginUsername"
                type="text"
                required
                onBlur={validateLoginName}
              />
              <label>Username</label>
            </div>
            <div id="passwordDiv" className="inputFormDiv">
              <input
                type="password"
                required
                id="loginPassword"
                onBlur={() => {
                  const loginPassword = document.getElementById(
                    "loginPassword"
                  ) as HTMLInputElement;
                  setValidLoginInput({
                    ...validLoginInput,
                    UserPassword: true,
                  });
                  setLoginInfo({
                    ...loginInfo,
                    UserPassword: loginPassword.value,
                  });
                }}
              />
              <label>Password</label>
            </div>
          </div>
          {/* {!disableLoginBtn ? (
            <input type="submit" value="Login" className="btnDiv" disabled />
          ) : (
            <input
              type="submit"
              value="Login now"
              className="btnDiv"
              onClick={putUser}
            />
          )} */}
          <div className="btnDiv">
            <button disabled={!disableLoginBtn} onMouseOver={(event)=>{MouseOver(event, disableLoginBtn)}} onMouseOut={MouseOut} onClick={putUser}>Login</button>
          </div>
        </div>
      </div>
      {/* ///////////////////////////END LOGIN/////////////////////////////////  */}
      <div className="vl"></div>
      <div className="registresionFormDiv">
        <h2>Create Your Account</h2>
        <div className="formDiv">
          {/* name */}
          <div className="nameDiv">
            <div className="inputFormDiv">
              {/* {user.fisrtName!=""&&validFeileds.fisrtName?:} */}
              <input
                type="text"
                id="fname"
                // className="inValidBorder"
                required
                onBlur={fNameValidation}
              />
              <label>First name</label>
            </div>
            <div className="inputFormDiv">
              <input type="text" id="lname" required onBlur={lNameValidation} />
              <label>Last name</label>
            </div>
          </div>
          {/* end name */}

          <hr />

          {/* bday */}
          <div
            id="birthday"
            className="inputFormDiv"
            onBlur={() => {
              let bdate = document.querySelector("#bday") as HTMLInputElement;
              if (
                !/^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$/.test(
                  bdate.value
                )
              ) {
                bdate.style.border = "1px red solid";
              } else {
                bdate.style.border = "";
                setValidFeileds({ ...validFeileds, birthday: true });
                setNewUser({ ...newUser, birthday: bdate.value });
              }
            }}
          >
            <input type="text" id="bday" required />
            <label>Birthday</label>
          </div>
          {/* endbday */}
          <hr />

          {/* email */}
          <div className="inputFormDiv">
            <input type="email" id="email" required onBlur={emailValidation} />
            <label>name@example.com</label> <br />
          </div>
          {/* end  email */}

          <div id="passwordDiv" className="inputFormDiv">
            <input
              type="password"
              id="password"
              required
              onChange={passwordValidation}
            />
            <label>Password</label>
            <br />
          </div>
          <div id="confirmPasswordDiv" className="inputFormDiv">
            <input
              type="password"
              id="cPassword"
              required
              onBlur={confirmPasswordValidation}
            />
            <label>Confirm password</label>
          </div>
          <hr />

          <div id="phoneDiv" className="inputFormDiv">
            <input
              id="telId"
              name="telNo"
              type="tel"
              pattern="^[0-9]{3}[0-9]{3}[0-9]{4}$"
              required
              onBlur={() => {
                let phone = document.querySelector(
                  "#telId"
                ) as HTMLInputElement;
                if (!/^[0-9]{3}[0-9]{3}[0-9]{4}$/.test(phone.value)) {
                  phone.style.border = "1px red solid";
                } else {
                  phone.style.border = "";
                  setValidFeileds({ ...validFeileds, phone: true });
                  setNewUser({ ...newUser, phoneNumber: phone.value });
                }
              }}
            />
            <label>Phone number</label>
          </div>

          {/* <input type="reset" value="Reset" className="btnDiv" /> */}
          {/* {!disableSubmit ? (
            <input type="submit" value="Submit" className="btnDiv" disabled />
          ) : (
            <input
              type="submit"
              value="Submit"
              className="btnDiv"
              onClick={postUser}
            />
          )} */}
          {/* <div className="btnDiv">
            <button onMouseOver={(event)=>{MouseOver(event, true)}} onMouseOut={MouseOut} onClick={resetForm}>Reset</button>
          </div> */}
          <div className="btnDiv">
            <button disabled={!disableLoginBtn} onMouseOver={(event)=>{MouseOver(event, disableLoginBtn)}} onMouseOut={MouseOut} onClick={postUser}>Submit</button>
          </div>

        </div>
      </div>
    </div>
  );
}
