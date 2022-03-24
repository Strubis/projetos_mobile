import {StyleSheet} from 'react-native'

const style = StyleSheet.create({
    text_header: {
        fontWeight: 'bold',
        fontSize: 15,
        color: '#000000'
    },
    card_container: {
        justifyContent: 'center',
        alignItems: 'center',
        width: '100%',
        marginTop: 10
    },
    card: {
        width: '60%',
        borderRadius: 5,
        borderWidth: 1,
        borderColor: '#939393',
        padding: 5,
        backgroundColor: '#FFF'
    },
    card_content: {
        marginTop: 10,
        color: '#939393'
    }
})

export default style