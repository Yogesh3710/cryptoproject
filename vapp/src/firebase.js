import { initializeApp } from "firebase/app";
import { getStorage } from "firebase/storage";

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyDVx9SWCCXdoB20spx7NHpLerSBjSm2Ub0",
  authDomain: "alchemy-project-880e9.firebaseapp.com",
  projectId: "alchemy-project-880e9",
  storageBucket: "alchemy-project-880e9.appspot.com",
  messagingSenderId: "894268674589",
  appId: "1:894268674589:web:c20569ba48c24900ad2cf4"

};

// Initialize Firebase
const app = initializeApp(firebaseConfig);

const storage = getStorage(app);

export  {
  storage, app as default
}