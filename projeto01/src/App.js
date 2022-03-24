import React from 'react';
import {StyleSheet, View, Image, Text, Alert, TouchableOpacity, TouchableOpacityBase} from 'react-native';

import foto from './assets/img/img-profile.png';
import github from './assets/icons/github.png';
import facebook from './assets/icons/facebook.png';
import linkedin from './assets/icons/linkedin.png';
import Card from './components/Card'

const App = () => {

    function handlerRedesSociais(rede_social){
        switch(rede_social){
            case 'github':
                Alert.alert( 'https://github.com/strubis' );
                break;
            case 'linkedin':
                Alert.alert( 'https://linkedin.com' );
                break;
            case 'facebook':
                Alert.alert( 'https://instagram.com' );
                break;
        }
    }

    return (
        <>
            <View style={style.page}>
                <View style={style.container_cabecalho}>
                    <Image source={foto} style={style.foto}/>
                    <Text style={style.nome}>USER NAME</Text>
                    <Text style={style.funcao}>Function or Job</Text>

                    <View style={style.redes_sociais}>
                        <TouchableOpacity onPress={ () => handlerRedesSociais('github') }>
                            <Image source={github} style={style.icones}></Image>
                        </TouchableOpacity>
                        <TouchableOpacity onPress={ () => handlerRedesSociais('facebook') }>
                            <Image source={facebook} style={style.icones}></Image>
                        </TouchableOpacity>
                        <TouchableOpacity onPress={ () => handlerRedesSociais('linkedin') }>
                            <Image source={linkedin} style={style.icones}></Image>
                        </TouchableOpacity>
                    </View>
                </View>

                <Card titulo="Experiências Profissionais">
                    <Text style={style.card_content_text}>Programador</Text>
                    <Text style={style.card_content_text}>Programador</Text>
                    <Text style={style.card_content_text}>Programador</Text>
                    <Text style={style.card_content_text}>Programador</Text>
                    <Text style={style.card_content_text}>Programador</Text>
                </Card>
            </View>
        </>
    );
}

const style = StyleSheet.create({
    page: {
        backgroundColor: '#F1F2F4',
        flex: 1
    },
    container_cabecalho: {
        marginTop: 10,
        alignItems: 'center',
        justifyContent: 'center'
    },
    foto: {
        width: 250,
        height: 250,
        borderRadius: 125
    },
    nome: {
        fontSize: 26,
        fontWeight: 'bold', 
        marginTop: 12
    },
    funcao: {
        color: '#939393',
        fontWeight: 'bold',
        marginBottom: 10
    },
    icones: {
        width: 30,
        height: 30,
        borderRadius: 5
    },
    redes_sociais: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        width: '60%',
        marginTop: 20
    },
    card_content_text: {
        color: '#939393',
        marginBottom: 5
    }
})

export default App;