
import React, { Component } from 'react'

import {
    StyleSheet,
    View,
    Text,
    TouchableOpacity,
    AlertIOS,
    NativeModules
} from 'react-native'

import ThirdPage from './ThirdPage'

let nextPage = NativeModules.SecondViewController;

export default class FirstPage extends Component {

    render(){
        return(
            <View style={styles.container}>
                <TouchableOpacity onPress={()=>this._jumpNextPage()}>
                    <Text style={styles.textStyle}>呵呵呵呵呵呵呵</Text>

                </TouchableOpacity>
            </View>
        )
    }

    _jumpNextPage = ()=> {
        nextPage.nextPage("RNJSBridge: rn-oc");

        let { navigator } = this.props;

        if (navigator) {
            navigator.push({
                component:ThirdPage,
            })
        }
    }

}

const styles = StyleSheet.create({

    container: {
        flex: 1,
        backgroundColor: '#F5f5f5',
        alignItems: 'center',
        justifyContent: 'center',
    },
    textStyle: {
        color: '#000',
        fontSize: 14,
        textAlign: 'center',
    }

});