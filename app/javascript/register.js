document.addEventListener("DOMContentLoaded", () => {
    const registerForm = document.getElementById("registerForm")
  
    registerForm.addEventListener("submit", (event) => {
      
  
      const username = document.getElementById("username").value
      const password = document.getElementById("password").value
      const confirmPassword = document.getElementById("confirmPassword").value

      if (!username || !password || !confirmPassword) {
        alert("Por favor, completa todos los campos")
        event.preventDefault()
        return
      }
  
      if (password !== confirmPassword) {
        alert("Las contraseñas no coinciden")
        event.preventDefault()
        return
      }
  
      if (password.length < 6) {
        alert("La contraseña debe tener al menos 6 caracteres")
        event.preventDefault()
        return
      }
  
    })
  })
  
  