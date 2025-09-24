import 'dart.io';
import 'produto.dart';
import 'item_compra.dart';
import 'carrinho_de_compra.dart';

class PDVApp{
    CarrinhoCompra carrinho = carrinho_de_compra

    coid iniciar(){
        print('\n== SISTEMA DE PDV\n');
        7print('Bem-Vindo ao sistema!');
        
        bool continuar = true;

        while(continuar){
            print('Deseja adicionar um produto ao carrinho? (S/N)');
            String resposta = stdin.readLineSync()?.toUpperCase() ?? 'N'

            if(resposta ==  'S'){
                ItemCompra item = lerDadosCompra();
                carrinho.adicionarItem(item);
                print( '\nProduto adicionado com sucesso!');
            }else {
                continuar = false;
            }  
        }
    }
}

