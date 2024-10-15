import 'package:demo_ccb/config/config.dart';
import 'package:quick_actions/quick_actions.dart';

class QuickActionsPlugin {
  static registerActions() {
    const QuickActions quickActions = QuickActions();
    quickActions.initialize((shortcutType) {
      switch (shortcutType) {
        case 'noticias':
          appRouter.push('/noticias');
          break;
        case 'term':
          appRouter.push('/term');
          break;
        case 'diseño':
          appRouter.push('/otra');
          break;
      }
    });
    quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(
          type: 'noticias', localizedTitle: 'Noticias', icon: 'compass'),
      const ShortcutItem(
          type: 'term',
          localizedTitle: 'Términos y condiciones',
          icon: 'finger'),
      const ShortcutItem(
          type: 'diseño', localizedTitle: 'diseño', icon: 'pokemons'),
    ]);
  }
}
