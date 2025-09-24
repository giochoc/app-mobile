import 'produto.dart';
classe ItemCompra{
    Produto produto;
    int quantidade;

    ItemCompra(this.produto, this.quantidade);

    double calcularSubTotal(){
        return quantidade * produto.valorUnitario;
    }

    @override
    String toString(){
        return '${produto.nome} - ${quantidade} unid. X R\$ ${produto.valorUnitario.toStringAsFixed(2)} = R\$ ${calacularSubTotal().toStringAsFixed(2)} ';
    }
    }