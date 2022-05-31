/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package codigo;

import JFlex.anttask.JFlexTask;
import java.io.File;

/**
 *
 * @author gabri
 */
public class Principal {
    public static void main(String[] args){
        String rota = "C:/Users/gabri/OneDrive/Documentos/NetBeansProjects/AnalisadorLexico/src/codigo/Lexer.flex";
        gerarLexer(rota);
        
    }
    public static void gerarLexer(String rota){
        File arquivo = new File(rota);
        JFlex.Main.generate(arquivo);
    }
}
