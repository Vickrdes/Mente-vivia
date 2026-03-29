import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? mostrarNovaPal(String? palavraAtual) {
  List<String> palavras = [
    'gato',
    'casa',
    'flor',
    'terra',
    'sol',
    'água',
    'livro',
    'cachorro',
    'árvore',
    'montanha',
    'computador',
    'janela',
    'porta',
    'cidade',
    'campo',
    'estrela',
    'caneta',
    'papel',
    'mesa',
    'cadeira',
    'ventilador',
    'telefone',
    'bicicleta',
    'avião',
    'navio',
    'relógio',
    'espelho',
    'copo',
    'prato',
    'garfo',
    'colher',
    'sofá',
    'televisão',
    'rádio',
    'lua',
    'nuvem',
    'chuva',
    'vento',
    'neve',
    'fogo'
  ]..shuffle(); // Embaralha a lista

  palavraAtual = palavras.first;
  return palavraAtual;
}
