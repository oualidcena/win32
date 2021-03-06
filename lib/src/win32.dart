import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'typedefs.dart';

// Prototypes of window-related functions, constants and structs in user32.dll

// *** Callbacks ***
typedef WindowProc = Int64 Function(
    Int64 hwnd, Int32 uMsg, Int64 wParam, Int64 lParam);

// *** Helper Function ***
final TEXT = Utf16.toUtf16;

// *** APIs ***
final user32 = DynamicLibrary.open('user32.dll');
final BeginPaint =
    user32.lookupFunction<beginPaintNative, beginPaintDart>('BeginPaint');
final CreateWindowEx =
    user32.lookupFunction<createWindowExNative, createWindowExDart>(
        'CreateWindowExW');
final DefWindowProc = user32
    .lookupFunction<defWindowProcNative, defWindowProcDart>('DefWindowProcW');
final DispatchMessage =
    user32.lookupFunction<dispatchMessageNative, dispatchMessageDart>(
        'DispatchMessageW');
final DrawText =
    user32.lookupFunction<drawTextNative, drawTextDart>('DrawTextW');
final EndPaint =
    user32.lookupFunction<endPaintNative, endPaintDart>('EndPaint');
final FillRect =
    user32.lookupFunction<fillRectNative, fillRectDart>('FillRect');
final GetClientRect = user32
    .lookupFunction<getClientRectNative, getClientRectDart>('GetClientRect');
final GetMessage =
    user32.lookupFunction<getMessageNative, getMessageDart>('GetMessageW');
final LoadCursor =
    user32.lookupFunction<loadCursorNative, loadCursorDart>('LoadCursorW');
final MessageBox =
    user32.lookupFunction<messageBoxNative, messageBoxDart>('MessageBoxW');
final PostQuitMessage =
    user32.lookupFunction<postQuitMessageNative, postQuitMessageDart>(
        'PostQuitMessage');
final RegisterClass = user32
    .lookupFunction<registerClassNative, registerClassDart>('RegisterClassW');
final ShowWindow =
    user32.lookupFunction<showWindowNative, showWindowDart>('ShowWindow');
final TranslateMessage =
    user32.lookupFunction<translateMessageNative, translateMessageDart>(
        'TranslateMessage');
final UpdateWindow =
    user32.lookupFunction<updateWindowNative, updateWindowDart>('UpdateWindow');

final kernel32 = DynamicLibrary.open('kernel32.dll');
final GetLastError = kernel32
    .lookupFunction<getLastErrorNative, getLastErrorDart>('GetLastError');
final GetModuleHandle =
    kernel32.lookupFunction<getModuleHandleNative, getModuleHandleDart>(
        'GetModuleHandleW');
final GetStdHandle = kernel32
    .lookupFunction<getStdHandleNative, getStdHandleDart>('GetStdHandle');
final GetConsoleScreenBufferInfo = kernel32.lookupFunction<
    getConsoleScreenBufferInfoNative,
    getConsoleScreenBufferInfoDart>('GetConsoleScreenBufferInfo');
final SetConsoleMode = kernel32
    .lookupFunction<setConsoleModeNative, setConsoleModeDart>('SetConsoleMode');
final SetConsoleCursorInfo = kernel32.lookupFunction<setConsoleCursorInfoNative,
    setConsoleCursorInfoDart>('SetConsoleCursorInfo');
final SetConsoleCursorPosition = kernel32.lookupFunction<
    setConsoleCursorPositionNative,
    setConsoleCursorPositionDart>('SetConsoleCursorPosition');
final FillConsoleOutputCharacter = kernel32.lookupFunction<
    fillConsoleOutputCharacterNative,
    fillConsoleOutputCharacterDart>('FillConsoleOutputCharacterW');
final FillConsoleOutputAttribute = kernel32.lookupFunction<
    fillConsoleOutputAttributeNative,
    fillConsoleOutputAttributeDart>('FillConsoleOutputAttribute');

final gdi32 = DynamicLibrary.open('gdi32.dll');
final GetStockObject = gdi32
    .lookupFunction<getStockObjectNative, getStockObjectDart>('GetStockObject');
