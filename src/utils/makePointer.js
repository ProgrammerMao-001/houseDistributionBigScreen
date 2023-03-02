export function makePointer() {
  let a = Math.ceil(Math.random() * 9);
  let b = Math.ceil(Math.random() * 9);
  return a + "." + b;
}
