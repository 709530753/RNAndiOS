import React, { Component } from 'react';

import {
    AppRegistry,
    StyleSheet,
    Text,
    View,
    TouchableOpacity,
    AlertIOS,
    NativeModules
} from 'react-native';

import {
    Navigator,
}from 'react-native-deprecated-custom-components';

// import NextPage from 'NextPage'
import FirstPage from './FirstPage'

let nextPage = NativeModules.SecondViewController;

export default class RNAndiOS extends Component {
    render() {
        return (
                <Navigator
                    tabLabel="FirstPage"
                    initialRoute={{
                        name:'FirstPage',
                        component:FirstPage,
                        params:{
                            title:'首页'
                        }
                    }}
                    renderScene={(route,navigator) =>
                        <route.component {...route.params} navigator={navigator}/>}
                />
        )
    }
    _nextPage = () => {
        nextPage.nextPage("RNJSBridge: rn-oc");
    }

}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#F5FCFF'
    },
    welcome: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
    }
});

AppRegistry.registerComponent('RNAndiOS', () => RNAndiOS);


{/*<View style={styles.container}>*/}
{/*<TouchableOpacity onPress={()=>this._nextPage()}>*/}
{/*<Text style={styles.welcome}>*/}
{/*啊哈哈哈哈哈哈哈哈*/}
{/*</Text>*/}
{/*</TouchableOpacity>*/}
{/*</View>*/}