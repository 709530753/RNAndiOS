import React, { Component } from 'react';

import {
    StyleSheet,
    View,
    Text,
    AppRegistry,
} from 'react-native'

export default class NextPage extends Component {

    render(){
        return(
            <View style={styles.container}>
                <Text style={styles.textStyle}>
                    nextPage
                </Text>
            </View>
        )
    }

}

const styles = StyleSheet.create({

    container:{
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#F5FCFF'
    },

    textStyle:{
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
    }

});

AppRegistry.registerComponent('NextPage', () => NextPage);
