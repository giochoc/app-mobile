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

        if(carrinho.estaVazio()){
            print('\nNenhum produto foi adicionado ao carrinho.');
            print('\Obrigada por usar o sistema PDV.');
        }else {
            exibirResultado();
        }

        ItemCompra lerDadosCompra(){
            print('\n-- Adicionar Porduto --');

            print('\nNome do produto:');
                String nome = stdin.readLineSync() ?? '';

                double valor = 0;
                bool valorValido = false;

                while(!valorValido){
                    print('\nValor unitário:');
                    String input = stdin.readLineSync() ?? '0';
                    valorUnitario = double.parse(input.replaceAll(',','.'));
                    if(valorUnitario <= 0){
                        print('\nValor deve ser maior que zero.');
                    }else {
                        valorValido = true;
                    }
            }
        }

            int quantidade = 0;
            bool quantidadeValida = true;

            while(!quantidadeValida){
                print('\nQuantidade:');
                String input = stdin.readLineSync() ?? '0';
                quantidade = int.parse(input);
                if(quantidade <= 0){
                    print('\nErro: A quantidade deve ser maior que zero.');
                }else {
                    quantidadeValida = true;
                }
            }

            Produto produto = Produto(nome, valorUnitario);
            return ItemCompra(produto, quantidade);
        
    }
}

