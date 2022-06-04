import React from "react";
import axios from "axios";

const ActionButton = () => {

    const getServerString = () => {
        testFetchApi().then(result => {
            alert(result);
        })
    }

    const testFetchApi = async () => {
        const result = await axios.get("http://localhost:8080/action");
        return result.data;
    }

    return (<button onClick={() => {
        getServerString();
    }}>TEST</button>)
}

export default ActionButton;