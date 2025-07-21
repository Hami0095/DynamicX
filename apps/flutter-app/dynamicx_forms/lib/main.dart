import 'package:dynamicx_forms/features/forms/form_builder/form_builder.dart';
import 'package:dynamicx_forms/features/forms/form_preview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/theme.dart';
import 'core/providers.dart';
import 'features/forms/form_renderer.dart';

void main() {
  runApp(const ProviderScope(child: DynamicXApp()));
}

class DynamicXApp extends StatelessWidget {
  const DynamicXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightLiquidTheme,
      darkTheme: darkLiquidTheme,
      themeMode: ThemeMode.light, // Change to ThemeMode.dark for dark mode
      title: 'DynamicX Forms',
      home: const FormBuilderScreen(),
      
    );
  }
}

class DynamicFormScreen extends ConsumerWidget {
  const DynamicFormScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schemaAsync = ref.watch(formSchemaProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('DynamicXForms')),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: schemaAsync.when(
          data: (schema) => FormRenderer(form: schema),
          loading: () => const Center(child: CircularProgressIndicator(color: Color.fromARGB(210, 255, 255, 255),)),
          error: (e, _) => Center(child: Text("Error: $e")),

        ),        
      ),
      
    );
  }
}
