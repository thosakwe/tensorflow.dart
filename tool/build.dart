// ignore_for_file: unawaited_futures
import 'dart:io';
import 'package:args/args.dart';
import 'package:cli_util/cli_util.dart';
import 'package:path/path.dart' as p;
import 'package:system_info/system_info.dart';

final ArgParser argParser = ArgParser()
  ..addFlag('force',
      abbr: 'f',
      negatable: false,
      help: 'Rebuild the CMake cache before building (to force a rebuild).')
  ..addFlag('help',
      abbr: 'h', negatable: false, help: 'Print this help information.')
  ..addOption('os',
      abbr: 'o',
      help: 'The `TF_OS` variable to build with.',
      allowed: ['darwin', 'linux'],
      defaultsTo: Platform.environment['TF_OS'] ??
          (Platform.isMacOS
              ? 'darwin'
              : (Platform.isWindows ? 'windows' : 'linux')))
  ..addOption('platform',
      abbr: 'p',
      help: 'The `TF_PLATFORM` variable to build with.',
      defaultsTo:
          Platform.environment['TF_PLATFORM'] ?? SysInfo.kernelArchitecture)
  ..addOption('type',
      abbr: 't',
      help: 'The `TF_TYPE` variable to build with.',
      allowed: ['cpu', 'gpu'],
      defaultsTo: Platform.environment['TF_TYPE'] ?? 'cpu')
  ..addOption('version',
      abbr: 'v',
      help: 'The `TF_VERSION` variable to build with.',
      defaultsTo: Platform.environment['TF_VERSION'] ?? '1.7.0');

main(List<String> args, [bool isDownloading = false]) async {
  try {
    var argResults = argParser.parse(args);
    isDownloading = false; // (isDownloading == true) || argResults['download'];

    if (argResults['help'] as bool) {
      printUsage(stdout);
      return;
    }

    for (var name in ['os', 'platform', 'type', 'version']) {
      if (argResults[name] == null) {
        throw ArgParserException("Missing required option '$name'.");
      }
    }

    var sdk = getSdkPath();
    var bashArgs =
        Platform.isWindows ? <String>[] : [isDownloading ? '-e' : '-xe'];
    var bash = await Process.start(
        Platform.isWindows ? 'cmd' : 'bash', bashArgs,
        environment: {
          'DART_SDK': sdk,
          'TF_OS': argResults['os'] as String,
          'TF_PLATFORM': argResults['platform'] as String,
          'TF_TYPE': argResults['type'] as String,
          'TF_VERSION': argResults['version'] as String,
        });

    if (argResults['force'] as bool) {
      var cmakeCache = File('CMakeCache.txt');
      if (await cmakeCache.exists()) await cmakeCache.delete();
    }

    var cmakeArgs = '';
    if (!Platform.isWindows)
      cmakeArgs += ' -- -j ${Platform.numberOfProcessors}';

    stdout.addStream(bash.stdout);
    stderr.addStream(bash.stderr);

    if (Platform.isWindows) bash.stdin.writeln('echo on');

    if (isDownloading) {
      var downloadTensorFlow =
          p.join(p.dirname(Platform.script.path), 'download_tensorflow.sh');
      bash.stdin..writeln('source $downloadTensorFlow')..writeln('set -e');
    }

    bash.stdin
      ..writeln('cmake .')
      ..writeln('cmake --build . --target tensorflow_dart $cmakeArgs'.trim());

    if (Platform.isWindows)
      bash.stdin.writeln('exit /B %errorlevel%');
    else
      bash.stdin.writeln(r'exit $?');

    var code = exitCode = await bash.exitCode;

    if (code != 0 && !isDownloading && !Platform.isWindows) {
      await main(args, true);
    }
  } on ArgParserException catch (e) {
    stderr.writeln('fatal error: ${e.message}');
    printUsage(stderr);
    exitCode = 1;
  }
}

void printUsage(IOSink sink) {
  sink
    ..writeln('usage: tool/build.dart [options...]')
    ..writeln()
    ..writeln(argParser.usage);
}
