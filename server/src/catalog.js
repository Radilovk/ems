/**
 * Каталог на модули и функции — източник на истина за абонаменти.
 * Нов модул: добави тук + проверка в клиента (XemsLicense.has).
 */
export const MODULES = [
  { id: 'timer', name: 'Таймер', desc: 'Плочка „Таймер“', subscription: true },
  { id: 'music', name: 'Музика', desc: 'Плейър и импулси по музиката', subscription: true },
  { id: 'pulse', name: 'Пулс', desc: 'Циферблат и автоматично намаляване по пулса', subscription: true },
  { id: 'ai', name: 'AI', desc: 'Умна тренировка', subscription: true },
  { id: 'band', name: 'Гривна', desc: 'Управление от гривната и приложение на часовника', subscription: true },
];

export const FEATURES = [
  { id: 'arms_full', name: 'Ръце 1:1', desc: 'Каналът за ръцете с нормална сила (не ×0.05)', subscription: true },
];

export function catalogSummary() {
  return { modules: MODULES, features: FEATURES };
}

export function isKnownModule(id) {
  return MODULES.some((m) => m.id === id);
}

export function isKnownFeature(id) {
  return FEATURES.some((f) => f.id === id);
}

export function filterMods(ids) {
  const list = Array.isArray(ids) ? ids : [];
  return list.filter(isKnownModule);
}

export function filterFeat(ids) {
  const list = Array.isArray(ids) ? ids : [];
  return list.filter(isKnownFeature);
}
