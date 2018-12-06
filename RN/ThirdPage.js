
import React, { Component } from 'react'

import {
    StyleSheet,
    View,
    Text,
    TouchableOpacity,
    AlertIOS,
} from 'react-native'

export default class ThirdPage extends Component {

    render(){
        return(
            <View style={styles.container}>
                <TouchableOpacity onPress={()=>this._jumpNextPage()}>
                    <Text style={styles.textStyle}>ThirdPage</Text>

                </TouchableOpacity>
            </View>
        )
    }

    _jumpNextPage = ()=> {

        let { navigator } = this.props;

        if (navigator) {
            navigator.pop();
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