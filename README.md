# GitHub Flow Practice

Este repositorio sirve para practicar GitHub Flow con una web estática de HTML y CSS, publicada con GitHub Pages. La página principal es `index.html`, en la raíz del repositorio. No hacen falta JavaScript, dependencias ni herramientas de build.

## Añadir tu perfil siguiendo GitHub Flow

1. **Abre un issue** que explique el perfil que vas a añadir e incluya criterios de aceptación.
2. **Crea una rama desde el último `main`:**

   ```sh
   git switch main
   git pull --ff-only origin main
   git switch -c feature_nombre_apellido
   ```

   Sustituye `nombre_apellido` por tu nombre en minúsculas, separado por guiones bajos.
3. **Añade tu ficha** como un archivo HTML en la raíz, por ejemplo `nombre_apellido.html`. Añade un enlace a la lista de `Students` en `index.html` y en las fichas existentes. Mantén los enlaces relativos y reutiliza `styles.css`.
4. **Valida el cambio:** comprueba que Home abre la ficha, que puedes volver a Home, que el desplegable `Students` muestra el enlace y que los estilos cargan. Puedes abrir `index.html` directamente o iniciar un servidor estático local con `python3 -m http.server` y visitar `http://localhost:8000/`.
5. **Revisa y publica tus cambios:**

   ```sh
   git status
   git diff --check
   git add *.html styles.css
   git commit -m "feat: add nombre apellido student profile"
   git push -u origin feature_nombre_apellido
   ```

6. **Abre un Pull Request** de tu rama hacia `main`. En la descripción incluye `Closes #<numero-del-issue>` y revisa el diff antes de pedir que se integre.
7. **Después del merge**, elimina la rama remota y sincroniza tu copia local:

   ```sh
   git push origin --delete feature_nombre_apellido
   git switch main
   git pull --ff-only origin main
   git branch -d feature_nombre_apellido
   ```

8. **Comprueba la publicación** en [la web de GitHub Pages](https://francescfe.github.io/github-flow-practice/) cuando termine el despliegue.
