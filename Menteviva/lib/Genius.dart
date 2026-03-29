import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'genius_model.dart';
export 'genius_model.dart';

class GeniusWidget extends StatefulWidget {
  const GeniusWidget({super.key});

  static String routeName = 'Genius';
  static String routePath = '/genius';

  @override
  State<GeniusWidget> createState() => _GeniusWidgetState();
}

class _GeniusWidgetState extends State<GeniusWidget>
    with TickerProviderStateMixin {
  late GeniusModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered1 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeniusModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            color: Color(0xFFFFAEAE),
            begin: 0,
            end: 1,
          ),
          TintEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            color: Color(0xFFFF3030),
            begin: 0,
            end: 1,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            color: Color(0xFFBFFFB2),
            begin: 0,
            end: 1,
          ),
          TintEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            color: Color(0xFF4CFF29),
            begin: 0,
            end: 1,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            color: Color(0xFFAFB4FF),
            begin: 0,
            end: 1,
          ),
          TintEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            color: Color(0xFF303DFF),
            begin: 0,
            end: 1,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            color: Color(0xFFFDFFB4),
            begin: 0,
            end: 1,
          ),
          TintEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 400.0.ms,
            color: Color(0xFFF6FF29),
            begin: 0,
            end: 1,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(PaginaDeJogosWidget.routeName);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
          ),
          title: Text(
            'Memória Visual',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).info,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Pontuação',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                          Text(
                            FFAppState().pontuacaoAtual.toString(),
                            style: FlutterFlowTheme.of(context)
                                .displayMedium
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displayMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(height: 12)),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Text(
                    FFAppState().mensagem,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 24,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: FFAppState().botaoAtivo == 0
                                          ? Color(0xFFFFC3C3)
                                          : Color(0xFFFF3030),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (FFAppState().isPlayerTurn) {
                                          _model.vermelho =
                                              await actions.addVermelho();
                                          // Action 2
                                          FFAppState().addToInputJogador(
                                              _model.vermelho!);
                                          safeSetState(() {});
                                          _model.acertou0 =
                                              await actions.verificaJogada(
                                            FFAppState().sequencia.toList(),
                                            FFAppState().inputJogador.toList(),
                                            FFAppState().indiceAtual,
                                          );
                                          if (_model.acertou0!) {
                                            FFAppState().indiceAtual =
                                                FFAppState().indiceAtual + 1;
                                            safeSetState(() {});
                                            if (FFAppState().indiceAtual ==
                                                FFAppState().sequencia.length) {
                                              FFAppState().indiceAtual = 0;
                                              safeSetState(() {});
                                              FFAppState().pontuacaoAtual =
                                                  FFAppState().pontuacaoAtual +
                                                      1;
                                              safeSetState(() {});
                                              _model.novaSequencia0 =
                                                  await actions
                                                      .addNaSequencia();
                                              FFAppState().addToSequencia(
                                                  _model.novaSequencia0!);
                                              safeSetState(() {});
                                              FFAppState().inputJogador = [];
                                              safeSetState(() {});
                                              FFAppState().indice = 0;
                                              safeSetState(() {});
                                              for (int loop1Index = 0;
                                                  loop1Index <=
                                                      FFAppState()
                                                          .sequencia
                                                          .length;
                                                  loop1Index++) {
                                                final currentLoop1Item =
                                                    FFAppState()
                                                        .sequencia[loop1Index];
                                                _model.mostrarSequencia0 =
                                                    await actions
                                                        .mostrarSequencia(
                                                  FFAppState()
                                                      .sequencia
                                                      .toList(),
                                                  FFAppState().indice,
                                                );
                                                FFAppState().botaoAtivo =
                                                    _model.mostrarSequencia0!;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 400,
                                                  ),
                                                );
                                                FFAppState().botaoAtivo = -1;
                                                safeSetState(() {});
                                                FFAppState().indice =
                                                    FFAppState().indice + 1;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 200,
                                                  ),
                                                );
                                              }
                                              FFAppState().indiceAtual = 0;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().isPlayerTurn = true;
                                              safeSetState(() {});
                                              FFAppState().mensagem =
                                                  'Muito bem!';
                                              safeSetState(() {});
                                            }
                                          } else {
                                            FFAppState().isPlayerTurn = false;
                                            safeSetState(() {});
                                            FFAppState().pontuacaoAtual = 0;
                                            safeSetState(() {});
                                            FFAppState().mensagem =
                                                'Você errou!';
                                            safeSetState(() {});
                                          }
                                        }

                                        safeSetState(() {});
                                      },
                                      text: '',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: double.infinity,
                                        padding: EdgeInsets.all(8),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                        color: Color(0x00FF3737),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        elevation: 0,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation1']!,
                                      hasBeenTriggered: hasContainerTriggered1),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: FFAppState().botaoAtivo == 1
                                          ? Color(0xFFC7FFBD)
                                          : Color(0xFF4CFF29),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (FFAppState().isPlayerTurn) {
                                          _model.verde =
                                              await actions.addVerde();
                                          // Action 2
                                          FFAppState()
                                              .addToInputJogador(_model.verde!);
                                          safeSetState(() {});
                                          _model.acertou1 =
                                              await actions.verificaJogada(
                                            FFAppState().sequencia.toList(),
                                            FFAppState().inputJogador.toList(),
                                            FFAppState().indiceAtual,
                                          );
                                          if (_model.acertou1!) {
                                            FFAppState().indiceAtual =
                                                FFAppState().indiceAtual + 1;
                                            safeSetState(() {});
                                            if (FFAppState().indiceAtual ==
                                                FFAppState().sequencia.length) {
                                              FFAppState().indiceAtual = 0;
                                              safeSetState(() {});
                                              FFAppState().pontuacaoAtual =
                                                  FFAppState().pontuacaoAtual +
                                                      1;
                                              safeSetState(() {});
                                              _model.novaSequencia1 =
                                                  await actions
                                                      .addNaSequencia();
                                              FFAppState().addToSequencia(
                                                  _model.novaSequencia1!);
                                              safeSetState(() {});
                                              FFAppState().inputJogador = [];
                                              safeSetState(() {});
                                              FFAppState().indice = 0;
                                              safeSetState(() {});
                                              for (int loop1Index = 0;
                                                  loop1Index <=
                                                      FFAppState()
                                                          .sequencia
                                                          .length;
                                                  loop1Index++) {
                                                final currentLoop1Item =
                                                    FFAppState()
                                                        .sequencia[loop1Index];
                                                _model.mostrarSequencia1 =
                                                    await actions
                                                        .mostrarSequencia(
                                                  FFAppState()
                                                      .sequencia
                                                      .toList(),
                                                  FFAppState().indice,
                                                );
                                                FFAppState().botaoAtivo =
                                                    _model.mostrarSequencia1!;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 400,
                                                  ),
                                                );
                                                FFAppState().botaoAtivo = -1;
                                                safeSetState(() {});
                                                FFAppState().indice =
                                                    FFAppState().indice + 1;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 200,
                                                  ),
                                                );
                                              }
                                              FFAppState().indiceAtual = 0;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().isPlayerTurn = true;
                                              safeSetState(() {});
                                              FFAppState().mensagem =
                                                  'Muito bem!';
                                              safeSetState(() {});
                                            }
                                          } else {
                                            FFAppState().isPlayerTurn = false;
                                            safeSetState(() {});
                                            FFAppState().pontuacaoAtual = 0;
                                            safeSetState(() {});
                                            FFAppState().mensagem =
                                                'Você errou!';
                                            safeSetState(() {});
                                          }
                                        }

                                        safeSetState(() {});
                                      },
                                      text: '',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: double.infinity,
                                        padding: EdgeInsets.all(8),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        elevation: 0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation2']!,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: FFAppState().botaoAtivo == 2
                                          ? Color(0xFFBCC1FF)
                                          : Color(0xFF303DFF),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (FFAppState().isPlayerTurn) {
                                          _model.azul = await actions.addAzul();
                                          // Action 2
                                          FFAppState()
                                              .addToInputJogador(_model.azul!);
                                          safeSetState(() {});
                                          _model.acertou2 =
                                              await actions.verificaJogada(
                                            FFAppState().sequencia.toList(),
                                            FFAppState().inputJogador.toList(),
                                            FFAppState().indiceAtual,
                                          );
                                          if (_model.acertou2!) {
                                            FFAppState().indiceAtual =
                                                FFAppState().indiceAtual + 1;
                                            safeSetState(() {});
                                            if (FFAppState().indiceAtual ==
                                                FFAppState().sequencia.length) {
                                              FFAppState().indiceAtual = 0;
                                              safeSetState(() {});
                                              FFAppState().pontuacaoAtual =
                                                  FFAppState().pontuacaoAtual +
                                                      1;
                                              safeSetState(() {});
                                              _model.novaSequencia2 =
                                                  await actions
                                                      .addNaSequencia();
                                              FFAppState().addToSequencia(
                                                  _model.novaSequencia2!);
                                              safeSetState(() {});
                                              FFAppState().inputJogador = [];
                                              safeSetState(() {});
                                              FFAppState().indice = 0;
                                              safeSetState(() {});
                                              for (int loop1Index = 0;
                                                  loop1Index <=
                                                      FFAppState()
                                                          .sequencia
                                                          .length;
                                                  loop1Index++) {
                                                final currentLoop1Item =
                                                    FFAppState()
                                                        .sequencia[loop1Index];
                                                _model.mostrarSequencia2 =
                                                    await actions
                                                        .mostrarSequencia(
                                                  FFAppState()
                                                      .sequencia
                                                      .toList(),
                                                  FFAppState().indice,
                                                );
                                                FFAppState().botaoAtivo =
                                                    _model.mostrarSequencia2!;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 400,
                                                  ),
                                                );
                                                FFAppState().botaoAtivo = -1;
                                                safeSetState(() {});
                                                FFAppState().indice =
                                                    FFAppState().indice + 1;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 200,
                                                  ),
                                                );
                                              }
                                              FFAppState().indiceAtual = 0;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().isPlayerTurn = true;
                                              safeSetState(() {});
                                              FFAppState().mensagem =
                                                  'Muito bem!';
                                              safeSetState(() {});
                                            }
                                          } else {
                                            FFAppState().isPlayerTurn = false;
                                            safeSetState(() {});
                                            FFAppState().pontuacaoAtual = 0;
                                            safeSetState(() {});
                                            FFAppState().mensagem =
                                                'Você errou!';
                                            safeSetState(() {});
                                          }
                                        }

                                        safeSetState(() {});
                                      },
                                      text: '',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: double.infinity,
                                        padding: EdgeInsets.all(8),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        elevation: 0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation3']!,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: FFAppState().botaoAtivo == 3
                                          ? Color(0xFFFAFFC0)
                                          : Color(0xFFF6FF29),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (FFAppState().isPlayerTurn) {
                                          _model.amarelo =
                                              await actions.addAmarelo();
                                          // Action 2
                                          FFAppState().addToInputJogador(
                                              _model.amarelo!);
                                          safeSetState(() {});
                                          _model.acertou3 =
                                              await actions.verificaJogada(
                                            FFAppState().sequencia.toList(),
                                            FFAppState().inputJogador.toList(),
                                            FFAppState().indiceAtual,
                                          );
                                          if (_model.acertou3!) {
                                            FFAppState().indiceAtual =
                                                FFAppState().indiceAtual + 1;
                                            safeSetState(() {});
                                            if (FFAppState().indiceAtual ==
                                                FFAppState().sequencia.length) {
                                              FFAppState().indiceAtual = 0;
                                              safeSetState(() {});
                                              FFAppState().pontuacaoAtual =
                                                  FFAppState().pontuacaoAtual +
                                                      1;
                                              safeSetState(() {});
                                              _model.novaSequencia3 =
                                                  await actions
                                                      .addNaSequencia();
                                              FFAppState().addToSequencia(
                                                  _model.novaSequencia3!);
                                              safeSetState(() {});
                                              FFAppState().inputJogador = [];
                                              safeSetState(() {});
                                              FFAppState().indice = 0;
                                              safeSetState(() {});
                                              for (int loop1Index = 0;
                                                  loop1Index <=
                                                      FFAppState()
                                                          .sequencia
                                                          .length;
                                                  loop1Index++) {
                                                final currentLoop1Item =
                                                    FFAppState()
                                                        .sequencia[loop1Index];
                                                _model.mostrarSequencia3 =
                                                    await actions
                                                        .mostrarSequencia(
                                                  FFAppState()
                                                      .sequencia
                                                      .toList(),
                                                  FFAppState().indice,
                                                );
                                                FFAppState().botaoAtivo =
                                                    _model.mostrarSequencia3!;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 400,
                                                  ),
                                                );
                                                FFAppState().botaoAtivo = -1;
                                                safeSetState(() {});
                                                FFAppState().indice =
                                                    FFAppState().indice + 1;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 200,
                                                  ),
                                                );
                                              }
                                              FFAppState().indiceAtual = 0;
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().isPlayerTurn = true;
                                              safeSetState(() {});
                                              FFAppState().mensagem =
                                                  'Muito bem!';
                                              safeSetState(() {});
                                            }
                                          } else {
                                            FFAppState().isPlayerTurn = false;
                                            safeSetState(() {});
                                            FFAppState().pontuacaoAtual = 0;
                                            safeSetState(() {});
                                            FFAppState().mensagem =
                                                'Você errou!';
                                            safeSetState(() {});
                                          }
                                        }

                                        safeSetState(() {});
                                      },
                                      text: '',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: double.infinity,
                                        padding: EdgeInsets.all(8),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        elevation: 0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation4']!,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          FFAppState().pontuacaoAtual = 0;
                          safeSetState(() {});
                          FFAppState().sequencia = [];
                          safeSetState(() {});
                          FFAppState().inputJogador = [];
                          safeSetState(() {});
                          FFAppState().indiceAtual = 0;
                          safeSetState(() {});
                          FFAppState().indice = 0;
                          safeSetState(() {});
                          _model.sequencia = await actions.addNaSequencia();
                          FFAppState().addToSequencia(_model.sequencia!);
                          safeSetState(() {});
                          FFAppState().isPlayerTurn = true;
                          safeSetState(() {});
                          FFAppState().mensagem =
                              'Assista a sequência e repita';
                          safeSetState(() {});
                          for (int loop1Index = 0;
                              loop1Index <= FFAppState().sequencia.length;
                              loop1Index++) {
                            final currentLoop1Item =
                                FFAppState().sequencia[loop1Index];
                            _model.mostrarSequencia =
                                await actions.mostrarSequencia(
                              FFAppState().sequencia.toList(),
                              FFAppState().indice,
                            );
                            FFAppState().botaoAtivo = _model.mostrarSequencia!;
                            safeSetState(() {});
                            await Future.delayed(
                              Duration(
                                milliseconds: 300,
                              ),
                            );
                            FFAppState().botaoAtivo = -1;
                            safeSetState(() {});
                            await Future.delayed(
                              Duration(
                                milliseconds: 100,
                              ),
                            );
                            FFAppState().indice = FFAppState().indice + 1;
                            safeSetState(() {});
                          }

                          safeSetState(() {});
                        },
                        text: 'Iniciar',
                        options: FFButtonOptions(
                          width: 150,
                          height: 50,
                          padding: EdgeInsets.all(8),
                          iconPadding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: FlutterFlowTheme.of(context).secondary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ].divide(SizedBox(width: 16)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
